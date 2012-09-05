.class public Lcom/swype/android/settings/TipDialog;
.super Lcom/swype/android/inputmethod/SwypeDialog;
.source "TipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/settings/TipDialog$JavaScriptBridge;,
        Lcom/swype/android/settings/TipDialog$LoadViewListener;
    }
.end annotation


# static fields
.field private static final longClickConsumer:Landroid/view/View$OnLongClickListener;

.field private static final tipDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final htmlTip:Ljava/lang/String;

.field private m_loadViewListener:Lcom/swype/android/settings/TipDialog$LoadViewListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/swype/android/settings/TipDialog$1;

    invoke-direct {v0}, Lcom/swype/android/settings/TipDialog$1;-><init>()V

    sput-object v0, Lcom/swype/android/settings/TipDialog;->longClickConsumer:Landroid/view/View$OnLongClickListener;

    .line 39
    new-instance v0, Lcom/swype/android/settings/TipDialog$2;

    invoke-direct {v0}, Lcom/swype/android/settings/TipDialog$2;-><init>()V

    sput-object v0, Lcom/swype/android/settings/TipDialog;->tipDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "htmlTip"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeDialog;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/swype/android/settings/TipDialog;->htmlTip:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/settings/TipDialog;Landroid/webkit/WebView;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/swype/android/settings/TipDialog;->onLoadViewComplete(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method protected static doNotShow(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 155
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->dontShowHelpAgain()V

    .line 156
    return-void
.end method

.method private onLoadViewComplete(Landroid/webkit/WebView;Z)V
    .registers 4
    .parameter "view"
    .parameter "success"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/swype/android/settings/TipDialog;->m_loadViewListener:Lcom/swype/android/settings/TipDialog$LoadViewListener;

    if-eqz v0, :cond_c

    .line 87
    iget-object v0, p0, Lcom/swype/android/settings/TipDialog;->m_loadViewListener:Lcom/swype/android/settings/TipDialog$LoadViewListener;

    invoke-interface {v0, p0, p2}, Lcom/swype/android/settings/TipDialog$LoadViewListener;->onLoadView(Lcom/swype/android/settings/TipDialog;Z)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/settings/TipDialog;->m_loadViewListener:Lcom/swype/android/settings/TipDialog$LoadViewListener;

    .line 90
    :cond_c
    return-void
.end method

.method protected static showHelp(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/swype/android/settings/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method protected static showSettings(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/swype/android/settings/SwypeSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method


# virtual methods
.method public createDialog(Lcom/swype/android/inputmethod/SwypeApplication;Lcom/swype/android/settings/TipDialog$LoadViewListener;)V
    .registers 3
    .parameter "swypeApp"
    .parameter "listener"

    .prologue
    .line 73
    iput-object p2, p0, Lcom/swype/android/settings/TipDialog;->m_loadViewListener:Lcom/swype/android/settings/TipDialog$LoadViewListener;

    .line 74
    invoke-virtual {p0, p1}, Lcom/swype/android/settings/TipDialog;->createDialog(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method protected doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    new-instance v6, Landroid/app/Dialog;

    invoke-direct {v6, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v6, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 97
    sget-object v0, Lcom/swype/android/settings/TipDialog;->tipDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 99
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 101
    sget-object v1, Lcom/swype/android/settings/TipDialog;->longClickConsumer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 106
    new-instance v1, Lcom/swype/android/settings/TipDialog$3;

    invoke-direct {v1, p0}, Lcom/swype/android/settings/TipDialog$3;-><init>(Lcom/swype/android/settings/TipDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 124
    new-instance v1, Lcom/swype/android/settings/TipDialog$JavaScriptBridge;

    invoke-direct {v1, v6}, Lcom/swype/android/settings/TipDialog$JavaScriptBridge;-><init>(Landroid/app/Dialog;)V

    const-string v2, "SwypeHost"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->BASE_HELP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/settings/TipDialog;->htmlTip:Ljava/lang/String;

    const-string v4, "utf-8"

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 128
    invoke-virtual {v6, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-object v6
.end method

.method public onOrientationChange()V
    .registers 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/swype/android/settings/TipDialog;->dismiss()V

    .line 207
    return-void
.end method
