.class public Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;
.super Landroid/app/Activity;
.source "SignOutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/google/android/apps/googlevoice/activity/signout/SignOutInterface;


# static fields
.field static final DIALOG_ID_PROGRESS:I = 0x3e9

.field static final DIALOG_ID_SIGN_OUT:I = 0x3e8

.field public static final EXTRA_JUST_RETURN:Ljava/lang/String; = "com.google.android.apps.googlevoice.SignOutActivity.JUST_RETURN"

.field public static final ID_CLEAR_USER_DATA:I = 0x3ed

.field public static final ID_ENABLE_NOTIFICATION_VIA_SMS:I = 0x3eb

.field public static final ID_ENABLE_NOTIFICATION_VIA_SMS_COMPLETED:I = 0x3ec

.field public static final ID_FINISH:I = 0x3ee

.field public static final ID_SHOW_CONFIRMATION_DIALOG:I = 0x3ef

.field public static final ID_SHOW_CONFIRMATION_DIALOG_OK:I = 0x3f2

.field public static final ID_START:I = 0x3e8

.field public static final ID_STOP_SERVICES:I = 0x3f0

.field public static final ID_STOP_SERVICES_COMPLETED:I = 0x3f1

.field public static final ID_UNREGISTER_PUSH_NOTIFICATION:I = 0x3e9

.field public static final ID_UNREGISTER_PUSH_NOTIFICATION_COMPLETED:I = 0x3ea


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private enableSmsCheckBox:Landroid/widget/CheckBox;

.field private handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private justReturn:Z

.field private okButton:Landroid/widget/Button;

.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private signOutDialog:Landroid/app/AlertDialog;

.field private signOutDialogLayout:Landroid/view/View;

.field private signingOut:Z

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->justReturn:Z

    return-void
.end method


# virtual methods
.method public getAsActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 274
    return-object p0
.end method

.method injectActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    return-void
.end method

.method public isJustReturn()Z
    .registers 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->justReturn:Z

    return v0
.end method

