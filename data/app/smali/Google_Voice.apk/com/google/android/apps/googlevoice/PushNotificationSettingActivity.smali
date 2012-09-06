.class public Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;
.super Landroid/app/Activity;
.source "PushNotificationSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$1;,
        Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;
    }
.end annotation


# static fields
.field public static final ACTION_REGISTER:Ljava/lang/String; = "com.google.android.apps.googlevoice.push.REGISTER"

.field public static final ACTION_TOGGLE:Ljava/lang/String; = "com.google.android.apps.googlevoice.push.TOGGLE"

.field public static final ACTION_UNREGISTER:Ljava/lang/String; = "com.google.android.apps.googlevoice.push.UNREGISTER"


# instance fields
.field private handler:Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;

.field private registrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

.field private serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;)Lcom/google/android/apps/googlevoice/ServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;-><init>(Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->handler:Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;

    .line 34
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 39
    return-void
.end method

.method protected onStart()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 45
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v1

    .line 47
    .local v1, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getNotifier()Lcom/google/android/apps/googlevoice/Notifier;

    move-result-object v2

    .line 48
    .local v2, notifier:Lcom/google/android/apps/googlevoice/Notifier;
    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/Notifier;->cancelInboxNotificationRegistrationExpiredNotification()V

    .line 50
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->handler:Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 51
    .local v4, onSuccess:Landroid/os/Message;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->handler:Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;

    invoke-virtual {v5, v7}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 53
    .local v3, onFailure:Landroid/os/Message;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getPushNotificationRegistrar()Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->registrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    .line 54
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 55
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.google.android.apps.googlevoice.push.TOGGLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 61
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->isRegisteredForInboxNotifications()Z

    move-result v5

    if-eqz v5, :cond_56

    const-string v0, "com.google.android.apps.googlevoice.push.UNREGISTER"

    .line 65
    :cond_48
    :goto_48
    const-string v5, "com.google.android.apps.googlevoice.push.REGISTER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 66
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->registrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    invoke-interface {v5, v4, v3}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;->registerForInboxNotifications(Landroid/os/Message;Landroid/os/Message;)V

    .line 79
    :goto_55
    return-void

    .line 61
    :cond_56
    const-string v0, "com.google.android.apps.googlevoice.push.REGISTER"

    goto :goto_48

    .line 70
    :cond_59
    const-string v5, "com.google.android.apps.googlevoice.push.UNREGISTER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 72
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/ServiceManager;->cancelInboxNotificationRegistrationAlarm()V

    .line 73
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->registrar:Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;

    invoke-interface {v5, v4, v3}, Lcom/google/android/apps/googlevoice/PushNotificationRegistrar;->unregisterForInboxNotifications(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_55

    .line 77
    :cond_6c
    invoke-virtual {p0, v7}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PushNotificationSettingActivity;->finish()V

    goto :goto_55
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 84
    return-void
.end method
