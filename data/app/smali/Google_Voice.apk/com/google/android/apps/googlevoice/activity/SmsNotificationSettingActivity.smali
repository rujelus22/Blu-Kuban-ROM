.class public Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;
.super Landroid/app/Activity;
.source "SmsNotificationSettingActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/ServerSettingsModifier;


# static fields
.field public static final ACTION_DISABLE:Ljava/lang/String; = "com.google.android.apps.googlevoice.sms.DISABLE"

.field public static final ACTION_ENABLE:Ljava/lang/String; = "com.google.android.apps.googlevoice.sms.ENABLE"

.field public static final ACTION_TOGGLE:Ljava/lang/String; = "com.google.android.apps.googlevoice.sms.TOGGLE"


# instance fields
.field private action:Ljava/lang/String;

.field private handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createUpdatePhoneRpc(Lcom/google/android/apps/googlevoice/core/Phone;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    .registers 5
    .parameter "phone"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateSettingsRpc()Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v0

    .line 94
    .local v0, updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/core/Phone;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->setForwardingPhones([Lcom/google/android/apps/googlevoice/core/Phone;)V

    .line 95
    return-object v0
.end method


# virtual methods
.method public modifySettings()Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    .registers 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 60
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, forwardingNumber:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v2

    .line 62
    .local v2, phones:[Lcom/google/android/apps/googlevoice/core/Phone;
    if-eqz v2, :cond_9b

    array-length v5, v2

    if-lez v5, :cond_9b

    .line 63
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    array-length v5, v2

    if-ge v1, v5, :cond_9b

    .line 64
    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Phone;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 65
    const-string v5, "com.google.android.apps.googlevoice.sms.ENABLE"

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 66
    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Phone;->getSmsEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_97

    .line 68
    aget-object v4, v2, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/android/apps/googlevoice/core/Phone;->setSmsEnabled(Ljava/lang/Boolean;)Lcom/google/android/apps/googlevoice/core/Phone;

    .line 69
    aget-object v3, v2, v1

    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->createUpdatePhoneRpc(Lcom/google/android/apps/googlevoice/core/Phone;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v3

    .line 84
    .end local v1           #i:I
    :goto_48
    return-object v3

    .line 71
    .restart local v1       #i:I
    :cond_49
    const-string v5, "com.google.android.apps.googlevoice.sms.DISABLE"

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 72
    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Phone;->getSmsEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 74
    aget-object v3, v2, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/googlevoice/core/Phone;->setSmsEnabled(Ljava/lang/Boolean;)Lcom/google/android/apps/googlevoice/core/Phone;

    .line 75
    aget-object v3, v2, v1

    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->createUpdatePhoneRpc(Lcom/google/android/apps/googlevoice/core/Phone;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v3

    goto :goto_48

    .line 77
    :cond_6f
    const-string v5, "com.google.android.apps.googlevoice.sms.TOGGLE"

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 78
    aget-object v5, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/core/Phone;->getSmsEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_95

    :goto_87
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/apps/googlevoice/core/Phone;->setSmsEnabled(Ljava/lang/Boolean;)Lcom/google/android/apps/googlevoice/core/Phone;

    .line 79
    aget-object v3, v2, v1

    invoke-direct {p0, v3}, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->createUpdatePhoneRpc(Lcom/google/android/apps/googlevoice/core/Phone;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v3

    goto :goto_48

    :cond_95
    move v3, v4

    .line 78
    goto :goto_87

    .line 63
    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_14

    .line 84
    .end local v1           #i:I
    :cond_9b
    const/4 v3, 0x0

    goto :goto_48
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget-object v1, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 43
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 44
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 45
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 46
    new-instance v1, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;

    new-instance v2, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;-><init>(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    const-class v4, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;

    invoke-interface {v0, v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v4

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;-><init>(Lcom/google/android/apps/googlevoice/service/ActivityProxy;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/activity/ServerSettingsModifier;Lcom/google/android/apps/common/log/GLog;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 49
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->action:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/SmsNotificationSettingActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 56
    return-void
.end method
