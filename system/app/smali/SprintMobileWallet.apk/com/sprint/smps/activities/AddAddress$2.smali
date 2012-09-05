.class Lcom/sprint/smps/activities/AddAddress$2;
.super Ljava/lang/Object;
.source "AddAddress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/AddAddress;->addAddress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/AddAddress;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AddAddress;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AddAddress$2;->this$0:Lcom/sprint/smps/activities/AddAddress;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 170
    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress$2;->this$0:Lcom/sprint/smps/activities/AddAddress;

    const v9, 0x7f080001

    invoke-virtual {v0, v9}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, firstName:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress$2;->this$0:Lcom/sprint/smps/activities/AddAddress;

    const v9, 0x7f080002

    invoke-virtual {v0, v9}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, lastName:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress$2;->this$0:Lcom/sprint/smps/activities/AddAddress;

    const v9, 0x7f080003

    invoke-virtual {v0, v9}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, street:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress$2;->this$0:Lcom/sprint/smps/activities/AddAddress;

    const v9, 0x7f080004

    invoke-virtual {v0, v9}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, city:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress$2;->this$0:Lcom/sprint/smps/activities/AddAddress;

    const v9, 0x7f080005

    invoke-virtual {v0, v9}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, state:Ljava/lang/String;
    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress$2;->this$0:Lcom/sprint/smps/activities/AddAddress;

    const v9, 0x7f080006

    invoke-virtual {v0, v9}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, zipcode:Ljava/lang/String;
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-interface/range {v0 .. v6}, Lcom/sprint/smps/service/SMPSService;->addNewAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v7

    .line 178
    .local v7, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v7, :cond_8d

    invoke-virtual {v7}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {v7}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v9, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 179
    :cond_8d
    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress$2;->this$0:Lcom/sprint/smps/activities/AddAddress;

    #setter for: Lcom/sprint/smps/activities/AddAddress;->successful:Z
    invoke-static {v0, v10}, Lcom/sprint/smps/activities/AddAddress;->access$0(Lcom/sprint/smps/activities/AddAddress;Z)V

    .line 189
    :goto_92
    invoke-static {}, Lcom/sprint/smps/activities/AddAddress;->access$1()Lcom/sprint/smps/activities/AddAddress;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sprint/smps/activities/AddAddress;->removeDialog(I)V

    .line 190
    return-void

    .line 182
    :cond_9a
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v8, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "City"

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "State"

    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "Zip Code"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v9, "Add Address"

    invoke-virtual {v0, v9, v8}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_92
.end method
