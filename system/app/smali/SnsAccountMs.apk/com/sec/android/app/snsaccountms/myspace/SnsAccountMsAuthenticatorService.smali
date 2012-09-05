.class public Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;
.super Landroid/app/Service;
.source "SnsAccountMsAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$SnsCallback;,
        Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$MySpaceAccountAuthenticator;
    }
.end annotation


# instance fields
.field private mAccAuth:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$MySpaceAccountAuthenticator;

.field private mAppID:I

.field private mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

.field private mReqConnection:Landroid/content/ServiceConnection;

.field private mRequester:Lcom/sec/android/app/sns/ISnsRequester;

.field private mService:Lcom/sec/android/app/sns/ISnsService;

.field private mSvcConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mAppID:I

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 81
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 83
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 121
    new-instance v0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$1;-><init>(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 139
    new-instance v0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$2;-><init>(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mReqConnection:Landroid/content/ServiceConnection;

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mAppID:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mAppID:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)Lcom/sec/android/app/sns/ISnsRequesterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)Lcom/sec/android/app/sns/ISnsRequester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object p1
.end method

.method private getAccountAuthenticator()Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$MySpaceAccountAuthenticator;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mAccAuth:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$MySpaceAccountAuthenticator;

    if-nez v0, :cond_b

    .line 152
    new-instance v0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$MySpaceAccountAuthenticator;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$MySpaceAccountAuthenticator;-><init>(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mAccAuth:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$MySpaceAccountAuthenticator;

    .line 153
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mAccAuth:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$MySpaceAccountAuthenticator;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 87
    const-string v0, "SnsAccountMs"

    const-string v1, "MySpaceAuthenticatorService : onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.accounts.AccountAuthenticator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->getAccountAuthenticator()Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$MySpaceAccountAuthenticator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$MySpaceAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 94
    :cond_1d
    new-instance v1, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$SnsCallback;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$SnsCallback;-><init>(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)V

    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsRequester;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 100
    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mService:Lcom/sec/android/app/sns/ISnsService;

    if-eqz v1, :cond_e

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sns/ISnsService;->unregisterCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_21

    .line 114
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mSvcConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_17

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 117
    :cond_17
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mReqConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_20

    .line 118
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    :cond_20
    return-void

    .line 110
    :catch_21
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method
