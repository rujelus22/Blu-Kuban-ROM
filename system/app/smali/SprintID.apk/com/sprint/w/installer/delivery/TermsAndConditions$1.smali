.class Lcom/sprint/w/installer/delivery/TermsAndConditions$1;
.super Ljava/lang/Object;
.source "TermsAndConditions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/TermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 165
    :goto_9
    return-void

    .line 152
    :cond_a
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    const v2, 0x7f0c0008

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mPackTc:Ljava/lang/String;

    if-eqz v0, :cond_8c

    .line 154
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    if-nez v0, :cond_4b

    .line 155
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    .line 156
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWebClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 157
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mFrame:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v2, v2, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 159
    :cond_4b
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<span style=\"color:#FFFFFF;\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v3, v3, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v3, v3, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mPackTc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</span>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mAgree:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_9

    .line 162
    :cond_8c
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->setResult(I)V

    .line 163
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->finish()V

    goto/16 :goto_9
.end method
