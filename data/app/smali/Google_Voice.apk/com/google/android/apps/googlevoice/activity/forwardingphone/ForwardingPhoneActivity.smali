.class public Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;
.super Landroid/app/Activity;
.source "ForwardingPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_TOKEN_SENT:Ljava/lang/String; = "com.google.android.apps.googlevoice.ForwardingPhoneActivity.TOKEN_SENT"

.field private static final DIALOG_ID_FORWARDING_PHONE:I = 0x3e8

.field private static final DIALOG_ID_RETRIEVING_SETTINGS:I = 0x3eb

.field private static final DIALOG_ID_SETTINGS_REQUEST_FAILED:I = 0x3ea

.field private static final DIALOG_ID_VERIFY_PHONE:I = 0x3e9

.field private static final DIALOG_ID_VERIFY_PHONE_FAILED:I = 0x3ec

.field private static final DIALOG_ID_VERIFY_PHONE_FAILED_IN_USE:I = 0x3ed

.field public static final EXTRA_SKIP_FETCHING:Ljava/lang/String; = "com.google.android.apps.googlevoice.ForwardingPhoneActivity.SKIP_FETCHING"

.field private static final ID_AUTH_TOKEN_INVALIDATED:I = 0x44c

.field private static final ID_CONFIRM_SMS_TOKEN:I = 0x442

.field private static final ID_CONFIRM_SMS_TOKEN_ATTEMPT:I = 0x443

.field private static final ID_CONFIRM_SMS_TOKEN_FAILED:I = 0x446

.field private static final ID_CONFIRM_SMS_TOKEN_OK:I = 0x445

.field private static final ID_CONFIRM_SMS_TOKEN_RESULT:I = 0x444

.field private static final ID_FORWARDING_PHONE_CANCELED:I = 0x3

.field private static final ID_FORWARDING_PHONE_OK:I = 0x2

.field private static final ID_FORWARDING_PHONE_VERIFY:I = 0x4

.field private static final ID_GET_SMS_TOKEN:I = 0x424

.field private static final ID_GET_SMS_TOKEN_FAILED:I = 0x427

.field private static final ID_GET_SMS_TOKEN_OK:I = 0x426

.field private static final ID_GET_SMS_TOKEN_RESULT:I = 0x425

.field private static final ID_SEND_SMS_TOKEN:I = 0x42e

.field private static final ID_SEND_SMS_TOKEN_FAILED:I = 0x430

.field private static final ID_SEND_SMS_TOKEN_OK:I = 0x42f

.field private static final ID_SETTINGS_REQUEST:I = 0x1

.field private static final ID_VERIFY_PHONE:I = 0x5

.field public static final MAX_PHONES:I = 0x6

.field private static final PROGRESS_ID_CONFIRMING_SMS:I = 0x3f4

.field private static final PROGRESS_ID_GETTING_SMS_TOKEN:I = 0x3f2

.field private static final PROGRESS_ID_SENDING_SMS:I = 0x3f3


# instance fields
.field private componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

.field private confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

.field private confirmationAttemptsRemaining:I

.field private confirmingSmsDialog:Landroid/app/ProgressDialog;

.field private currentProgress:I

.field private delayMillis:I

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private formattedForwardingNumber:Ljava/lang/String;

.field private forwardingNumber:Ljava/lang/String;

.field private forwardingPhoneDialog:Landroid/app/AlertDialog;

.field private gettingSmsTokenDialog:Landroid/app/ProgressDialog;

.field private handler:Landroid/os/Handler;

.field private phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

.field private retrievingSettingsDialog:Landroid/app/ProgressDialog;

.field private sendingSmsDialog:Landroid/app/ProgressDialog;

.field private sentReceiver:Landroid/content/BroadcastReceiver;

.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private smsNumber:Ljava/lang/String;

.field private smsSender:Lcom/google/android/apps/googlevoice/system/SmsSender;

.field private smsToken:Ljava/lang/String;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private verifyPhoneDialog:Landroid/app/AlertDialog;

