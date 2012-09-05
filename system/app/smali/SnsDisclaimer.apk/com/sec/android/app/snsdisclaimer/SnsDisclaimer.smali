.class public Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;
.super Landroid/app/Activity;
.source "SnsDisclaimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;,
        Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAppContext:Landroid/content/Context;

.field private mCheckboxAgree:Landroid/widget/CheckBox;

.field private mHandler:Landroid/os/Handler;

.field private mProgDialog:Landroid/app/ProgressDialog;

.field private mTimer:Ljava/util/Timer;

.field private mWebView:Landroid/webkit/WebView;

.field private progDiaCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 74
    iput-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mTimer:Ljava/util/Timer;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mHandler:Landroid/os/Handler;

    .line 511
    new-instance v0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$9;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V

    iput-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->progDiaCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method private IsSocialhubWebpage(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 399
    const-string v0, "http://socialhub.samsungapps.com/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "http://socialhub.samsungmobile.com/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 401
    :cond_10
    const/4 v0, 0x1

    .line 403
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->runTimeout(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mCheckboxAgree:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->countTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->IsSocialhubWebpage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;ILjava/lang/String;)Ljava/lang/Runnable;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->newDeliverResponseRunnable(ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private checkWebviewZoom()V
    .registers 4

    .prologue
    .line 414
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 415
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 417
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-le v1, v2, :cond_22

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 422
    :goto_21
    return-void

    .line 420
    :cond_22
    iget-object v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_21
.end method

.method private countTimeout()V
    .registers 5

    .prologue
    .line 479
    new-instance v0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$8;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V

    .line 487
    .local v0, sec:Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mTimer:Ljava/util/Timer;

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x9c40

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 489
    return-void
.end method

.method private newDeliverResponseRunnable(ILjava/lang/String;)Ljava/lang/Runnable;
    .registers 4
    .parameter "errType"
    .parameter "desc"

    .prologue
    .line 79
    new-instance v0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DoDeliverResponse;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;ILjava/lang/String;)V

    return-object v0
.end method

.method private runTimeout(I)V
    .registers 4
    .parameter "errType"

    .prologue
    .line 493
    const-string v0, "SnsDisclaimer"

    const-string v1, "countTimeout() : 40s TIMEOUT!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->showAlertDialog(ILjava/lang/String;)V

    .line 498
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 526
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 527
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x5

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const-string v6, "SnsDisclaimer"

    const-string v7, "SnsDisclaimer : onCreate() Called !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 115
    const/high16 v6, 0x7f03

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->setContentView(I)V

    .line 117
    iput-object p0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    .line 120
    const-string v3, ""

    .line 123
    .local v3, debug_mode:Ljava/lang/String;
    :try_start_1d
    const-string v6, "content://com.sec.android.app.provider.sns/debug"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 124
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_ad

    move-result-object v3

    .line 129
    .end local v5           #uri:Landroid/net/Uri;
    :goto_2b
    const-string v6, "DEBUG_ON"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b2

    .line 130
    invoke-static {v10}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->setDebugMode(Z)V

    .line 136
    :goto_36
    const/high16 v6, 0x7f05

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    iput-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    .line 137
    const v6, 0x7f050001

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mCheckboxAgree:Landroid/widget/CheckBox;

    .line 138
    const v6, 0x7f050002

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 139
    .local v1, buttonAgree:Landroid/widget/Button;
    const v6, 0x7f050003

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 141
    .local v2, buttonDecline:Landroid/widget/Button;
    new-instance v6, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$1;

    iget-object v7, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$1;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    .line 152
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    const v8, 0x7f040001

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 154
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 155
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->progDiaCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 156
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v11}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 157
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 160
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b6

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f040008

    invoke-virtual {p0, v7}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->finish()V

    .line 279
    :goto_ac
    return-void

    .line 125
    .end local v1           #buttonAgree:Landroid/widget/Button;
    .end local v2           #buttonDecline:Landroid/widget/Button;
    :catch_ad
    move-exception v4

    .line 126
    .local v4, e:Ljava/lang/Exception;
    const-string v3, "DEBUG_OFF"

    goto/16 :goto_2b

    .line 132
    .end local v4           #e:Ljava/lang/Exception;
    :cond_b2
    invoke-static {v11}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->setDebugMode(Z)V

    goto :goto_36

    .line 166
    .restart local v1       #buttonAgree:Landroid/widget/Button;
    .restart local v2       #buttonDecline:Landroid/widget/Button;
    :cond_b6
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_14c

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "00000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, IMSI:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://socialhub.samsungapps.com/store/device/disclaimer.sh?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "fe134abce420daeccf3253abe99dd321"

    const/16 v9, 0xf

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimerUtil;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 174
    .end local v0           #IMSI:Ljava/lang/String;
    :goto_105
    invoke-direct {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->checkWebviewZoom()V

    .line 175
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 176
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 177
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    new-instance v7, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$2;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 182
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    new-instance v7, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;

    iget-object v8, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-direct {v7, p0, v8}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$DisclaimerWebViewClient;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;Landroid/app/ProgressDialog;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 184
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mCheckboxAgree:Landroid/widget/CheckBox;

    new-instance v7, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$3;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$3;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;Landroid/widget/Button;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    new-instance v6, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$4;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    new-instance v6, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$5;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_ac

    .line 171
    :cond_14c
    iget-object v6, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    const-string v7, "http://socialhub.samsungapps.com/disclaimer/"

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_105
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 531
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 533
    const-string v0, "SnsDisclaimer"

    const-string v1, "SnsDisclaimer : onDestroy() Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_16

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 540
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 543
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 545
    :cond_30
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 503
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 505
    const/4 v0, 0x1

    .line 508
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public showAlertDialog(ILjava/lang/String;)V
    .registers 9
    .parameter "errType"
    .parameter "description"

    .prologue
    const/4 v5, 0x1

    .line 426
    iget-object v2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mProgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 428
    iget-object v2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mTimer:Ljava/util/Timer;

    if-eqz v2, :cond_f

    .line 429
    iget-object v2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 431
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 432
    invoke-virtual {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->finish()V

    .line 473
    :cond_18
    :goto_18
    return-void

    .line 436
    :cond_19
    iget-object v2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_18

    .line 440
    const/4 v1, 0x0

    .line 442
    .local v1, msg:Ljava/lang/String;
    if-eq p1, v5, :cond_23

    const/4 v2, 0x3

    if-ne p1, v2, :cond_90

    .line 444
    :cond_23
    iget-object v2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    const v3, 0x7f040004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    :cond_2c
    :goto_2c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    const v4, 0x7f040003

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$7;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAppContext:Landroid/content/Context;

    const v4, 0x7f040007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer$6;-><init>(Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_95

    .line 467
    new-instance v0, Lcom/sec/android/app/snsdisclaimer/UIThreadRunnable;

    iget-object v2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Lcom/sec/android/app/snsdisclaimer/UIThreadRunnable;-><init>(Landroid/app/AlertDialog$Builder;)V

    .line 468
    .local v0, alterRunnable:Lcom/sec/android/app/snsdisclaimer/UIThreadRunnable;
    iget-object v2, p0, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    .end local v0           #alterRunnable:Lcom/sec/android/app/snsdisclaimer/UIThreadRunnable;
    :goto_77
    const-string v2, "SnsDisclaimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAlertDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 445
    :cond_90
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2c

    .line 446
    move-object v1, p2

    goto :goto_2c

    .line 470
    :cond_95
    invoke-virtual {p0}, Lcom/sec/android/app/snsdisclaimer/SnsDisclaimer;->finish()V

    goto :goto_77
.end method
