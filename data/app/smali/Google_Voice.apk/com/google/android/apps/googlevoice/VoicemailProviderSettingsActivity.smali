.class public Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "VoicemailProviderSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;
    }
.end annotation


# static fields
.field private static final DIVERT:Ljava/lang/String; = "divert"

.field private static final ID_CREDENTIALS:I = 0x3f2

.field private static final ID_CREDENTIALS_FAILED:I = 0x3f4

.field private static final ID_CREDENTIALS_OK:I = 0x3f3

.field private static final ID_DIALOG_CONFIGURE_CARRIER_SPECIFIC:I = 0xbba

.field private static final ID_DIALOG_CONFIGURE_MANUAL:I = 0xbbb

.field private static final ID_DIALOG_VOICEMAIL_CONFIGURATION_FAILED:I = 0xbb9

.field private static final ID_GET_VOICEMAIL_CONFIG:I = 0x4b0

.field private static final ID_GET_VOICEMAIL_CONFIG_FAILED:I = 0x4b2

.field private static final ID_GET_VOICEMAIL_CONFIG_OK:I = 0x4b3

.field private static final ID_GET_VOICEMAIL_CONFIG_RESULT:I = 0x4b1

.field private static final ID_LOGIN:I = 0x3fc

.field private static final ID_LOGIN_CANCELED:I = 0x3fe

.field private static final ID_LOGIN_OK:I = 0x3fd

.field private static final ID_PROGRESS_CHECKING_ACCOUNT:I = 0x899

.field private static final ID_PROGRESS_GETTING_CONFIGURATION:I = 0x89f

.field private static final ID_SIGN_OUT:I = 0x401

.field private static final ID_SIGN_OUT_CANCELED:I = 0x403

.field private static final ID_SIGN_OUT_OK:I = 0x402

.field private static final ID_SPLASH:I = 0x406

.field private static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field private static final UTF_8:Ljava/lang/String; = "utf-8"


# instance fields
.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private diversionCode:Ljava/lang/String;

.field private diversionNumber:Ljava/lang/String;

.field private diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

.field private getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

.field private handler:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

.field private signOutPreference:Landroid/preference/Preference;

.field private splashingOut:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

.field private voicemailConfigurationPreference:Landroid/preference/Preference;

.field private voicemailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handler:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->splashingOut:Z

    .line 313
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicemailNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicemailNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->splashingOut:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;)Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getVoicemailConfigurationRpc:Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;I)Lcom/google/android/apps/googlevoice/MessageTask;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->taskForEmptyMessage(I)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v0

    return-object v0
.end method

.method private createExplanationView()Landroid/webkit/WebView;
    .registers 3

    .prologue
    .line 269
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, explanationView:Landroid/webkit/WebView;
    new-instance v1, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$9;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$9;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 290
    return-object v0
.end method

.method private handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)Z
    .registers 6
    .parameter "rpc"

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/ApiRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 299
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/ApiRpc;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 300
    .local v0, exception:Ljava/lang/Exception;
    instance-of v2, v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v2, :cond_21

    check-cast v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local v0           #exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v2

    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v2, v3, :cond_21

    .line 303
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handler:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

    const/16 v2, 0x3fc

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    .line 304
    const/4 v1, 0x1

    .line 309
    :cond_21
    return v1
.end method

.method private showProgress(I)Landroid/app/Dialog;
    .registers 4
    .parameter "resid"

    .prologue
    .line 152
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    return-object v0
.end method

.method private taskForEmptyMessage(I)Lcom/google/android/apps/googlevoice/MessageTask;
    .registers 5
    .parameter "what"

    .prologue
    .line 294
    new-instance v0, Lcom/google/android/apps/googlevoice/MessageTask;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handler:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/MessageTask;-><init>(Lcom/googlex/common/task/TaskRunner;Landroid/os/Message;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 123
    sparse-switch p1, :sswitch_data_22

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    :goto_7
    return-void

    .line 125
    :sswitch_8
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handler:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

    if-ne p2, v0, :cond_12

    const/16 v0, 0x3fd

    :goto_e
    invoke-virtual {v1, v0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    :cond_12
    const/16 v0, 0x3fe

    goto :goto_e

    .line 129
    :sswitch_15
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handler:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

    if-ne p2, v0, :cond_1f

    const/16 v0, 0x402

    :goto_1b
    invoke-virtual {v1, v0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    :cond_1f
    const/16 v0, 0x403

    goto :goto_1b

    .line 123
    :sswitch_data_22
    .sparse-switch
        0x3fc -> :sswitch_8
        0x401 -> :sswitch_15
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 88
    const v2, 0x1030008

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->setTheme(I)V

    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget-object v2, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v2, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 93
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 94
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 95
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 97
    sget v2, Lcom/google/android/apps/googlevoice/R$xml;->voicemail_preferences:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->addPreferencesFromResource(I)V

    .line 99
    sget v2, Lcom/google/android/apps/googlevoice/R$string;->voicemail_configuration_key:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, voicemailConfigurationKey:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicemailConfigurationPreference:Landroid/preference/Preference;

    .line 102
    sget v2, Lcom/google/android/apps/googlevoice/R$string;->sign_out_preference_key:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, signOutKey:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->signOutPreference:Landroid/preference/Preference;

    .line 105
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handler:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    .line 106
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/high16 v9, 0x104

    const v8, 0x1080027

    const v7, 0x104000a

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 159
    sparse-switch p1, :sswitch_data_ec

    .line 264
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_11
    return-object v1

    .line 161
    :sswitch_12
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_voicemail_configuration_failed_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_voicemail_configuration_failed_message:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$2;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$1;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_11

    .line 183
    :sswitch_42
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->createExplanationView()Landroid/webkit/WebView;

    move-result-object v0

    .line 184
    .local v0, explanationView:Landroid/webkit/WebView;
    sget v2, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_configure_carrier_specific_message:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->diversionCode:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_configure_carrier_specific_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$5;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$4;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$3;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_11

    .line 221
    .end local v0           #explanationView:Landroid/webkit/WebView;
    :sswitch_92
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->createExplanationView()Landroid/webkit/WebView;

    move-result-object v0

    .line 222
    .restart local v0       #explanationView:Landroid/webkit/WebView;
    sget v2, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_configure_manual_message:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_configure_manual_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$8;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$8;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$7;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$6;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$6;-><init>(Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_11

    .line 258
    .end local v0           #explanationView:Landroid/webkit/WebView;
    :sswitch_dc
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_checking_account:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->showProgress(I)Landroid/app/Dialog;

    move-result-object v1

    goto/16 :goto_11

    .line 261
    :sswitch_e4
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_getting_configuration:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->showProgress(I)Landroid/app/Dialog;

    move-result-object v1

    goto/16 :goto_11

    .line 159
    :sswitch_data_ec
    .sparse-switch
        0x899 -> :sswitch_dc
        0x89f -> :sswitch_e4
        0xbb9 -> :sswitch_12
        0xbba -> :sswitch_42
        0xbbb -> :sswitch_92
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->signOutPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_d

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handler:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

    const/16 v2, 0x401

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    .line 147
    :goto_c
    return v0

    .line 143
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicemailConfigurationPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_19

    .line 144
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handler:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

    const/16 v2, 0x4b0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    goto :goto_c

    .line 147
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_c
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 110
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicemailConfigurationPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->signOutPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->splashingOut:Z

    if-eqz v0, :cond_27

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->splashingOut:Z

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity;->handler:Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;

    const/16 v1, 0x406

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/VoicemailProviderSettingsActivity$Handler;->sendEmptyMessage(I)Z

    .line 119
    :cond_27
    return-void
.end method