.field private verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->currentProgress:I

    .line 123
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$1;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->sentReceiver:Landroid/content/BroadcastReceiver;

    .line 465
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->formattedForwardingNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->formattedForwardingNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/system/ComponentManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showProgress(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VoiceService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/ApiRpc;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->onSelectPhone(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->sentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/system/SmsSender;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsSender:Lcom/google/android/apps/googlevoice/system/SmsSender;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmationAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$2202(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmationAttemptsRemaining:I

    return p1
.end method

.method static synthetic access$2206(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmationAttemptsRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmationAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$2300(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->delayMillis:I

    return v0
.end method

.method static synthetic access$2302(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->delayMillis:I

    return p1
.end method

.method static synthetic access$2328(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->delayMillis:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->delayMillis:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->onVerificationCanceled()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;)Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyViaSmsRpc:Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dismissProgress()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;)Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->retrievingSettingsDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingNumber:Ljava/lang/String;

    return-object p1
.end method

.method private dismissProgress()V
    .registers 2

    .prologue
    .line 454
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->currentProgress:I

    if-eqz v0, :cond_c

    .line 455
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->currentProgress:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dismissDialog(I)V

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->currentProgress:I

    .line 458
    :cond_c
    return-void
.end method

.method private handleAuthProblem(Lcom/google/android/apps/googlevoice/net/ApiRpc;)V
    .registers 8
    .parameter "rpc"

    .prologue
    const/16 v5, 0x44c

    .line 416
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/ApiRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 417
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/net/ApiRpc;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 418
    .local v0, e:Ljava/lang/Exception;
    instance-of v2, v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v2, :cond_2d

    move-object v1, v0

    .line 419
    check-cast v1, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .line 420
    .local v1, voiceServiceException:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v2

    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v2, v3, :cond_2d

    .line 421
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V

    .line 428
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #voiceServiceException:Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    :cond_2d
    return-void
.end method

.method private onSelectPhone(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 182
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->getItem(I)Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    .line 183
    .local v0, phone:Lcom/google/android/apps/googlevoice/core/Phone;
    if-eqz v0, :cond_30

    .line 184
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingNumber:Ljava/lang/String;

    .line 185
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->getFormattedNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->formattedForwardingNumber:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->setSelectedPhoneNumber(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->notifyDataSetChanged()V

    .line 188
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 189
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    :goto_2f
    return-void

    .line 191
    :cond_30
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 192
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_2f
.end method

.method private onVerificationCanceled()V
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_11

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->finish()V

    .line 205
    :goto_10
    return-void

    .line 203
    :cond_11
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    goto :goto_10
.end method

.method private showProgress(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
    .registers 7
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 444
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 445
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 448
    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 449
    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 450
    return-object v0
.end method

.method private showProgress(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 435
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->currentProgress:I

    if-eqz v0, :cond_9

    .line 436
    iget v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->currentProgress:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dismissDialog(I)V

    .line 438
    :cond_9
    iput p1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->currentProgress:I

    .line 439
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    .line 440
    return-void
.end method

.method private taskForEmptyMessage(ILjava/lang/Object;)Lcom/google/android/apps/googlevoice/MessageTask;
    .registers 6
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 431
    new-instance v0, Lcom/google/android/apps/googlevoice/MessageTask;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/MessageTask;-><init>(Lcom/googlex/common/task/TaskRunner;Landroid/os/Message;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 138
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_11

    .line 139
    const-string v0, "ForwardingPhoneActivity.onCreate()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 142
    :cond_11
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getComponentManager()Lcom/google/android/apps/googlevoice/system/ComponentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSmsSender()Lcom/google/android/apps/googlevoice/system/SmsSender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->smsSender:Lcom/google/android/apps/googlevoice/system/SmsSender;

    .line 149
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$ForwardingPhoneHandler;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/google/android/apps/googlevoice/PhonesAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/PhonesAdapter;-><init>(Landroid/content/Context;[Lcom/google/android/apps/googlevoice/core/Phone;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    .line 152
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10
    .parameter "id"

    .prologue
    const v7, 0x104000a

    const/high16 v5, 0x104

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 209
    packed-switch p1, :pswitch_data_18c

    .line 397
    :goto_b
    :pswitch_b
    return-object v2

    .line 211
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingPhoneDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_42

    .line 212
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->forwarding_phone_preference_title:I

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    new-instance v2, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$4;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$3;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$2;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingPhoneDialog:Landroid/app/AlertDialog;

    .line 239
    .end local v6           #builder:Landroid/app/AlertDialog$Builder;
    :cond_42
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingPhoneDialog:Landroid/app/AlertDialog;

    goto :goto_b

    .line 242
    :pswitch_45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->dialog_title_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->dialog_message_settings_request_fail:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$6;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$5;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_b

    .line 265
    :pswitch_71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->retrievingSettingsDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_95

    .line 266
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->retrievingSettingsDialog:Landroid/app/ProgressDialog;

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->retrievingSettingsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->retrievingSettingsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->retrieving_settings_progress_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->retrievingSettingsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 272
    :cond_95
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->retrievingSettingsDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_b

    .line 275
    :pswitch_99
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyPhoneDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_db

    .line 276
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_verify_number_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->setup_page_verify_number_explanation:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$9;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$9;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$8;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$7;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyPhoneDialog:Landroid/app/AlertDialog;

    .line 302
    :cond_db
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->verifyPhoneDialog:Landroid/app/AlertDialog;

    goto/16 :goto_b

    .line 305
    :pswitch_df
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->gettingSmsTokenDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_f6

    .line 306
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_getting_sms_token:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$10;

    invoke-direct {v5, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$10;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showProgress(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->gettingSmsTokenDialog:Landroid/app/ProgressDialog;

    .line 320
    :cond_f6
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->gettingSmsTokenDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_b

    .line 323
    :pswitch_fa
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->sendingSmsDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_10c

    .line 324
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_sending_sms:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showProgress(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->sendingSmsDialog:Landroid/app/ProgressDialog;

    .line 331
    :cond_10c
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->sendingSmsDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_b

    .line 334
    :pswitch_110
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmingSmsDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_127

    .line 335
    sget v0, Lcom/google/android/apps/googlevoice/R$string;->voicemail_progress_confirming_sms:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$11;

    invoke-direct {v5, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$11;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showProgress(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmingSmsDialog:Landroid/app/ProgressDialog;

    .line 350
    :cond_127
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->confirmingSmsDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_b

    .line 353
    :pswitch_12b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_verify_phone_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_verify_phone_failed_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$13;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$13;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$12;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$12;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_b

    .line 375
    :pswitch_158
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_verify_phone_failed_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->voicemail_provider_verify_phone_failed_message_in_use:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$15;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$15;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$14;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity$14;-><init>(Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_b

    .line 209
    :pswitch_data_18c
    .packed-switch 0x3e8
        :pswitch_c
        :pswitch_99
        :pswitch_45
        :pswitch_71
        :pswitch_12b
        :pswitch_158
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_df
        :pswitch_fa
        :pswitch_110
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 403
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 404
    packed-switch p1, :pswitch_data_1e

    .line 413
    :goto_6
    return-void

    .line 406
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getForwardingPhones()[Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->setPhones([Lcom/google/android/apps/googlevoice/core/Phone;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->setSelectedPhoneNumber(Ljava/lang/String;)V

    goto :goto_6

    .line 404
    :pswitch_data_1e
    .packed-switch 0x3e8
        :pswitch_7
    .end packed-switch
.end method

.method public onStart()V
    .registers 6

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 157
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_c

    .line 158
    const-string v2, "ForwardingPhoneActivity.onStart()"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 161
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v1

    .line 162
    .local v1, settingsEvent:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SETTINGS_CHANGE_FORWARDING_NUMBER:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 164
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 165
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 168
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_3a

    const-string v2, "com.google.android.apps.googlevoice.ForwardingPhoneActivity.SKIP_FETCHING"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 169
    const/16 v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    .line 179
    :goto_39
    return-void

    .line 171
    :cond_3a
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getForwardingNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->forwardingNumber:Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getFormattedForwardingNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->formattedForwardingNumber:Ljava/lang/String;

    .line 173
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_53

    .line 174
    const-string v2, "fetching data from voice model & service"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 176
    :cond_53
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->handler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    .line 177
    const/16 v2, 0x3eb

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/activity/forwardingphone/ForwardingPhoneActivity;->showDialog(I)V

    goto :goto_39
.end method
