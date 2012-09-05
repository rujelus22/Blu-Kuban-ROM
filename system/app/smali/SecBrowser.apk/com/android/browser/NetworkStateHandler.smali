.class public Lcom/android/browser/NetworkStateHandler;
.super Ljava/lang/Object;
.source "NetworkStateHandler.java"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mController:Lcom/android/browser/Controller;

.field private mIsNetworkUp:Z

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V
    .registers 7
    .parameter "activity"
    .parameter "controller"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    .line 56
    iget-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 58
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 59
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1d

    .line 60
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    .line 66
    :cond_1d
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 67
    iget-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    new-instance v2, Lcom/android/browser/NetworkStateHandler$1;

    invoke-direct {v2, p0}, Lcom/android/browser/NetworkStateHandler$1;-><init>(Lcom/android/browser/NetworkStateHandler;)V

    iput-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/NetworkStateHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/browser/NetworkStateHandler;->sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 174
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_b

    .line 175
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_b
    return-void
.end method


# virtual methods
.method createAndShowNetworkDialog()V
    .registers 4

    .prologue
    .line 137
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 138
    const-string v0, "NetworkStateHandler"

    const-string v1, "createAndShowNetworkDialog: CscFeatureTagWeb_Bool_StartWIFISettingInAirplaneMode true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_13
    :goto_13
    return-void

    .line 142
    :cond_14
    iget-object v0, p0, Lcom/android/browser/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_13

    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0105

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0106

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_13
.end method

.method isNetworkUp()Z
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    return v0
.end method

.method onNetworkToggle(Z)V
    .registers 4
    .parameter "up"

    .prologue
    .line 109
    iget-boolean v1, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    if-ne p1, v1, :cond_5

    .line 128
    :cond_4
    :goto_4
    return-void

    .line 111
    :cond_5
    if-eqz p1, :cond_22

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    .line 113
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_16

    .line 114
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 124
    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 125
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    goto :goto_4

    .line 118
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/NetworkStateHandler;->mIsNetworkUp:Z

    .line 119
    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->isInLoad()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 120
    invoke-virtual {p0}, Lcom/android/browser/NetworkStateHandler;->createAndShowNetworkDialog()V

    goto :goto_16
.end method

.method onPause()V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    return-void
.end method

.method onResume()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/browser/NetworkStateHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/browser/NetworkStateHandler;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method
