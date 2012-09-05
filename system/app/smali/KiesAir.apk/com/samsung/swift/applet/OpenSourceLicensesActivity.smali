.class public Lcom/samsung/swift/applet/OpenSourceLicensesActivity;
.super Landroid/app/Activity;
.source "OpenSourceLicensesActivity.java"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private final sdkVersion:I

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->sdkVersion:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/swift/applet/OpenSourceLicensesActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/swift/applet/OpenSourceLicensesActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->webView:Landroid/webkit/WebView;

    .line 34
    invoke-static {}, Lcom/samsung/swift/Swift;->isHoloLightThemeNeeded()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 41
    :goto_1d
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 42
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->webView:Landroid/webkit/WebView;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 43
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    const-string v1, "view_licence"

    invoke-static {v1}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$1;-><init>(Lcom/samsung/swift/applet/OpenSourceLicensesActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/os-licence.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$2;-><init>(Lcom/samsung/swift/applet/OpenSourceLicensesActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 61
    return-void

    .line 36
    :cond_54
    iget v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->sdkVersion:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_67

    .line 37
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_1d

    .line 39
    :cond_67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_1d
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4c

    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 78
    :goto_13
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 79
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->webView:Landroid/webkit/WebView;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 80
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    const-string v1, "view_licence"

    invoke-static {v1}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$3;-><init>(Lcom/samsung/swift/applet/OpenSourceLicensesActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/os-licence.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$4;-><init>(Lcom/samsung/swift/applet/OpenSourceLicensesActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 70
    :cond_4c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_63

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_63

    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_13

    .line 76
    :cond_63
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_13
.end method
