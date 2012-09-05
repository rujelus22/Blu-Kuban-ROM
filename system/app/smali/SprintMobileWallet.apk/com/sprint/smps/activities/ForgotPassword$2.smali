.class Lcom/sprint/smps/activities/ForgotPassword$2;
.super Ljava/lang/Object;
.source "ForgotPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ForgotPassword;->changePin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ForgotPassword;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ForgotPassword;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ForgotPassword$2;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 208
    iget-object v5, p0, Lcom/sprint/smps/activities/ForgotPassword$2;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    const v6, 0x7f080024

    invoke-virtual {v5, v6}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, account:Ljava/lang/String;
    iget-object v5, p0, Lcom/sprint/smps/activities/ForgotPassword$2;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    const v6, 0x7f080019

    invoke-virtual {v5, v6}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, pin:Ljava/lang/String;
    iget-object v5, p0, Lcom/sprint/smps/activities/ForgotPassword$2;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    const v6, 0x7f080026

    invoke-virtual {v5, v6}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, secA:Ljava/lang/String;
    iget-object v6, p0, Lcom/sprint/smps/activities/ForgotPassword$2;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    iget-object v5, p0, Lcom/sprint/smps/activities/ForgotPassword$2;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    const v7, 0x7f080025

    invoke-virtual {v5, v7}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sprint/smps/activities/ForgotPassword;->getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/sprint/smps/activities/ForgotPassword;->access$0(Lcom/sprint/smps/activities/ForgotPassword;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, questionId:Ljava/lang/String;
    sget-object v5, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-interface {v5, v0, v1, v2, v4}, Lcom/sprint/smps/service/SMPSService;->resetSMPSPINEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v3

    .line 213
    .local v3, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v3, :cond_6f

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 215
    invoke-static {}, Lcom/sprint/smps/activities/ForgotPassword;->access$1()Lcom/sprint/smps/activities/ForgotPassword;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sprint/smps/activities/ForgotPassword;->removeDialog(I)V

    .line 227
    :goto_6e
    return-void

    .line 219
    :cond_6f
    if-eqz v3, :cond_ae

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_ae

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getErrorDesc()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_ae

    .line 220
    iget-object v5, p0, Lcom/sprint/smps/activities/ForgotPassword$2;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getErrorDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/sprint/smps/activities/ForgotPassword;->errorMsg:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sprint/smps/activities/ForgotPassword;->access$2(Lcom/sprint/smps/activities/ForgotPassword;Ljava/lang/String;)V

    .line 224
    :goto_a1
    iget-object v5, p0, Lcom/sprint/smps/activities/ForgotPassword$2;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    #setter for: Lcom/sprint/smps/activities/ForgotPassword;->successful:Z
    invoke-static {v5, v8}, Lcom/sprint/smps/activities/ForgotPassword;->access$3(Lcom/sprint/smps/activities/ForgotPassword;Z)V

    .line 225
    invoke-static {}, Lcom/sprint/smps/activities/ForgotPassword;->access$1()Lcom/sprint/smps/activities/ForgotPassword;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sprint/smps/activities/ForgotPassword;->removeDialog(I)V

    goto :goto_6e

    .line 222
    :cond_ae
    iget-object v5, p0, Lcom/sprint/smps/activities/ForgotPassword$2;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    const-string v6, "Unable to process change PIN request."

    #setter for: Lcom/sprint/smps/activities/ForgotPassword;->errorMsg:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sprint/smps/activities/ForgotPassword;->access$2(Lcom/sprint/smps/activities/ForgotPassword;Ljava/lang/String;)V

    goto :goto_a1
.end method
