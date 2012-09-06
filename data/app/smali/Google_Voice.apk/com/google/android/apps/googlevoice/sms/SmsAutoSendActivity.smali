.class public Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;
.super Landroid/app/Activity;
.source "SmsAutoSendActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;


# static fields
.field public static final ACTION_AUTO_SEND:Ljava/lang/String; = "com.google.android.apps.googlevoice.action.AUTO_SEND"

.field static final DIALOG_ID_SENDING:I = 0x3e9

.field static final DIALOG_ID_SEND_FAILED:I = 0x3ea

.field static final DIALOG_ID_SEND_FAILED_AUTHENTICATION_ERROR:I = 0x3ed

.field static final DIALOG_ID_SEND_FAILED_DESTINATION_DISALLOWED:I = 0x3ec

.field static final DIALOG_ID_SEND_FAILED_NO_CREDIT:I = 0x3eb

.field static final PACKAGE_NAME_VOICE_SEARCH:Ljava/lang/String; = "com.google.android.voicesearch"


# instance fields
.field private activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

.field private handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private messageRecipients:Ljava/lang/String;

.field private messageText:Ljava/lang/String;

.field private sendingDialog:Landroid/app/ProgressDialog;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private buildFailureDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .registers 5
    .parameter "errorMessage"

    .prologue
    .line 163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity$2;-><init>(Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity$1;-><init>(Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private sendTextMessage(Z)V
    .registers 7
    .parameter "isRetry"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 126
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->messageRecipients:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->messageText:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 127
    .local v0, messageData:[Ljava/lang/String;
    if-eqz p1, :cond_1b

    .line 130
    .local v1, what:I
    :goto_f
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v3, v1, v0}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void

    .end local v1           #what:I
    :cond_1b
    move v1, v2

    .line 127
    goto :goto_f
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "toastMessage"

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 236
    return-void
.end method


# virtual methods
.method public invalidateAuthToken()V
    .registers 4

    .prologue
    .line 252
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 253
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v0, v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V

    .line 254
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 264
    const/16 v0, 0x64

    if-ne p1, v0, :cond_e

    .line 265
    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->sendTextMessage(Z)V

    .line 271
    :cond_e
    :goto_e
    return-void

    .line 268
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget-object v1, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 71
    .local v6, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1, p0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createActivityProxy(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    .line 77
    if-eqz v6, :cond_37

    const-string v1, "com.google.android.apps.googlevoice.action.AUTO_SEND"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.google.android.voicesearch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 79
    :cond_37
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1, v10}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->finish()V

    .line 123
    :goto_41
    return-void

    .line 83
    :cond_42
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v1

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v1, v3, :cond_68

    .line 86
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->auto_send_sms_gv_not_setup:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1, v10}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 88
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->finish()V

    goto :goto_41

    .line 90
    :cond_68
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->didCompleteAppSetup()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    move-result-object v1

    sget-object v3, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    if-ne v1, v3, :cond_86

    .line 91
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->auto_send_sms_gv_lite_fail:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1, v10}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->finish()V

    goto :goto_41

    .line 97
    :cond_86
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1, p0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getDialogManager(Landroid/app/Activity;)Lcom/google/android/apps/googlevoice/DialogManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    .line 98
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const-class v3, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;

    invoke-interface {v1, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v2

    .line 99
    .local v2, log:Lcom/google/android/apps/common/log/GLog;
    new-instance v0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createRequestIdGenerator()Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;-><init>(Lcom/google/android/apps/googlevoice/sms/SmsAutoSender;Lcom/google/android/apps/common/log/GLog;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/sms/RequestIdGenerator;)V

    .line 102
    .local v0, smsAutoSendHandler:Lcom/google/android/apps/googlevoice/sms/SmsAutoSendHandler;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 104
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 105
    .local v7, recipientUri:Landroid/net/Uri;
    const-string v1, "smsto"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 106
    const-string v1, "Unexpected data scheme, requires \"smsto\"."

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 108
    :cond_cb
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, recipients:Ljava/lang/String;
    const/4 v9, 0x0

    .line 111
    .local v9, text:Ljava/lang/String;
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 112
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 113
    iput-object v8, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->messageRecipients:Ljava/lang/String;

    .line 114
    iput-object v9, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->messageText:Ljava/lang/String;

    .line 115
    invoke-direct {p0, v10}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->sendTextMessage(Z)V

    goto/16 :goto_41

    .line 118
    :cond_e7
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1, v10}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->finish()V

    goto/16 :goto_41
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 135
    packed-switch p1, :pswitch_data_56

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 137
    :pswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->sendingDialog:Landroid/app/ProgressDialog;

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->sendingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->sendingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->sendingDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->message_sms_sending:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->sendingDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 144
    :pswitch_29
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->message_sms_send_failed:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->buildFailureDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 147
    :pswitch_34
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->auto_send_sms_gv_insufficient_credit:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->buildFailureDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 150
    :pswitch_3f
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->auto_send_sms_destination_disallowed:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->buildFailureDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 153
    :pswitch_4a
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->auto_send_sms_authentication_error:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->buildFailureDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 135
    nop

    :pswitch_data_56
    .packed-switch 0x3e9
        :pswitch_8
        :pswitch_29
        :pswitch_34
        :pswitch_3f
        :pswitch_4a
    .end packed-switch
.end method

.method public onSendFinished(I)V
    .registers 4
    .parameter "status"

    .prologue
    const/4 v1, 0x0

    .line 198
    packed-switch p1, :pswitch_data_6e

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->finish()V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled status id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 231
    :goto_24
    return-void

    .line 200
    :pswitch_25
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->auto_send_sms_message_success:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->finish()V

    goto :goto_24

    .line 206
    :pswitch_3a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    const/16 v1, 0x3ea

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    goto :goto_24

    .line 211
    :pswitch_47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    const/16 v1, 0x3eb

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    goto :goto_24

    .line 216
    :pswitch_54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    const/16 v1, 0x3ec

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    goto :goto_24

    .line 221
    :pswitch_61
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->activityHelper:Lcom/google/android/apps/googlevoice/service/ActivityProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/service/ActivityProxy;->setResult(I)V

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    const/16 v1, 0x3ed

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    goto :goto_24

    .line 198
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_3a
        :pswitch_47
        :pswitch_54
        :pswitch_61
    .end packed-switch
.end method

.method public reauthenticate()V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->authenticate(Landroid/app/Activity;I)V

    .line 248
    return-void
.end method

.method public setInProgress(Z)V
    .registers 5
    .parameter "isInProgress"

    .prologue
    const/16 v2, 0x3e9

    .line 185
    if-eqz p1, :cond_a

    .line 186
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dialogManager:Lcom/google/android/apps/googlevoice/DialogManager;

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/DialogManager;->showDialog(I)V

    .line 194
    :goto_9
    return-void

    .line 189
    :cond_a
    const/16 v1, 0x3e9

    :try_start_c
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsAutoSendActivity;->dismissDialog(I)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_9

    .line 190
    :catch_10
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "SmsAutoSendActivity: tried to dismiss hidden dialog."

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    goto :goto_9
.end method
