.class Lcom/swype/android/settings/TipDialog$3;
.super Landroid/webkit/WebViewClient;
.source "TipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/settings/TipDialog;->doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/settings/TipDialog;


# direct methods
.method constructor <init>(Lcom/swype/android/settings/TipDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/swype/android/settings/TipDialog$3;->this$0:Lcom/swype/android/settings/TipDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/swype/android/settings/TipDialog$3;->this$0:Lcom/swype/android/settings/TipDialog;

    const/4 v1, 0x1

    #calls: Lcom/swype/android/settings/TipDialog;->onLoadViewComplete(Landroid/webkit/WebView;Z)V
    invoke-static {v0, p1, v1}, Lcom/swype/android/settings/TipDialog;->access$000(Lcom/swype/android/settings/TipDialog;Landroid/webkit/WebView;Z)V

    .line 113
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/swype/android/settings/TipDialog$3;->this$0:Lcom/swype/android/settings/TipDialog;

    const/4 v1, 0x0

    #calls: Lcom/swype/android/settings/TipDialog;->onLoadViewComplete(Landroid/webkit/WebView;Z)V
    invoke-static {v0, p1, v1}, Lcom/swype/android/settings/TipDialog;->access$000(Lcom/swype/android/settings/TipDialog;Landroid/webkit/WebView;Z)V

    .line 121
    return-void
.end method
