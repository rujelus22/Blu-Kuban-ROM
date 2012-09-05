.class Lcom/sprint/w/installer/TermsAndConditions$1;
.super Ljava/lang/Object;
.source "TermsAndConditions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/TermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/TermsAndConditions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/TermsAndConditions;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sprint/w/installer/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    invoke-virtual {v0}, Lcom/sprint/w/installer/TermsAndConditions;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 206
    :goto_9
    return-void

    .line 198
    :cond_a
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    const v2, 0x7f0c0008

    invoke-virtual {v0, v2}, Lcom/sprint/w/installer/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/TermsAndConditions;->mPackTc:Ljava/lang/String;

    if-eqz v0, :cond_64

    .line 201
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<span style=\"color:#FFFFFF;\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iget-object v3, v3, Lcom/sprint/w/installer/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iget-object v3, v3, Lcom/sprint/w/installer/TermsAndConditions;->mPackTc:Ljava/lang/String;

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

    .line 202
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/TermsAndConditions;->mAgree:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_9

    .line 204
    :cond_64
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$1;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/TermsAndConditions;->showDialog(I)V

    goto :goto_9
.end method
