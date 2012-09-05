.class Lcom/sprint/smps/activities/AddPaymentOption$3;
.super Ljava/lang/Object;
.source "AddPaymentOption.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/AddPaymentOption;->addPaymentAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/AddPaymentOption;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AddPaymentOption;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 279
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v13, 0x7f080008

    invoke-virtual {v0, v13}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 280
    .local v10, acctNickName:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v13, 0x7f080009

    invoke-virtual {v0, v13}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, street:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v13, 0x7f080004

    invoke-virtual {v0, v13}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, city:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v13, 0x7f080005

    invoke-virtual {v0, v13}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, state:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v13, 0x7f080006

    invoke-virtual {v0, v13}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, zipcode:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v13, 0x7f08000a

    invoke-virtual {v0, v13}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, cardNo:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v13, 0x7f08000b

    invoke-virtual {v0, v13}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, cvvNo:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v13, 0x7f08000c

    invoke-virtual {v0, v13}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, expMonth:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v13, 0x7f08000d

    invoke-virtual {v0, v13}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, expYear:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    const v13, 0x7f08000e

    invoke-virtual {v0, v13}, Lcom/sprint/smps/activities/AddPaymentOption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, nameOnCard:Ljava/lang/String;
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-interface/range {v0 .. v10}, Lcom/sprint/smps/service/SMPSService;->addUserPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v11

    .line 291
    .local v11, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v11, :cond_f8

    invoke-virtual {v11}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f8

    invoke-virtual {v11}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v13, "0"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 293
    invoke-static {}, Lcom/sprint/smps/activities/AddPaymentOption;->access$0()Lcom/sprint/smps/activities/AddPaymentOption;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/sprint/smps/activities/AddPaymentOption;->removeDialog(I)V

    .line 295
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v12, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Type"

    iget-object v13, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    invoke-virtual {v13, v1}, Lcom/sprint/smps/activities/AddPaymentOption;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v13, "Add Payment Option"

    invoke-virtual {v0, v13, v12}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 304
    .end local v12           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_f7
    return-void

    .line 301
    :cond_f8
    iget-object v0, p0, Lcom/sprint/smps/activities/AddPaymentOption$3;->this$0:Lcom/sprint/smps/activities/AddPaymentOption;

    #setter for: Lcom/sprint/smps/activities/AddPaymentOption;->successful:Z
    invoke-static {v0, v14}, Lcom/sprint/smps/activities/AddPaymentOption;->access$1(Lcom/sprint/smps/activities/AddPaymentOption;Z)V

    .line 302
    invoke-static {}, Lcom/sprint/smps/activities/AddPaymentOption;->access$0()Lcom/sprint/smps/activities/AddPaymentOption;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/sprint/smps/activities/AddPaymentOption;->removeDialog(I)V

    goto :goto_f7
.end method
