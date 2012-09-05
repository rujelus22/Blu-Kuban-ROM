.class Lcom/sprint/smps/activities/ChangePin$2;
.super Ljava/lang/Object;
.source "ChangePin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ChangePin;->changePin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ChangePin;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ChangePin;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ChangePin$2;->this$0:Lcom/sprint/smps/activities/ChangePin;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 172
    iget-object v4, p0, Lcom/sprint/smps/activities/ChangePin$2;->this$0:Lcom/sprint/smps/activities/ChangePin;

    const v5, 0x7f080018

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/ChangePin;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, currentPin:Ljava/lang/String;
    iget-object v4, p0, Lcom/sprint/smps/activities/ChangePin$2;->this$0:Lcom/sprint/smps/activities/ChangePin;

    const v5, 0x7f080019

    invoke-virtual {v4, v5}, Lcom/sprint/smps/activities/ChangePin;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, newPin:Ljava/lang/String;
    sget-object v4, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-interface {v4, v1, v0}, Lcom/sprint/smps/service/SMPSService;->changePIN(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    .line 176
    .local v2, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v2, :cond_56

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 178
    invoke-static {}, Lcom/sprint/smps/activities/ChangePin;->access$0()Lcom/sprint/smps/activities/ChangePin;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sprint/smps/activities/ChangePin;->removeDialog(I)V

    .line 180
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v3, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Changed"

    const-string v5, "true"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v4, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v5, "Change Pin"

    invoke-virtual {v4, v5, v3}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 189
    .end local v3           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_55
    return-void

    .line 186
    :cond_56
    iget-object v4, p0, Lcom/sprint/smps/activities/ChangePin$2;->this$0:Lcom/sprint/smps/activities/ChangePin;

    #setter for: Lcom/sprint/smps/activities/ChangePin;->successful:Z
    invoke-static {v4, v6}, Lcom/sprint/smps/activities/ChangePin;->access$1(Lcom/sprint/smps/activities/ChangePin;Z)V

    .line 187
    invoke-static {}, Lcom/sprint/smps/activities/ChangePin;->access$0()Lcom/sprint/smps/activities/ChangePin;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sprint/smps/activities/ChangePin;->removeDialog(I)V

    goto :goto_55
.end method
