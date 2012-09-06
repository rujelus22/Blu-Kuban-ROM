.class public Lcom/google/android/apps/googlevoice/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.google.android.apps.googlevoice.LoginActivity.ACCOUNT"

.field public static final EXTRA_AUTH_TOKEN:Ljava/lang/String; = "com.google.android.apps.googlevoice.LoginActivity.AUTH_TOKEN"

.field public static final EXTRA_BROADCAST_SUCCESS:Ljava/lang/String; = "com.google.android.apps.googlevoice.LoginActivity.BROADCAST_SUCCESS"

.field public static final EXTRA_LOGIN_SERVICE:Ljava/lang/String; = "com.google.android.apps.googlevoice.LoginActivity.LOGIN_SERVICE"

.field public static final EXTRA_PASSWORD:Ljava/lang/String; = "com.google.android.apps.googlevoice.LoginActivity.PASSWORD"

.field public static final EXTRA_SILENT:Ljava/lang/String; = "com.google.android.apps.googlevoice.LoginActivity.SILENT"

.field private static final ID_CANCEL:I = 0x12c

.field private static final ID_CLIENT_LOGIN_SERVICE_DONE:I = 0xc8

.field private static final ID_DIALOG_AUTHENTICATING:I = 0x3eb

.field private static final ID_DIALOG_CAPTCHA:I = 0x3ed

.field private static final ID_DIALOG_CHOOSE_ACCOUNT:I = 0x3e9

.field private static final ID_DIALOG_ENTER_CREDENTIALS:I = 0x3ea

.field private static final ID_DIALOG_LOGIN_FAILED:I = 0x3ec

.field private static final ID_DIALOG_LOGIN_INCORRECT:I = 0x3ee

.field private static final ID_GOOGLE_LOGIN_SERVICE_ACCOUNT_FAIL:I = 0xd

.field private static final ID_GOOGLE_LOGIN_SERVICE_ACCOUNT_OK:I = 0xc

.field private static final ID_GOOGLE_LOGIN_SERVICE_CREDENTIALS1:I = 0x65

.field private static final ID_GOOGLE_LOGIN_SERVICE_CREDENTIALS1_FAIL:I = 0x67

.field private static final ID_GOOGLE_LOGIN_SERVICE_CREDENTIALS1_OK:I = 0x66

.field private static final ID_GOOGLE_LOGIN_SERVICE_CREDENTIALS2:I = 0x6b

.field private static final ID_GOOGLE_LOGIN_SERVICE_CREDENTIALS2_FAIL:I = 0x6d

.field private static final ID_GOOGLE_LOGIN_SERVICE_CREDENTIALS2_OK:I = 0x6c

.field private static final ID_GOOGLE_LOGIN_SERVICE_GET_ACCOUNT:I = 0xb

.field private static final ID_GOOGLE_LOGIN_SERVICE_INVALIDATE:I = 0x68

.field private static final ID_GOOGLE_LOGIN_SERVICE_INVALIDATE_FAIL:I = 0x6a

.field private static final ID_GOOGLE_LOGIN_SERVICE_INVALIDATE_OK:I = 0x69

.field private static final ID_START:I = 0x1

.field public static final SUCCESS:Ljava/lang/String; = "com.google.android.apps.googlevoice.LoginActivity.SUCCESS"


# instance fields
.field private account:Ljava/lang/String;

.field private authToken:Ljava/lang/String;

.field private authenticatingDialog:Landroid/app/ProgressDialog;

.field private authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

.field private captchaDialog:Landroid/app/AlertDialog;

.field private captchaImageUrl:Ljava/lang/String;

.field private captchaToken:Ljava/lang/String;

.field private chooseAccountDialog:Landroid/app/AlertDialog;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private didConfigureCredentialsDialog:Z

.field private enterCredentialsDialog:Landroid/app/AlertDialog;

.field private existingAccount:Ljava/lang/String;

