.class public Lcom/samsung/SMT/DisplayLicense;
.super Landroid/app/Activity;
.source "DisplayLicense.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/SMT/DisplayLicense$LicenseFileLoader;
    }
.end annotation


# instance fields
.field private m_oAssetManager:Landroid/content/res/AssetManager;

.field private m_oHandler:Landroid/os/Handler;

.field private m_oTextDlg:Landroid/app/AlertDialog;

.field private m_oWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    iput-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oHandler:Landroid/os/Handler;

    .line 133
    iput-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oWebView:Landroid/webkit/WebView;

    .line 134
    iput-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oTextDlg:Landroid/app/AlertDialog;

    .line 135
    iput-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oAssetManager:Landroid/content/res/AssetManager;

    .line 136
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/SMT/DisplayLicense;)Landroid/content/res/AssetManager;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/SMT/DisplayLicense;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/samsung/SMT/DisplayLicense;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/SMT/DisplayLicense;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oTextDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .registers 9
    .parameter "szText"

    .prologue
    const/4 v1, 0x0

    .line 195
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/SMT/DisplayLicense;->m_oWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f04000a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oTextDlg:Landroid/app/AlertDialog;

    .line 199
    iget-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oTextDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/SMT/DisplayLicense$2;

    invoke-direct {v2, p0}, Lcom/samsung/SMT/DisplayLicense$2;-><init>(Lcom/samsung/SMT/DisplayLicense;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 208
    iget-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/SMT/DisplayLicense$3;

    invoke-direct {v1, p0}, Lcom/samsung/SMT/DisplayLicense$3;-><init>(Lcom/samsung/SMT/DisplayLicense;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 217
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/SMT/DisplayLicense;->setVisible(Z)V

    .line 147
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/SMT/DisplayLicense;->m_oWebView:Landroid/webkit/WebView;

    .line 148
    invoke-virtual {p0}, Lcom/samsung/SMT/DisplayLicense;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/SMT/DisplayLicense;->m_oAssetManager:Landroid/content/res/AssetManager;

    .line 150
    new-instance v1, Lcom/samsung/SMT/DisplayLicense$1;

    invoke-direct {v1, p0}, Lcom/samsung/SMT/DisplayLicense$1;-><init>(Lcom/samsung/SMT/DisplayLicense;)V

    iput-object v1, p0, Lcom/samsung/SMT/DisplayLicense;->m_oHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/SMT/DisplayLicense$LicenseFileLoader;

    iget-object v2, p0, Lcom/samsung/SMT/DisplayLicense;->m_oHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/SMT/DisplayLicense$LicenseFileLoader;-><init>(Lcom/samsung/SMT/DisplayLicense;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 173
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 174
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 182
    iget-object v0, p0, Lcom/samsung/SMT/DisplayLicense;->m_oTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 183
    :cond_c
    return-void
.end method