.method public isSigningOut()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signingOut:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_18

    .line 135
    :pswitch_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    :goto_6
    return-void

    .line 126
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x3ea

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 131
    :pswitch_f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x3ec

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 122
    nop

    :pswitch_data_18
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->isSigningOut()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    :goto_6
    return-void

    .line 248
    :cond_7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->setResult(I)V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->finish()V

    goto :goto_6
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->isSigningOut()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 241
    :goto_7
    return-void

    .line 221
    :cond_8
    packed-switch p2, :pswitch_data_44

    goto :goto_7

    .line 236
    :pswitch_c
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 237
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->setResult(I)V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->finish()V

    goto :goto_7

    .line 223
    :pswitch_16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->setSigningOut(Z)V

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->okButton:Landroid/widget/Button;

    if-eqz v0, :cond_23

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->cancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_2c

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v2, 0x3f2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->enableSmsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 221
    :pswitch_data_44
    .packed-switch -0x2
        :pswitch_c
        :pswitch_16
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v1

    .line 95
    .local v1, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceUtil()Lcom/google/android/apps/googlevoice/VoiceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    .line 96
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 97
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 98
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getContextProxy()Lcom/google/android/apps/googlevoice/proxy/ContextProxy;

    move-result-object v0

    const-string v2, "notification"

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/proxy/ContextProxy;->getSystemServiceProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;

    .line 101
    .local v13, notificationManager:Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getUnreadNotifier()Lcom/google/android/apps/googlevoice/UnreadNotifier;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getIntentFactory()Lcom/google/android/apps/googlevoice/activity/IntentFactory;

    move-result-object v6

    new-instance v7, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;

    invoke-direct {v7, p0}, Lcom/google/android/apps/googlevoice/service/ActivityProxyImpl;-><init>(Landroid/app/Activity;)V

    const-class v5, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;

    invoke-interface {v1, v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v8

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v9

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getShadowNumbers()Lcom/google/android/apps/googlevoice/ShadowNumbers;

    move-result-object v10

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSignInStatusRegistrar()Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;

    move-result-object v11

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSmsOutboxManager()Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-result-object v12

    move-object v5, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutHandler;-><init>(Lcom/google/android/apps/googlevoice/DependencyResolver;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/UnreadNotifier;Lcom/google/android/apps/googlevoice/activity/signout/SignOutInterface;Lcom/google/android/apps/googlevoice/activity/IntentFactory;Lcom/google/android/apps/googlevoice/service/ActivityProxy;Lcom/google/android/apps/common/log/GLog;Lcom/google/android/apps/googlevoice/ServiceManager;Lcom/google/android/apps/googlevoice/ShadowNumbers;Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxy;)V

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.android.apps.googlevoice.SignOutActivity.JUST_RETURN"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->setJustReturn(Z)V

    .line 114
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->requestWindowFeature(I)Z

    .line 115
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->sign_out_activity_title:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->setTitle(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v2, 0x3ef

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 118
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 147
    packed-switch p1, :pswitch_data_74

    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_8
    return-object v1

    .line 149
    :pswitch_9
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 150
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    sget v2, Lcom/google/android/apps/googlevoice/R$layout;->sign_out_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signOutDialogLayout:Landroid/view/View;

    .line 151
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signOutDialogLayout:Landroid/view/View;

    sget v3, Lcom/google/android/apps/googlevoice/R$id;->receive_via_messaging_app:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->enableSmsCheckBox:Landroid/widget/CheckBox;

    .line 153
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->sign_out_activity_title:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signOutDialogLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->sign_out_activity_message:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/android/apps/googlevoice/R$string;->sign_out_activity_ok_button:I

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signOutDialog:Landroid/app/AlertDialog;

    .line 163
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signOutDialog:Landroid/app/AlertDialog;

    goto :goto_8

    .line 166
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    :pswitch_5d
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 167
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 168
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 169
    sget v2, Lcom/google/android/apps/googlevoice/R$string;->sign_out_progress_message:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 147
    nop

    :pswitch_data_74
    .packed-switch 0x3e8
        :pswitch_9
        :pswitch_5d
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 11
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 180
    packed-switch p1, :pswitch_data_88

    .line 211
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 213
    :cond_7
    :goto_7
    return-void

    .line 182
    :pswitch_8
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-static {v4, v5}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isSmsNotificationEnabled(Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/settings/ServerSettings;)Z

    move-result v2

    .line 183
    .local v2, smsEnabled:Z
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signOutDialogLayout:Landroid/view/View;

    if-nez v2, :cond_69

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->voiceUtil:Lcom/google/android/apps/googlevoice/VoiceUtil;

    invoke-virtual {v5, p0}, Lcom/google/android/apps/googlevoice/VoiceUtil;->hasTelephony(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_69

    :goto_1c
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :try_start_1f
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signOutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getButton"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 187
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signOutDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->okButton:Landroid/widget/Button;

    .line 188
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signOutDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->cancelButton:Landroid/widget/Button;
    :try_end_5d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_5d} :catch_5e
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_5d} :catch_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_5d} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_5d} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_5d} :catch_81

    goto :goto_7

    .line 189
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_5e
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/NoSuchMethodException;
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_7

    .line 192
    const-string v3, "Unable to get buttons from dialog, skipping"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_7

    .line 183
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_69
    const/16 v3, 0x8

    goto :goto_1c

    .line 194
    :catch_6c
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "Should never happen!"

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 197
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_73
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "Should never happen!"

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 200
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_7a
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v3, "Should never happen!"

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 203
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_81
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "Should never happen!"

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 180
    :pswitch_data_88
    .packed-switch 0x3e8
        :pswitch_8
    .end packed-switch
.end method

.method public setJustReturn(Z)V
    .registers 2
    .parameter "justReturn"

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->justReturn:Z

    .line 266
    return-void
.end method

.method public setSigningOut(Z)V
    .registers 2
    .parameter "signingOut"

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/activity/signout/SignOutActivity;->signingOut:Z

    .line 256
    return-void
.end method
