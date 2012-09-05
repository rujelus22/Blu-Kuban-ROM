.class public Lcom/android/browser/Reader;
.super Landroid/app/Activity;
.source "Reader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Reader$WebviewActivityClient;,
        Lcom/android/browser/Reader$MyWebChromeClient;
    }
.end annotation


# instance fields
.field public Fixedfont:I

.field public MINIMUM_WAITING_LIMIT:J

.field private close:Landroid/widget/ImageView;

.field public count:I

.field private current:Lcom/android/browser/Tab;

.field public dialog:Landroid/app/Dialog;

.field public flag:Z

.field public font:I

.field public layout:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mController:Lcom/android/browser/Controller;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mUi:Lcom/android/browser/PhoneUi;

.field private mWebView:Landroid/webkit/WebView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field public readercounter:J

.field public script:Ljava/lang/String;

.field private zoomin:Landroid/widget/ImageView;

.field private zoomout:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V
    .registers 7
    .parameter "activity"
    .parameter "controller"
    .parameter "ui"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    iput-object v2, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/Reader;->count:I

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/Reader;->readercounter:J

    .line 69
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/browser/Reader;->MINIMUM_WAITING_LIMIT:J

    .line 70
    iput-object v2, p0, Lcom/android/browser/Reader;->script:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/android/browser/Reader;->layout:Landroid/view/View;

    .line 79
    iput-object p1, p0, Lcom/android/browser/Reader;->mActivity:Landroid/app/Activity;

    .line 80
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getController()Lcom/android/browser/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    .line 81
    iput-object p3, p0, Lcom/android/browser/Reader;->mUi:Lcom/android/browser/PhoneUi;

    .line 82
    iget-object v0, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Reader;->mTabControl:Lcom/android/browser/TabControl;

    .line 83
    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/Reader;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/browser/Reader;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/Reader;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/Reader;)Lcom/android/browser/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/Reader;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private doClose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 468
    iput-boolean v2, p0, Lcom/android/browser/Reader;->flag:Z

    .line 469
    iget-object v0, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    iput-object v1, v0, Lcom/android/browser/Controller;->sReaderContent:Ljava/lang/String;

    .line 470
    iput v2, p0, Lcom/android/browser/Reader;->count:I

    .line 471
    iput-object v1, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    .line 472
    iput-object v1, p0, Lcom/android/browser/Reader;->zoomout:Landroid/widget/ImageView;

    .line 473
    iput-object v1, p0, Lcom/android/browser/Reader;->close:Landroid/widget/ImageView;

    .line 474
    iput-object v1, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    .line 475
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/browser/Reader;->readercounter:J

    .line 477
    return-void
.end method

.method private doZoomin()V
    .registers 4

    .prologue
    const/4 v2, 0x5

    .line 483
    iget v0, p0, Lcom/android/browser/Reader;->count:I

    if-gt v0, v2, :cond_28

    .line 484
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomout:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 485
    iget v0, p0, Lcom/android/browser/Reader;->font:I

    iget v1, p0, Lcom/android/browser/Reader;->Fixedfont:I

    if-ne v0, v1, :cond_33

    .line 486
    iget v0, p0, Lcom/android/browser/Reader;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/Reader;->count:I

    .line 487
    iget v0, p0, Lcom/android/browser/Reader;->font:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/browser/Reader;->font:I

    .line 488
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/Reader;->font:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 495
    :cond_28
    :goto_28
    iget v0, p0, Lcom/android/browser/Reader;->count:I

    if-ne v0, v2, :cond_32

    .line 496
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 498
    :cond_32
    return-void

    .line 490
    :cond_33
    iget v0, p0, Lcom/android/browser/Reader;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/Reader;->count:I

    .line 491
    iget v0, p0, Lcom/android/browser/Reader;->font:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/browser/Reader;->font:I

    .line 492
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/Reader;->font:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    goto :goto_28
.end method

