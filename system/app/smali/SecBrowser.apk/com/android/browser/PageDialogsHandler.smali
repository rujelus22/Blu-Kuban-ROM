.class public Lcom/android/browser/PageDialogsHandler;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

.field private mPageInfoDialog:Landroid/app/AlertDialog;

.field private mPageInfoFromShowSSLCertificateOnError:Z

.field private mPageInfoView:Lcom/android/browser/Tab;

.field private mSSLCertificateDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorError:Landroid/net/http/SslError;

.field private mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

.field private mSSLCertificateOnErrorView:Landroid/webkit/WebView;

.field private mSSLCertificateView:Lcom/android/browser/Tab;

.field private mUrlCertificateOnError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/Controller;)V
    .registers 3
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler;->mController:Lcom/android/browser/Controller;

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/browser/PageDialogsHandler;)Lcom/android/browser/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mController:Lcom/android/browser/Controller;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/PageDialogsHandler;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/browser/PageDialogsHandler;)Landroid/webkit/SslErrorHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/browser/PageDialogsHandler;)Landroid/net/http/SslError;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/browser/PageDialogsHandler;Landroid/net/http/SslError;)Landroid/net/http/SslError;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificate(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method private addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V
    .registers 7
    .parameter "inflater"
    .parameter "parent"
    .parameter "error"

    .prologue
    .line 307
    const v1, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 309
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 310
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    return-void
.end method

.method private showSSLCertificate(Lcom/android/browser/Tab;)V
    .registers 10
    .parameter "tab"

    .prologue
    .line 262
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 263
    .local v0, cert:Landroid/net/http/SslCertificate;
    if-nez v0, :cond_b

    .line 304
    :goto_a
    return-void

    .line 266
    :cond_b
    iget-object v5, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 268
    .local v1, certificateView:Landroid/view/View;
    iget-object v5, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 270
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x1020321

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 273
    .local v4, placeholder:Landroid/widget/LinearLayout;
    const v5, 0x7f04003d

    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 275
    .local v3, ll:Landroid/widget/LinearLayout;
    const v5, 0x7f0d00bb

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x104059a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 278
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateView:Lcom/android/browser/Tab;

    .line 279
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040599

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f02004e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0013

    new-instance v7, Lcom/android/browser/PageDialogsHandler$8;

    invoke-direct {v7, p0, p1}, Lcom/android/browser/PageDialogsHandler$8;-><init>(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/browser/PageDialogsHandler$7;

    invoke-direct {v6, p0, p1}, Lcom/android/browser/PageDialogsHandler$7;-><init>(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    goto :goto_a
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "config"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    .line 67
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 68
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoView:Lcom/android/browser/Tab;

    iget-boolean v1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoFromShowSSLCertificateOnError:Z

    iget-object v2, p0, Lcom/android/browser/PageDialogsHandler;->mUrlCertificateOnError:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;ZLjava/lang/String;)V

    .line 72
    :cond_12
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_20

    .line 73
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 74
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateView:Lcom/android/browser/Tab;

    invoke-direct {p0, v0}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificate(Lcom/android/browser/Tab;)V

    .line 76
    :cond_20
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_32

    .line 77
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 78
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    iget-object v2, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 82
    :cond_32
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    if-eqz v0, :cond_3b

    .line 83
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    invoke-virtual {v0}, Lcom/android/browser/HttpAuthenticationDialog;->reshow()V

    .line 85
    :cond_3b
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 122
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_b

    .line 123
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_b
    return-void
.end method

.method showHttpAuthentication(Lcom/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "tab"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 91
    new-instance v0, Lcom/android/browser/HttpAuthenticationDialog;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/browser/HttpAuthenticationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    .line 92
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    new-instance v1, Lcom/android/browser/PageDialogsHandler$1;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/PageDialogsHandler$1;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/HttpAuthenticationDialog;->setOkListener(Lcom/android/browser/HttpAuthenticationDialog$OkListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    new-instance v1, Lcom/android/browser/PageDialogsHandler$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/browser/PageDialogsHandler$2;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/HttpAuthHandler;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/HttpAuthenticationDialog;->setCancelListener(Lcom/android/browser/HttpAuthenticationDialog$CancelListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    invoke-virtual {v0}, Lcom/android/browser/HttpAuthenticationDialog;->show()V

    .line 107
    return-void
.end method

.method showPageInfo(Lcom/android/browser/Tab;ZLjava/lang/String;)V
    .registers 13
    .parameter "tab"
    .parameter "fromShowSSLCertificateOnError"
    .parameter "urlCertificateOnError"

    .prologue
    .line 140
    iget-object v6, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 142
    .local v1, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f040030

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 144
    .local v2, pageInfoView:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    .line 146
    .local v5, view:Landroid/webkit/WebView;
    if-eqz p2, :cond_92

    move-object v4, p3

    .line 147
    .local v4, url:Ljava/lang/String;
    :goto_15
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, title:Ljava/lang/String;
    if-nez v4, :cond_1d

    .line 150
    const-string v4, ""

    .line 152
    :cond_1d
    if-nez v3, :cond_21

    .line 153
    const-string v3, ""

    .line 156
    :cond_21
    const v6, 0x7f0d0050

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v6, 0x7f0d0005

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoView:Lcom/android/browser/Tab;

    .line 160
    iput-boolean p2, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoFromShowSSLCertificateOnError:Z

    .line 161
    iput-object p3, p0, Lcom/android/browser/PageDialogsHandler;->mUrlCertificateOnError:Ljava/lang/String;

    .line 163
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0016

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0200c1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c0013

    new-instance v8, Lcom/android/browser/PageDialogsHandler$5;

    invoke-direct {v8, p0, p2}, Lcom/android/browser/PageDialogsHandler$5;-><init>(Lcom/android/browser/PageDialogsHandler;Z)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/browser/PageDialogsHandler$4;

    invoke-direct {v7, p0, p2}, Lcom/android/browser/PageDialogsHandler$4;-><init>(Lcom/android/browser/PageDialogsHandler;Z)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/browser/PageDialogsHandler$3;

    invoke-direct {v7, p0}, Lcom/android/browser/PageDialogsHandler$3;-><init>(Lcom/android/browser/PageDialogsHandler;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    if-nez p2, :cond_80

    if-eqz v5, :cond_8b

    invoke-virtual {v5}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v6

    if-eqz v6, :cond_8b

    .line 226
    :cond_80
    const v6, 0x7f0c001c

    new-instance v7, Lcom/android/browser/PageDialogsHandler$6;

    invoke-direct {v7, p0, p2, v5, p1}, Lcom/android/browser/PageDialogsHandler$6;-><init>(Lcom/android/browser/PageDialogsHandler;ZLandroid/webkit/WebView;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    :cond_8b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    .line 253
    return-void

    .line 146
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #url:Ljava/lang/String;
    :cond_92
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_15
.end method

.method showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 11
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 324
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    .line 325
    .local v0, cert:Landroid/net/http/SslCertificate;
    if-nez v0, :cond_7

    .line 407
    :goto_6
    return-void

    .line 328
    :cond_7
    iget-object v4, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 330
    .local v1, certificateView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 332
    .local v2, factory:Landroid/view/LayoutInflater;
    const v4, 0x1020321

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 335
    .local v3, placeholder:Landroid/widget/LinearLayout;
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 336
    const v4, 0x7f0c001e

    invoke-direct {p0, v2, v3, v4}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 338
    :cond_29
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 339
    const v4, 0x7f0c001f

    invoke-direct {p0, v2, v3, v4}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 341
    :cond_36
    const/4 v4, 0x1

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 342
    const v4, 0x7f0c0020

    invoke-direct {p0, v2, v3, v4}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 344
    :cond_43
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 345
    const v4, 0x7f0c0021

    invoke-direct {p0, v2, v3, v4}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 347
    :cond_50
    const/4 v4, 0x4

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 348
    const v4, 0x7f0c0022

    invoke-direct {p0, v2, v3, v4}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 350
    :cond_5d
    const/4 v4, 0x5

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 351
    const v4, 0x7f0c0023

    invoke-direct {p0, v2, v3, v4}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 353
    :cond_6a
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_76

    .line 354
    const v4, 0x7f0c0024

    invoke-direct {p0, v2, v3, v4}, Lcom/android/browser/PageDialogsHandler;->addError(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;I)V

    .line 357
    :cond_76
    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 358
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    .line 359
    iput-object p3, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    .line 360
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040599

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f02004d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0013

    new-instance v6, Lcom/android/browser/PageDialogsHandler$11;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler$11;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0017

    new-instance v6, Lcom/android/browser/PageDialogsHandler$10;

    invoke-direct {v6, p0, p1, p3}, Lcom/android/browser/PageDialogsHandler$10;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/PageDialogsHandler$9;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler$9;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    goto/16 :goto_6
.end method
