.class public Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;
.super Landroid/app/Activity;
.source "DoNotDisturbSettingActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/ServerSettingsModifier;


# instance fields
.field private handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createErrorDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 4
    .parameter "context"

    .prologue
    .line 62
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->dialog_title_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->dnd_failed_dialog_long_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity$1;

    invoke-direct {v2}, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static createProgressDialog(Landroid/content/Context;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Landroid/app/ProgressDialog;
    .registers 5
    .parameter "context"
    .parameter "serverSettings"

    .prologue
    .line 78
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 81
    sget v2, Lcom/google/android/apps/googlevoice/R$string;->turn_dnd_off_progress_message:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, message:Ljava/lang/String;
    :goto_11
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 87
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 88
    return-object v1

    .line 83
    .end local v0           #message:Ljava/lang/String;
    :cond_1d
    sget v2, Lcom/google/android/apps/googlevoice/R$string;->turn_dnd_on_progress_message:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_11
.end method


# virtual methods
.method public modifySettings()Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    .registers 3

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createUpdateSettingsRpc()Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    move-result-object v0

    .line 56
    .local v0, updateSettingsRpc:Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;->setDoNotDisturb(Z)V

    .line 57
    return-object v0

    .line 56
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget-object v1, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    .line 39
    .local v0, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 40
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 41
    new-instance v1, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;

    new-instance v2, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;-><init>(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    const-class v4, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;

    invoke-interface {v0, v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v4

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/google/android/apps/googlevoice/activity/ModifyServerSettingsHandler;-><init>(Lcom/google/android/apps/googlevoice/service/ActivityProxy;Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/activity/ServerSettingsModifier;Lcom/google/android/apps/common/log/GLog;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 44
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 50
    return-void
.end method