.method private doZoomout()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 440
    iget v0, p0, Lcom/android/browser/Reader;->font:I

    iget v1, p0, Lcom/android/browser/Reader;->Fixedfont:I

    if-eq v0, v1, :cond_41

    .line 441
    iget v0, p0, Lcom/android/browser/Reader;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/browser/Reader;->count:I

    .line 442
    iget v0, p0, Lcom/android/browser/Reader;->font:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/browser/Reader;->font:I

    .line 443
    iget v0, p0, Lcom/android/browser/Reader;->font:I

    iget v1, p0, Lcom/android/browser/Reader;->Fixedfont:I

    if-ne v0, v1, :cond_30

    .line 444
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomout:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/Reader;->Fixedfont:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 461
    :goto_2f
    return-void

    .line 450
    :cond_30
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/Reader;->font:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    goto :goto_2f

    .line 455
    :cond_41
    iget v0, p0, Lcom/android/browser/Reader;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/browser/Reader;->count:I

    .line 456
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomout:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/Reader;->Fixedfont:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    goto :goto_2f
.end method


# virtual methods
.method public checkCurrentWebview()Z
    .registers 5

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 161
    invoke-virtual {p0}, Lcom/android/browser/Reader;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 162
    .local v0, webview:Landroid/webkit/WebView;
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reader webview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCurrentWebview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 166
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCurrentWebview true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x1

    .line 170
    .end local v0           #webview:Landroid/webkit/WebView;
    :goto_95
    return v1

    :cond_96
    const/4 v1, 0x0

    goto :goto_95
.end method

.method public convertScriptToString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 325
    iget-object v4, p0, Lcom/android/browser/Reader;->script:Ljava/lang/String;

    if-nez v4, :cond_3d

    .line 327
    :try_start_4
    iget-object v4, p0, Lcom/android/browser/Reader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "myscript.js"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 328
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 329
    .local v3, size:I
    new-array v0, v3, [B

    .line 330
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 331
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 332
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/browser/Reader;->script:Ljava/lang/String;

    .line 333
    const-string v4, "Reader onPageFinished"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertScriptToStringr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/Reader;->script:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3d} :catch_40

    .line 340
    .end local v0           #buffer:[B
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #size:I
    :cond_3d
    iget-object v4, p0, Lcom/android/browser/Reader;->script:Ljava/lang/String;

    return-object v4

    .line 335
    :catch_40
    move-exception v1

    .line 337
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public createReader()V
    .registers 9

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_61

    .line 215
    const-string v0, "browser"

    const-string v1, "createReader if"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/browser/Reader;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 217
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040036

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Reader;->layout:Landroid/view/View;

    .line 218
    iget-object v0, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    iget-object v0, v0, Lcom/android/browser/Controller;->sReaderContent:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 219
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/browser/Reader;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x7f0f

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    .line 220
    invoke-virtual {p0}, Lcom/android/browser/Reader;->setActions()V

    .line 221
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/browser/Reader;->layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/browser/Reader;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v7

    .line 223
    .local v7, webview:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    iget-object v2, v2, Lcom/android/browser/Controller;->sReaderContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v7}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #webview:Landroid/webkit/WebView;
    :goto_53
    return-void

    .line 225
    .restart local v6       #inflater:Landroid/view/LayoutInflater;
    :cond_54
    iget-wide v0, p0, Lcom/android/browser/Reader;->readercounter:J

    iget-wide v2, p0, Lcom/android/browser/Reader;->MINIMUM_WAITING_LIMIT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/browser/Reader;->readercounter:J

    .line 226
    iget-wide v0, p0, Lcom/android/browser/Reader;->MINIMUM_WAITING_LIMIT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Reader;->runDialog(J)V

    goto :goto_53

    .line 230
    .end local v6           #inflater:Landroid/view/LayoutInflater;
    :cond_61
    const-string v0, "browser"

    const-string v1, "createReader else"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/browser/Reader;->loadReaderWebview()V

    .line 232
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/browser/Reader;->layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_53
.end method

