.class Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$ClickableSpan;
.super Landroid/text/style/URLSpan;
.source "VoiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickableSpan"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "url"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$ClickableSpan;->this$1:Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;

    .line 286
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "widget"

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$ClickableSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 292
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 293
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 295
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 296
    const-string v3, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$ClickableSpan;->this$1:Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;

    #getter for: Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;->access$0(Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 302
    return-void
.end method
