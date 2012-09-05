.class public Lcom/google/android/music/LicenseActivity;
.super Landroid/app/Activity;
.source "LicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/LicenseActivity$LicenseFileLoader;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/google/android/music/LicenseActivity;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Lcom/google/android/music/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 89
    iput-object v0, p0, Lcom/google/android/music/LicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 90
    iput-object v0, p0, Lcom/google/android/music/LicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/LicenseActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/music/LicenseActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/LicenseActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/music/LicenseActivity;->showErrorAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/LicenseActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/LicenseActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/music/LicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/LicenseActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/LicenseActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/music/LicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private showErrorAndFinish()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/LicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 171
    const v0, 0x7f0d0132

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/music/LicenseActivity;->finish()V

    .line 173
    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .registers 9
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 140
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/music/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0131

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/LicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 146
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/google/android/music/LicenseActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/music/LicenseActivity$2;-><init>(Lcom/google/android/music/LicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/android/music/LicenseActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/music/LicenseActivity$3;-><init>(Lcom/google/android/music/LicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 165
    iput-object v1, p0, Lcom/google/android/music/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 166
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0, v5}, Lcom/google/android/music/LicenseActivity;->setVisible(Z)V

    .line 101
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/music/LicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 103
    new-instance v4, Lcom/google/android/music/LicenseActivity$1;

    invoke-direct {v4, p0}, Lcom/google/android/music/LicenseActivity$1;-><init>(Lcom/google/android/music/LicenseActivity;)V

    iput-object v4, p0, Lcom/google/android/music/LicenseActivity;->mHandler:Landroid/os/Handler;

    .line 118
    const v4, 0x7f0d0131

    invoke-virtual {p0, v4}, Lcom/google/android/music/LicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 119
    .local v3, title:Ljava/lang/CharSequence;
    const v4, 0x7f0d008e

    invoke-virtual {p0, v4}, Lcom/google/android/music/LicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 121
    .local v0, msg:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    invoke-static {p0, v3, v0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 122
    .local v1, pd:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 123
    iput-object v1, p0, Lcom/google/android/music/LicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 126
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/music/LicenseActivity$LicenseFileLoader;

    iget-object v5, p0, Lcom/google/android/music/LicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/google/android/music/LicenseActivity$LicenseFileLoader;-><init>(Lcom/google/android/music/LicenseActivity;Landroid/os/Handler;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 134
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    :cond_c
    return-void
.end method
