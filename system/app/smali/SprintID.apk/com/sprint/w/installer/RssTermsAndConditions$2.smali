.class Lcom/sprint/w/installer/RssTermsAndConditions$2;
.super Ljava/lang/Object;
.source "RssTermsAndConditions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssTermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssTermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-virtual {v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 109
    :goto_9
    return-void

    .line 97
    :cond_a
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    const v2, 0x7f0c0008

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/RssTermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/RssTermsAndConditions;->mGeneralTc:Ljava/lang/String;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/RssTermsAndConditions;->mPackTc:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 99
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/RssTermsAndConditions;->mWeb:Landroid/webkit/WebView;

    if-nez v0, :cond_4a

    .line 100
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/sprint/w/installer/RssTermsAndConditions;->mWeb:Landroid/webkit/WebView;

    .line 101
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/RssTermsAndConditions;->mWeb:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v2, v2, Lcom/sprint/w/installer/RssTermsAndConditions;->mWebClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/RssTermsAndConditions;->mFrame:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v2, v2, Lcom/sprint/w/installer/RssTermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 104
    :cond_4a
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/RssTermsAndConditions;->mWeb:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v3, v3, Lcom/sprint/w/installer/RssTermsAndConditions;->mGeneralTc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v3, v3, Lcom/sprint/w/installer/RssTermsAndConditions;->mPackTc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/RssTermsAndConditions;->mAgree:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_9

    .line 107
    :cond_7e
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions$2;->this$0:Lcom/sprint/w/installer/RssTermsAndConditions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/RssTermsAndConditions;->showDialog(I)V

    goto :goto_9
.end method