.field private existingPassword:Ljava/lang/String;

.field private finished:Z

.field private handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private loginFailedDialog:Landroid/app/AlertDialog;

.field private loginIncorrectDialog:Landroid/app/AlertDialog;

.field private loginService:Lcom/googlex/common/async/LoginService;

.field private loginServiceAccount:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private silent:Z

.field private successReceiver:Landroid/content/BroadcastReceiver;

.field private unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

.field private voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->didConfigureCredentialsDialog:Z

    .line 118
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->finished:Z

    .line 676
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/googlex/common/async/LoginService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginService:Lcom/googlex/common/async/LoginService;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/googlevoice/LoginActivity;Lcom/googlex/common/async/LoginService;)Lcom/googlex/common/async/LoginService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginService:Lcom/googlex/common/async/LoginService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->captchaToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->captchaToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/googlevoice/LoginActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/LoginActivity;->showAuthenticatingDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/googlevoice/LoginActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/LoginActivity;->submit(Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/googlevoice/LoginActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->finished:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/AuthenticationHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/android/apps/googlevoice/LoginActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/LoginActivity;->dismissAuthenticatingDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->captchaImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/model/VoiceModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/UnreadNotifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/apps/googlevoice/LoginActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/LoginActivity;->unregisterSuccessReceiver()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/LoginActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/LoginActivity;->submit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/googlevoice/LoginActivity;Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/LoginActivity;->stopOnFailure(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/googlevoice/LoginActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->captchaDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private dismissAuthenticatingDialog()V
    .registers 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->silent:Z

    if-nez v0, :cond_9

    .line 215
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->dismissDialog(I)V

    .line 217
    :cond_9
    return-void
.end method

.method private showAuthenticatingDialog()V
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->silent:Z

    if-nez v0, :cond_9

    .line 209
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V

    .line 211
    :cond_9
    return-void
.end method

.method private stopOnFailure(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 663
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 664
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingPassword:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 665
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 669
    :goto_11
    return-void

    .line 667
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x12c

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto :goto_11
.end method

.method private submit(Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 5
    .parameter "accountText"
    .parameter "passwordText"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;

    :goto_6
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->password:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->password:Ljava/lang/String;

    :goto_c
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/LoginActivity;->submit(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void

    .line 239
    :cond_10
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_19
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method private submit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "newAccount"
    .parameter "newPassword"

    .prologue
    .line 220
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_13

    .line 221
    const-string v1, "submit(\'%s\', <password>)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 223
    :cond_13
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->password:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginService:Lcom/googlex/common/async/LoginService;

    if-nez v1, :cond_23

    .line 226
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLoginService()Lcom/googlex/common/async/LoginService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginService:Lcom/googlex/common/async/LoginService;

    .line 228
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginService:Lcom/googlex/common/async/LoginService;

    invoke-interface {v1}, Lcom/googlex/common/async/LoginService;->createLoginRequest()Lcom/googlex/common/async/LoginRequest;

    move-result-object v0

    .line 229
    .local v0, request:Lcom/googlex/common/async/LoginRequest;
    const-string v1, "grandcentral"

    invoke-interface {v0, v1}, Lcom/googlex/common/async/LoginRequest;->setService(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/googlex/common/async/LoginRequest;->setUserName(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->password:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/googlex/common/async/LoginRequest;->setPassword(Ljava/lang/String;)V

    .line 232
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/googlex/common/async/LoginRequest;->setAccountType(Ljava/lang/Object;)V

    .line 233
    new-instance v1, Lcom/google/android/apps/googlevoice/MessageTask;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v4, 0xc8

    invoke-interface {v3, v4, v0}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/googlevoice/MessageTask;-><init>(Lcom/googlex/common/task/TaskRunner;Landroid/os/Message;)V

    invoke-interface {v0, v1}, Lcom/googlex/common/async/LoginRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 235
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/LoginActivity;->showAuthenticatingDialog()V

    .line 236
    return-void
.end method

.method private unregisterSuccessReceiver()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->successReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->successReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->successReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    :cond_c
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 200
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 201
    const-string v0, "Finishing LoginActivity"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 203
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->finished:Z

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 205
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 580
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_31

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginActivity.onActivityResult(): requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginActivity.onActivityResult(): resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 585
    :cond_31
    sparse-switch p1, :sswitch_data_de

    .line 643
    :goto_34
    return-void

    .line 587
    :sswitch_35
    packed-switch p2, :pswitch_data_f0

    goto :goto_34

    .line 589
    :pswitch_39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0xc

    invoke-interface {v0, v1, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 592
    :pswitch_45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0xd

    invoke-interface {v0, v1, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 598
    :sswitch_51
    packed-switch p2, :pswitch_data_f8

    goto :goto_34

    .line 600
    :pswitch_55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x66

    invoke-interface {v0, v1, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 603
    :pswitch_61
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x67

    invoke-interface {v0, v1, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 609
    :sswitch_6d
    packed-switch p2, :pswitch_data_100

    goto :goto_34

    .line 611
    :pswitch_71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x69

    invoke-interface {v0, v1, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 614
    :pswitch_7d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x6a

    invoke-interface {v0, v1, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 620
    :sswitch_89
    packed-switch p2, :pswitch_data_108

    goto :goto_34

    .line 622
    :pswitch_8d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 625
    :pswitch_99
    const-string v1, "errorCode"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 627
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_b9

    .line 628
    const-string v1, "GoogleLoginService returned with an error: %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "errorCode"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 631
    :cond_b9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    const/16 v1, 0x6d

    invoke-interface {v0, v1, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_34

    .line 634
    :cond_c6
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_cf

    .line 635
    const-string v1, "GoogleLoginService dialog canceled by user"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 637
    :cond_cf
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;

    if-nez v2, :cond_da

    :goto_d5
    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    goto/16 :goto_34

    :cond_da
    const/16 v0, 0x12c

    goto :goto_d5

    .line 585
    nop

    :sswitch_data_de
    .sparse-switch
        0xb -> :sswitch_35
        0x65 -> :sswitch_51
        0x68 -> :sswitch_6d
        0x6b -> :sswitch_89
    .end sparse-switch

    .line 587
    :pswitch_data_f0
    .packed-switch -0x1
        :pswitch_39
        :pswitch_45
    .end packed-switch

    .line 598
    :pswitch_data_f8
    .packed-switch -0x1
        :pswitch_55
        :pswitch_61
    .end packed-switch

    .line 609
    :pswitch_data_100
    .packed-switch -0x1
        :pswitch_71
        :pswitch_7d
    .end packed-switch

    .line 620
    :pswitch_data_108
    .packed-switch -0x1
        :pswitch_8d
        :pswitch_99
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 130
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_11

    .line 131
    const-string v0, "LoginActivity.onCreate()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 133
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->requestWindowFeature(I)Z

    .line 135
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    new-instance v1, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/googlevoice/LoginActivity$LoginHandler;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;Lcom/google/android/apps/googlevoice/LoginActivity$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getAuthenticationHelper()Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authenticationHelper:Lcom/google/android/apps/googlevoice/AuthenticationHelper;

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getUnreadNotifier()Lcom/google/android/apps/googlevoice/UnreadNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->unreadNotifier:Lcom/google/android/apps/googlevoice/UnreadNotifier;

    .line 140
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const v4, 0x1080027

    const/4 v3, 0x1

    .line 245
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1b

    .line 246
    const-string v0, "LoginActivity.onCreateDialog(%d)"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 248
    :cond_1b
    packed-switch p1, :pswitch_data_196

    .line 435
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_22
    return-object v0

    .line 250
    :pswitch_23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_existing_account_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_existing_account_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_existing_account_positive_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$4;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_existing_account_negative_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/LoginActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$3;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$2;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->chooseAccountDialog:Landroid/app/AlertDialog;

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->chooseAccountDialog:Landroid/app/AlertDialog;

    goto :goto_22

    .line 283
    :pswitch_64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_enter_credentials_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$layout;->enter_credentials_body:I

    invoke-static {p0, v1, v6}, Lcom/google/android/apps/googlevoice/VoiceUtil;->inflateDialogView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_enter_credentials_positive_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/LoginActivity$6;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$6;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$5;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;

    goto :goto_22

    .line 329
    :pswitch_9e
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authenticatingDialog:Landroid/app/ProgressDialog;

    .line 330
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authenticatingDialog:Landroid/app/ProgressDialog;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 331
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authenticatingDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_authenticating_title:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authenticatingDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_authenticating_message:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authenticatingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authenticatingDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/apps/googlevoice/LoginActivity$7;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$7;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authenticatingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 343
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->authenticatingDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_22

    .line 346
    :pswitch_d7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_authentication_error_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_authentication_incorrect:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/google/android/apps/googlevoice/LoginActivity$9;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$9;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/LoginActivity$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$8;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginIncorrectDialog:Landroid/app/AlertDialog;

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginIncorrectDialog:Landroid/app/AlertDialog;

    goto/16 :goto_22

    .line 368
    :pswitch_10f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_authentication_error_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_authentication_failed:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;

    if-eqz v0, :cond_154

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;

    :goto_12c
    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/googlevoice/LoginActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_authentication_failed_try_again:I

    new-instance v2, Lcom/google/android/apps/googlevoice/LoginActivity$11;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$11;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/LoginActivity$10;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$10;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginFailedDialog:Landroid/app/AlertDialog;

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginFailedDialog:Landroid/app/AlertDialog;

    goto/16 :goto_22

    .line 368
    :cond_154
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;

    goto :goto_12c

    .line 398
    :pswitch_157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_captcha_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$layout;->enter_captcha_body:I

    invoke-static {p0, v1, v6}, Lcom/google/android/apps/googlevoice/VoiceUtil;->inflateDialogView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_enter_credentials_positive_button:I

    new-instance v2, Lcom/google/android/apps/googlevoice/LoginActivity$13;

    invoke-direct {v2, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$13;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/googlevoice/LoginActivity$12;

    invoke-direct {v1, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$12;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->captchaDialog:Landroid/app/AlertDialog;

    .line 432
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->captchaDialog:Landroid/app/AlertDialog;

    goto/16 :goto_22

    .line 248
    :pswitch_data_196
    .packed-switch 0x3e9
        :pswitch_23
        :pswitch_64
        :pswitch_9e
        :pswitch_10f
        :pswitch_157
        :pswitch_d7
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 192
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 193
    const-string v0, "LoginActivity.onDestroy()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 195
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 196
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 188
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 21
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 441
    invoke-super/range {p0 .. p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 442
    packed-switch p1, :pswitch_data_1aa

    .line 576
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 445
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->chooseAccountDialog:Landroid/app/AlertDialog;

    sget v14, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_existing_account_message:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/android/apps/googlevoice/LoginActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 450
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;

    sget v14, Lcom/google/android/apps/googlevoice/R$id;->prompt_account:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget v14, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_enter_credentials_prompt_account:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;

    sget v14, Lcom/google/android/apps/googlevoice/R$id;->prompt_password:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget v14, Lcom/google/android/apps/googlevoice/R$string;->login_dialog_enter_credentials_prompt_password:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;

    sget v14, Lcom/google/android/apps/googlevoice/R$id;->account:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 455
    .local v1, accountText:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;

    sget v14, Lcom/google/android/apps/googlevoice/R$id;->password:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 457
    .local v11, passwordText:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->didConfigureCredentialsDialog:Z

    if-nez v13, :cond_b7

    .line 459
    :try_start_64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getButton"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 460
    .local v9, method:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v9, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 462
    .local v10, okButton:Landroid/widget/Button;
    new-instance v12, Lcom/google/android/apps/googlevoice/LoginActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v10, v1, v11}, Lcom/google/android/apps/googlevoice/LoginActivity$14;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 475
    .local v12, textWatcher:Landroid/text/TextWatcher;
    invoke-virtual {v1, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 476
    invoke-virtual {v11, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_9e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_64 .. :try_end_9e} :catch_e6
    .catch Ljava/lang/SecurityException; {:try_start_64 .. :try_end_9e} :catch_f1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_9e} :catch_f8
    .catch Ljava/lang/IllegalAccessException; {:try_start_64 .. :try_end_9e} :catch_ff
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_64 .. :try_end_9e} :catch_106

    .line 496
    .end local v9           #method:Ljava/lang/reflect/Method;
    .end local v10           #okButton:Landroid/widget/Button;
    .end local v12           #textWatcher:Landroid/text/TextWatcher;
    :cond_9e
    :goto_9e
    new-instance v13, Lcom/google/android/apps/googlevoice/LoginActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/apps/googlevoice/LoginActivity$15;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    invoke-virtual {v11, v13}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 504
    new-instance v13, Lcom/google/android/apps/googlevoice/LoginActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v11}, Lcom/google/android/apps/googlevoice/LoginActivity$16;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v11, v13}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 519
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->didConfigureCredentialsDialog:Z

    .line 522
    :cond_b7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->enterCredentialsDialog:Landroid/app/AlertDialog;

    sget v14, Lcom/google/android/apps/googlevoice/R$id;->existing_account:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 524
    .local v5, existingAccountText:Landroid/widget/TextView;
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 525
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;

    if-nez v13, :cond_10d

    .line 528
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 529
    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_6

    .line 477
    .end local v5           #existingAccountText:Landroid/widget/TextView;
    :catch_e6
    move-exception v4

    .line 479
    .local v4, e:Ljava/lang/NoSuchMethodException;
    sget-boolean v13, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v13, :cond_9e

    .line 480
    const-string v13, "Unable to get buttons from dialog, skipping"

    invoke-static {v13}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_9e

    .line 482
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_f1
    move-exception v4

    .line 484
    .local v4, e:Ljava/lang/SecurityException;
    const-string v13, "Should never happen!"

    invoke-static {v13, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9e

    .line 485
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_f8
    move-exception v4

    .line 487
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v13, "Should never happen!"

    invoke-static {v13, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9e

    .line 488
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_ff
    move-exception v4

    .line 490
    .local v4, e:Ljava/lang/IllegalAccessException;
    const-string v13, "Should never happen!"

    invoke-static {v13, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9e

    .line 491
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_106
    move-exception v4

    .line 493
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v13, "Should never happen!"

    invoke-static {v13, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9e

    .line 532
    .end local v4           #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v5       #existingAccountText:Landroid/widget/TextView;
    :cond_10d
    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Landroid/widget/EditText;->setVisibility(I)V

    .line 533
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_6

    .line 539
    .end local v1           #accountText:Landroid/widget/EditText;
    .end local v5           #existingAccountText:Landroid/widget/TextView;
    .end local v11           #passwordText:Landroid/widget/EditText;
    :pswitch_11b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->captchaDialog:Landroid/app/AlertDialog;

    sget v14, Lcom/google/android/apps/googlevoice/R$id;->captcha_image:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 540
    .local v2, captchaImage:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->captchaDialog:Landroid/app/AlertDialog;

    sget v14, Lcom/google/android/apps/googlevoice/R$id;->captcha:I

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 542
    .local v3, captchaText:Landroid/widget/EditText;
    const/4 v7, 0x0

    .line 544
    .local v7, imageStream:Ljava/io/InputStream;
    :try_start_134
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/LoginActivity;->captchaImageUrl:Ljava/lang/String;

    invoke-direct {v8, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 545
    .local v8, imageUrl:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    .line 546
    const-string v13, "captcha"

    invoke-static {v7, v13}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 547
    .local v6, image:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 548
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_14e
    .catchall {:try_start_134 .. :try_end_14e} :catchall_19b
    .catch Ljava/net/MalformedURLException; {:try_start_134 .. :try_end_14e} :catch_15d
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_14e} :catch_17c

    .line 565
    if-eqz v7, :cond_6

    .line 567
    :try_start_150
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_155

    goto/16 :goto_6

    .line 568
    :catch_155
    move-exception v4

    .line 570
    .local v4, e:Ljava/io/IOException;
    const-string v13, "failed to close CAPTCHA image input stream"

    invoke-static {v13, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 549
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #image:Landroid/graphics/drawable/Drawable;
    .end local v8           #imageUrl:Ljava/net/URL;
    :catch_15d
    move-exception v4

    .line 553
    .local v4, e:Ljava/net/MalformedURLException;
    :try_start_15e
    const-string v13, "Got a malformed CAPTCHA URL from the server!"

    invoke-static {v13, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/app/Dialog;->dismiss()V

    .line 555
    const/16 v13, 0x3ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V
    :try_end_16d
    .catchall {:try_start_15e .. :try_end_16d} :catchall_19b

    .line 565
    if-eqz v7, :cond_6

    .line 567
    :try_start_16f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_172} :catch_174

    goto/16 :goto_6

    .line 568
    :catch_174
    move-exception v4

    .line 570
    .local v4, e:Ljava/io/IOException;
    const-string v13, "failed to close CAPTCHA image input stream"

    invoke-static {v13, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 556
    .end local v4           #e:Ljava/io/IOException;
    :catch_17c
    move-exception v4

    .line 561
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_17d
    const-string v13, "Failed to read CAPTCHA image"

    invoke-static {v13, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/app/Dialog;->dismiss()V

    .line 563
    const/16 v13, 0x3ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/apps/googlevoice/LoginActivity;->showDialog(I)V
    :try_end_18c
    .catchall {:try_start_17d .. :try_end_18c} :catchall_19b

    .line 565
    if-eqz v7, :cond_6

    .line 567
    :try_start_18e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_193

    goto/16 :goto_6

    .line 568
    :catch_193
    move-exception v4

    .line 570
    const-string v13, "failed to close CAPTCHA image input stream"

    invoke-static {v13, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 565
    .end local v4           #e:Ljava/io/IOException;
    :catchall_19b
    move-exception v13

    if-eqz v7, :cond_1a1

    .line 567
    :try_start_19e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_1a2

    .line 571
    :cond_1a1
    :goto_1a1
    throw v13

    .line 568
    :catch_1a2
    move-exception v4

    .line 570
    .restart local v4       #e:Ljava/io/IOException;
    const-string v14, "failed to close CAPTCHA image input stream"

    invoke-static {v14, v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a1

    .line 442
    nop

    :pswitch_data_1aa
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_24
        :pswitch_6
        :pswitch_6
        :pswitch_11b
    .end packed-switch
.end method

.method protected onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingPassword:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.googlevoice.LoginActivity.SILENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->silent:Z

    .line 149
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_43

    .line 150
    const-string v0, "LoginActivity.onStart(), intent = %s, existingAccount = %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 154
    :cond_43
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->successReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4e

    .line 155
    new-instance v0, Lcom/google/android/apps/googlevoice/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/LoginActivity$1;-><init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->successReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    :cond_4e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->successReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.apps.googlevoice.LoginActivity.SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, v4}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 167
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 178
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 179
    const-string v0, "LoginActivity.onStop(): unregistering success receiver."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 181
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 182
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/LoginActivity;->unregisterSuccessReceiver()V

    .line 183
    return-void
.end method