.method public dismissDialog()V
    .registers 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2d

    .line 515
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader dismissDialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 518
    invoke-direct {p0}, Lcom/android/browser/Reader;->doClose()V

    .line 521
    :cond_2d
    return-void
.end method

.method public getReaderVisibility()Z
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/browser/Reader;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Reader;->current:Lcom/android/browser/Tab;

    .line 101
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader: Inside OnPrepareOptionsMenu - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Reader;->current:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getReaderValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/browser/Reader;->current:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getReaderValue()Z

    move-result v0

    return v0
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/browser/Reader;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_b

    .line 90
    iget-object v0, p0, Lcom/android/browser/Reader;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 93
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public loadReaderWebview()V
    .registers 8

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/browser/Reader;->checkCurrentWebview()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 189
    iget-object v0, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 190
    invoke-virtual {p0}, Lcom/android/browser/Reader;->setActions()V

    .line 191
    invoke-virtual {p0}, Lcom/android/browser/Reader;->showReader()V

    .line 208
    :goto_11
    return-void

    .line 194
    :cond_12
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadReaderWebview else"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    iget-object v2, v2, Lcom/android/browser/Controller;->sReaderContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    iget-object v0, v0, Lcom/android/browser/Controller;->sReaderContent:Ljava/lang/String;

    if-eqz v0, :cond_8e

    .line 196
    invoke-virtual {p0}, Lcom/android/browser/Reader;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v6

    .line 198
    .local v6, webview:Landroid/webkit/WebView;
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadReaderWebview else webview.getUrl()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/browser/Reader;->setActions()V

    .line 200
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 201
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    iget-object v2, v2, Lcom/android/browser/Controller;->sReaderContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadReaderWebview mController.sReaderContent!=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    iget-object v2, v2, Lcom/android/browser/Controller;->sReaderContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 204
    .end local v6           #webview:Landroid/webkit/WebView;
    :cond_8e
    iget-wide v0, p0, Lcom/android/browser/Reader;->readercounter:J

    iget-wide v2, p0, Lcom/android/browser/Reader;->MINIMUM_WAITING_LIMIT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/browser/Reader;->readercounter:J

    .line 205
    iget-wide v0, p0, Lcom/android/browser/Reader;->MINIMUM_WAITING_LIMIT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Reader;->runDialog(J)V

    goto/16 :goto_11
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_7

    .line 506
    invoke-direct {p0}, Lcom/android/browser/Reader;->doClose()V

    .line 508
    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 420
    const-string v0, "Reader onClick"

    const-string v1, "onClick = "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_16

    .line 422
    const-string v0, "Reader zoomin"

    const-string v1, "zoomin = "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0}, Lcom/android/browser/Reader;->doZoomin()V

    .line 433
    :cond_15
    :goto_15
    return-void

    .line 424
    :cond_16
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomout:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_25

    .line 425
    const-string v0, "Reader zoomout"

    const-string v1, "zoomout = "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lcom/android/browser/Reader;->doZoomout()V

    goto :goto_15

    .line 427
    :cond_25
    iget-object v0, p0, Lcom/android/browser/Reader;->close:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_15

    .line 428
    const-string v0, "Reader close"

    const-string v1, "close = "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lcom/android/browser/Reader;->doClose()V

    goto :goto_15
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 413
    const-string v0, "Reader onPageFinished"

    const-string v1, "onCreateContextMenu = "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/browser/Reader;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/Controller;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 415
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialogkey"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 528
    const/16 v0, 0x52

    if-ne p2, v0, :cond_1d

    iget-object v0, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 529
    :cond_14
    const-string v0, "browser"

    const-string v1, "Reader onKey"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v0, 0x1

    .line 532
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public runDialog(J)V
    .registers 10
    .parameter "time"

    .prologue
    const/4 v6, 0x0

    .line 112
    const-string v2, "browser"

    const-string v3, "rundialog "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_1d

    .line 114
    iget-object v2, p0, Lcom/android/browser/Reader;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "Please wait...."

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    .line 115
    iget-object v2, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 117
    :cond_1d
    iget-wide v2, p0, Lcom/android/browser/Reader;->readercounter:J

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_38

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 119
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 120
    .local v1, t:Ljava/util/Timer;
    new-instance v2, Lcom/android/browser/Reader$1;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/Reader$1;-><init>(Lcom/android/browser/Reader;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 137
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #t:Ljava/util/Timer;
    :goto_37
    return-void

    .line 132
    :cond_38
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/browser/Reader;->readercounter:J

    .line 133
    iget-object v2, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 134
    iget-object v2, p0, Lcom/android/browser/Reader;->mActivity:Landroid/app/Activity;

    const-string v3, "Sorry, Time Out!!!"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 135
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_37
.end method

.method public setActions()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 267
    iget-object v0, p0, Lcom/android/browser/Reader;->layout:Landroid/view/View;

    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    .line 268
    iget-object v0, p0, Lcom/android/browser/Reader;->layout:Landroid/view/View;

    const v1, 0x7f0d008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/Reader;->close:Landroid/widget/ImageView;

    .line 269
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Reader$WebviewActivityClient;

    invoke-direct {v1, p0, v3}, Lcom/android/browser/Reader$WebviewActivityClient;-><init>(Lcom/android/browser/Reader;Lcom/android/browser/Reader$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 271
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Reader$MyWebChromeClient;

    invoke-direct {v1, p0, v3}, Lcom/android/browser/Reader$MyWebChromeClient;-><init>(Lcom/android/browser/Reader;Lcom/android/browser/Reader$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 272
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v0

    iput v0, p0, Lcom/android/browser/Reader;->font:I

    .line 273
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/browser/Reader;->layout:Landroid/view/View;

    const v1, 0x7f0d008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    .line 275
    iget-object v0, p0, Lcom/android/browser/Reader;->layout:Landroid/view/View;

    const v1, 0x7f0d008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/Reader;->zoomout:Landroid/widget/ImageView;

    .line 276
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/browser/Reader;->Fixedfont:I

    .line 277
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomout:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/android/browser/Reader;->close:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/browser/Reader;->setReaderFont()V

    .line 282
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/browser/Reader;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setEnableMagnifier(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 287
    iget-object v0, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a3

    .line 288
    iget-object v0, p0, Lcom/android/browser/Reader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 289
    :cond_a3
    return-void
.end method

.method public setReaderFont()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 242
    const-string v0, "Reader setReaderFont"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "font part = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/Reader;->font:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "Reader setReaderFont"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fixedfont part = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/Reader;->Fixedfont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget v0, p0, Lcom/android/browser/Reader;->font:I

    iget v1, p0, Lcom/android/browser/Reader;->Fixedfont:I

    if-le v0, v1, :cond_68

    .line 245
    iget v0, p0, Lcom/android/browser/Reader;->font:I

    iget v1, p0, Lcom/android/browser/Reader;->Fixedfont:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/browser/Reader;->count:I

    .line 246
    iget v0, p0, Lcom/android/browser/Reader;->count:I

    if-lez v0, :cond_59

    iget v0, p0, Lcom/android/browser/Reader;->count:I

    if-ge v0, v5, :cond_59

    .line 247
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomout:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 260
    :cond_58
    :goto_58
    return-void

    .line 250
    :cond_59
    iget v0, p0, Lcom/android/browser/Reader;->count:I

    if-ne v0, v5, :cond_58

    .line 251
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomout:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_58

    .line 256
    :cond_68
    iput v4, p0, Lcom/android/browser/Reader;->count:I

    .line 257
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomin:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/browser/Reader;->zoomout:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_58
.end method

.method public showReader()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 179
    iget-object v0, p0, Lcom/android/browser/Reader;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 181
    :cond_9
    return-void
.end method
