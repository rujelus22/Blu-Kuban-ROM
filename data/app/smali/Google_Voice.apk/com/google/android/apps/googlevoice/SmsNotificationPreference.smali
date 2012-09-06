.class public Lcom/google/android/apps/googlevoice/SmsNotificationPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SmsNotificationPreference.java"


# instance fields
.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/SmsNotificationPreference;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/SmsNotificationPreference;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/SmsNotificationPreference;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 37
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 38
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/SmsNotificationPreference;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 39
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/SmsNotificationPreference;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 40
    return-void
.end method


# virtual methods
.method protected getPersistedBoolean(Z)Z
    .registers 4
    .parameter "defaultReturnValue"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SmsNotificationPreference;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/SmsNotificationPreference;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSmsNotificationEnabled(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z

    move-result v0

    return v0
.end method

.method protected persistBoolean(Z)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
