.class Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TwitterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/TwitterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitterWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/api/TwitterDialog;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/social/api/TwitterDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/TwitterDialog;Lcom/vlingo/client/social/api/TwitterDialog$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;-><init>(Lcom/vlingo/client/social/api/TwitterDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 236
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/vlingo/client/social/api/TwitterDialog;->access$300(Lcom/vlingo/client/social/api/TwitterDialog;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    .line 239
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/vlingo/client/social/api/TwitterDialog;->access$400(Lcom/vlingo/client/social/api/TwitterDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_1e
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v1}, Lcom/vlingo/client/social/api/TwitterDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/vlingo/client/social/api/TwitterDialog;->access$200(Lcom/vlingo/client/social/api/TwitterDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 242
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/vlingo/client/social/api/TwitterDialog;->access$200(Lcom/vlingo/client/social/api/TwitterDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 243
    :cond_3b
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 213
    sget-object v3, Lcom/vlingo/client/social/api/TwitterAPI;->CALLBACK_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 214
    invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 215
    .local v1, values:Landroid/os/Bundle;
    const-string v3, "error_reason"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, error:Ljava/lang/String;
    const-string v3, "done"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 217
    .local v2, wasCancelled:Z
    if-eqz v2, :cond_2d

    .line 218
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mListener:Lcom/vlingo/client/social/api/TwitterDialogListener;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterDialog;->access$100(Lcom/vlingo/client/social/api/TwitterDialog;)Lcom/vlingo/client/social/api/TwitterDialogListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/vlingo/client/social/api/TwitterDialogListener;->onCancel()V

    .line 224
    :goto_27
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v3}, Lcom/vlingo/client/social/api/TwitterDialog;->dismiss()V

    .line 230
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    .end local v2           #wasCancelled:Z
    :cond_2c
    :goto_2c
    return-void

    .line 219
    .restart local v0       #error:Ljava/lang/String;
    .restart local v1       #values:Landroid/os/Bundle;
    .restart local v2       #wasCancelled:Z
    :cond_2d
    if-nez v0, :cond_39

    .line 220
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mListener:Lcom/vlingo/client/social/api/TwitterDialogListener;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterDialog;->access$100(Lcom/vlingo/client/social/api/TwitterDialog;)Lcom/vlingo/client/social/api/TwitterDialogListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/vlingo/client/social/api/TwitterDialogListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_27

    .line 222
    :cond_39
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mListener:Lcom/vlingo/client/social/api/TwitterDialogListener;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterDialog;->access$100(Lcom/vlingo/client/social/api/TwitterDialog;)Lcom/vlingo/client/social/api/TwitterDialogListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/vlingo/client/social/api/TwitterDialogListener;->onTwitterError(Ljava/lang/String;)V

    goto :goto_27

    .line 227
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    .end local v2           #wasCancelled:Z
    :cond_43
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 228
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v3}, Lcom/vlingo/client/social/api/TwitterDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 229
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterDialog;->access$200(Lcom/vlingo/client/social/api/TwitterDialog;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    goto :goto_2c
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mListener:Lcom/vlingo/client/social/api/TwitterDialogListener;
    invoke-static {v0}, Lcom/vlingo/client/social/api/TwitterDialog;->access$100(Lcom/vlingo/client/social/api/TwitterDialog;)Lcom/vlingo/client/social/api/TwitterDialogListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/vlingo/client/social/api/TwitterDialogListener;->onError(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterDialog;->dismiss()V

    .line 207
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 180
    sget-object v3, Lcom/vlingo/client/social/api/TwitterAPI;->CALLBACK_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 181
    invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 182
    .local v1, values:Landroid/os/Bundle;
    const-string v3, "error_reason"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, error:Ljava/lang/String;
    if-nez v0, :cond_28

    .line 184
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mListener:Lcom/vlingo/client/social/api/TwitterDialogListener;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterDialog;->access$100(Lcom/vlingo/client/social/api/TwitterDialog;)Lcom/vlingo/client/social/api/TwitterDialogListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/vlingo/client/social/api/TwitterDialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 188
    :goto_22
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v3}, Lcom/vlingo/client/social/api/TwitterDialog;->dismiss()V

    .line 199
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    :goto_27
    return v2

    .line 186
    .restart local v0       #error:Ljava/lang/String;
    .restart local v1       #values:Landroid/os/Bundle;
    :cond_28
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    #getter for: Lcom/vlingo/client/social/api/TwitterDialog;->mListener:Lcom/vlingo/client/social/api/TwitterDialogListener;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterDialog;->access$100(Lcom/vlingo/client/social/api/TwitterDialog;)Lcom/vlingo/client/social/api/TwitterDialogListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/vlingo/client/social/api/TwitterDialogListener;->onTwitterError(Ljava/lang/String;)V

    goto :goto_22

    .line 194
    .end local v0           #error:Ljava/lang/String;
    .end local v1           #values:Landroid/os/Bundle;
    :cond_32
    const-string v3, "touch"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 195
    const/4 v2, 0x0

    goto :goto_27

    .line 198
    :cond_3c
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterDialog$TwitterWebViewClient;->this$0:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v3}, Lcom/vlingo/client/social/api/TwitterDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_27
.end method
