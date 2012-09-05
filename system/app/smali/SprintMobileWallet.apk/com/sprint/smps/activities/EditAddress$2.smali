.class Lcom/sprint/smps/activities/EditAddress$2;
.super Ljava/lang/Object;
.source "EditAddress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/EditAddress;->saveAddress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/EditAddress;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/EditAddress;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/EditAddress$2;->this$0:Lcom/sprint/smps/activities/EditAddress;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const v7, 0x7f080005

    const/4 v6, 0x0

    .line 191
    sget-object v0, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    .line 192
    .local v0, address:Lcom/sprint/smps/pojo/Address;
    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$2;->this$0:Lcom/sprint/smps/activities/EditAddress;

    const v5, 0x7f080001

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sprint/smps/pojo/Address;->setFirstName(Ljava/lang/String;)V

    .line 193
    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$2;->this$0:Lcom/sprint/smps/activities/EditAddress;

    const v5, 0x7f080002

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sprint/smps/pojo/Address;->setLastName(Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$2;->this$0:Lcom/sprint/smps/activities/EditAddress;

    const v5, 0x7f080003

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sprint/smps/pojo/Address;->setStreet(Ljava/lang/String;)V

    .line 195
    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$2;->this$0:Lcom/sprint/smps/activities/EditAddress;

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sprint/smps/pojo/Address;->setCity(Ljava/lang/String;)V

    .line 196
    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$2;->this$0:Lcom/sprint/smps/activities/EditAddress;

    invoke-virtual {v4, v7}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sprint/smps/pojo/Address;->setStateName(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$2;->this$0:Lcom/sprint/smps/activities/EditAddress;

    invoke-virtual {v4}, Lcom/sprint/smps/activities/EditAddress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 199
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f050002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, stateAbbrs:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$2;->this$0:Lcom/sprint/smps/activities/EditAddress;

    invoke-virtual {v4, v7}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v4, v3, v4

    invoke-virtual {v0, v4}, Lcom/sprint/smps/pojo/Address;->setState(Ljava/lang/String;)V

    .line 202
    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$2;->this$0:Lcom/sprint/smps/activities/EditAddress;

    const v5, 0x7f080006

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/EditAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sprint/smps/pojo/Address;->setZipcode(Ljava/lang/String;)V

    .line 203
    sget-object v4, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    const-string v5, "true"

    invoke-interface {v4, v0, v5}, Lcom/sprint/smps/service/SMPSService;->updateAddress(Lcom/sprint/smps/pojo/Address;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    .line 205
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v2, :cond_c3

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 207
    invoke-static {}, Lcom/sprint/smps/activities/EditAddress;->access$0()Lcom/sprint/smps/activities/EditAddress;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sprint/smps/activities/EditAddress;->removeDialog(I)V

    .line 214
    :goto_c2
    return-void

    .line 211
    :cond_c3
    iget-object v4, p0, Lcom/sprint/smps/activities/EditAddress$2;->this$0:Lcom/sprint/smps/activities/EditAddress;

    #setter for: Lcom/sprint/smps/activities/EditAddress;->successful:Z
    invoke-static {v4, v6}, Lcom/sprint/smps/activities/EditAddress;->access$1(Lcom/sprint/smps/activities/EditAddress;Z)V

    .line 212
    invoke-static {}, Lcom/sprint/smps/activities/EditAddress;->access$0()Lcom/sprint/smps/activities/EditAddress;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sprint/smps/activities/EditAddress;->removeDialog(I)V

    goto :goto_c2
.end method
