.class Lcom/sprint/smps/activities/Profile$2;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/Profile;->saveProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/Profile;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/Profile;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 209
    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    const v3, 0x7f080001

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, firstName:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    const v3, 0x7f080002

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, lastName:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    const v3, 0x7f080037

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, emailAddress:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    const v4, 0x7f080038

    invoke-virtual {v0, v4}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/sprint/smps/activities/Profile;->getPaymentKey(Ljava/lang/String;)Lcom/sprint/smps/pojo/PaymentAccount;
    invoke-static {v3, v0}, Lcom/sprint/smps/activities/Profile;->access$0(Lcom/sprint/smps/activities/Profile;Ljava/lang/String;)Lcom/sprint/smps/pojo/PaymentAccount;

    move-result-object v9

    .line 213
    .local v9, defaultCard:Lcom/sprint/smps/pojo/PaymentAccount;
    iget-object v3, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    const v4, 0x7f080039

    invoke-virtual {v0, v4}, Lcom/sprint/smps/activities/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/sprint/smps/activities/Profile;->getAddressKey(Ljava/lang/String;)Lcom/sprint/smps/pojo/Address;
    invoke-static {v3, v0}, Lcom/sprint/smps/activities/Profile;->access$1(Lcom/sprint/smps/activities/Profile;Ljava/lang/String;)Lcom/sprint/smps/pojo/Address;

    move-result-object v8

    .line 216
    .local v8, defaultAddr:Lcom/sprint/smps/pojo/Address;
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    .line 219
    sget-object v3, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/User;->getStreet1()Ljava/lang/String;

    move-result-object v3

    .line 220
    sget-object v4, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v4}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sprint/smps/pojo/User;->getCity()Ljava/lang/String;

    move-result-object v4

    .line 221
    sget-object v5, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v5}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getState()Ljava/lang/String;

    move-result-object v5

    .line 222
    sget-object v6, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v6}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sprint/smps/pojo/User;->getZip()Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-interface/range {v0 .. v7}, Lcom/sprint/smps/service/SMPSService;->updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v10

    .line 224
    .local v10, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v10, :cond_a4

    invoke-virtual {v10}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 226
    :cond_a4
    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    #setter for: Lcom/sprint/smps/activities/Profile;->successful:Z
    invoke-static {v0, v11}, Lcom/sprint/smps/activities/Profile;->access$2(Lcom/sprint/smps/activities/Profile;Z)V

    .line 227
    invoke-static {}, Lcom/sprint/smps/activities/Profile;->access$3()Lcom/sprint/smps/activities/Profile;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sprint/smps/activities/Profile;->removeDialog(I)V

    .line 252
    :cond_b0
    :goto_b0
    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    #calls: Lcom/sprint/smps/activities/Profile;->setDefaultPayment(Lcom/sprint/smps/pojo/PaymentAccount;)V
    invoke-static {v0, v9}, Lcom/sprint/smps/activities/Profile;->access$4(Lcom/sprint/smps/activities/Profile;Lcom/sprint/smps/pojo/PaymentAccount;)V

    .line 253
    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    #calls: Lcom/sprint/smps/activities/Profile;->setDefaultAddress(Lcom/sprint/smps/pojo/Address;)V
    invoke-static {v0, v8}, Lcom/sprint/smps/activities/Profile;->access$5(Lcom/sprint/smps/activities/Profile;Lcom/sprint/smps/pojo/Address;)V

    .line 255
    invoke-static {}, Lcom/sprint/smps/activities/Profile;->access$3()Lcom/sprint/smps/activities/Profile;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sprint/smps/activities/Profile;->removeDialog(I)V

    .line 256
    return-void

    .line 231
    :cond_c2
    sget-object v0, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/pojo/User;->setFirstName(Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sprint/smps/pojo/User;->setLastName(Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sprint/smps/pojo/User;->setEmailAddress(Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-virtual {v9}, Lcom/sprint/smps/pojo/PaymentAccount;->getPaKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sprint/smps/service/SMPSService;->setDefaultPayment(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v10

    .line 236
    if-eqz v10, :cond_f5

    invoke-virtual {v10}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 238
    :cond_f5
    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    #setter for: Lcom/sprint/smps/activities/Profile;->successful:Z
    invoke-static {v0, v11}, Lcom/sprint/smps/activities/Profile;->access$2(Lcom/sprint/smps/activities/Profile;Z)V

    .line 239
    invoke-static {}, Lcom/sprint/smps/activities/Profile;->access$3()Lcom/sprint/smps/activities/Profile;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sprint/smps/activities/Profile;->removeDialog(I)V

    goto :goto_b0

    .line 243
    :cond_102
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-virtual {v8}, Lcom/sprint/smps/pojo/Address;->getAddressKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sprint/smps/service/SMPSService;->setDefaultAddress(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v10

    .line 244
    if-eqz v10, :cond_11a

    invoke-virtual {v10}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 246
    :cond_11a
    iget-object v0, p0, Lcom/sprint/smps/activities/Profile$2;->this$0:Lcom/sprint/smps/activities/Profile;

    #setter for: Lcom/sprint/smps/activities/Profile;->successful:Z
    invoke-static {v0, v11}, Lcom/sprint/smps/activities/Profile;->access$2(Lcom/sprint/smps/activities/Profile;Z)V

    .line 247
    invoke-static {}, Lcom/sprint/smps/activities/Profile;->access$3()Lcom/sprint/smps/activities/Profile;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sprint/smps/activities/Profile;->removeDialog(I)V

    goto :goto_b0
.end method
