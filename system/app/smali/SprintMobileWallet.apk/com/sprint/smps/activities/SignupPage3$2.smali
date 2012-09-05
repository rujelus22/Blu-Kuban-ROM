.class Lcom/sprint/smps/activities/SignupPage3$2;
.super Ljava/lang/Object;
.source "SignupPage3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/SignupPage3;->signup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/SignupPage3;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/SignupPage3;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/SignupPage3$2;->this$0:Lcom/sprint/smps/activities/SignupPage3;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 229
    new-instance v18, Ljava/util/Hashtable;

    invoke-direct/range {v18 .. v18}, Ljava/util/Hashtable;-><init>()V

    .line 230
    .local v18, questionAnswers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/smps/activities/SignupPage3$2;->this$0:Lcom/sprint/smps/activities/SignupPage3;

    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityQuestion1"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/sprint/smps/activities/SignupPage3;->getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/sprint/smps/activities/SignupPage3;->access$0(Lcom/sprint/smps/activities/SignupPage3;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityAnswer1"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/smps/activities/SignupPage3$2;->this$0:Lcom/sprint/smps/activities/SignupPage3;

    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityQuestion2"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/sprint/smps/activities/SignupPage3;->getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/sprint/smps/activities/SignupPage3;->access$0(Lcom/sprint/smps/activities/SignupPage3;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityAnswer2"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/smps/activities/SignupPage3$2;->this$0:Lcom/sprint/smps/activities/SignupPage3;

    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityQuestion3"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/sprint/smps/activities/SignupPage3;->getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/sprint/smps/activities/SignupPage3;->access$0(Lcom/sprint/smps/activities/SignupPage3;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v4, "securityAnswer3"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v2, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    .line 235
    sget-object v3, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v4, "mdn"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 236
    sget-object v4, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    sget-object v5, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v6, "firstName"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 238
    sget-object v6, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v7, "lastName"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 239
    sget-object v7, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v8, "pin1"

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 240
    sget-object v8, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v9, "paymentCardNumber"

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 241
    sget-object v9, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v10, "cvvNumber"

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 242
    sget-object v10, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v11, "nameOnCard"

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 243
    sget-object v11, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v12, "street"

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 244
    sget-object v12, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v13, "city"

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 245
    sget-object v13, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v14, "state"

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 246
    sget-object v14, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v15, "zipCode"

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 247
    sget-object v15, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v16, "month"

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 248
    sget-object v16, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v17, "year"

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 249
    sget-object v17, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v22, "acctNickName"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 234
    invoke-interface/range {v2 .. v18}, Lcom/sprint/smps/service/SMPSService;->createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v20

    .line 254
    .local v20, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v20, :cond_1a3

    invoke-virtual/range {v20 .. v20}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a3

    .line 256
    invoke-static {}, Lcom/sprint/smps/activities/SignupPage3;->access$1()Lcom/sprint/smps/activities/SignupPage3;

    move-result-object v2

    const v3, 0x7f080047

    const-class v4, Lcom/sprint/smps/activities/Login;

    invoke-static {v2, v3, v4}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v19

    .line 257
    .local v19, intent:Landroid/content/Intent;
    if-eqz v19, :cond_12e

    invoke-static {}, Lcom/sprint/smps/activities/SignupPage3;->access$1()Lcom/sprint/smps/activities/SignupPage3;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sprint/smps/activities/SignupPage3;->startActivity(Landroid/content/Intent;)V

    .line 259
    :cond_12e
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v21, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Type"

    invoke-static {}, Lcom/sprint/smps/activities/SignupPage3;->access$1()Lcom/sprint/smps/activities/SignupPage3;

    move-result-object v4

    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v5, "paymentCardNumber"

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/sprint/smps/activities/SignupPage3;->getCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v3, "City"

    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v4, "city"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v3, "State"

    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v4, "state"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v3, "Zip Code"

    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v4, "zipCode"

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v2, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v3, "Signup Page 3"

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/smps/activities/SignupPage3$2;->this$0:Lcom/sprint/smps/activities/SignupPage3;

    const/4 v3, 0x1

    #setter for: Lcom/sprint/smps/activities/SignupPage3;->signedup:Z
    invoke-static {v2, v3}, Lcom/sprint/smps/activities/SignupPage3;->access$2(Lcom/sprint/smps/activities/SignupPage3;Z)V

    .line 267
    sget-object v2, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 268
    const-string v2, "Welcome"

    invoke-static {v2}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/sprint/smps/activities/SignupPage3;->access$1()Lcom/sprint/smps/activities/SignupPage3;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/SignupPage3;->removeDialog(I)V

    .line 276
    .end local v19           #intent:Landroid/content/Intent;
    .end local v21           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1a2
    return-void

    .line 273
    :cond_1a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/smps/activities/SignupPage3$2;->this$0:Lcom/sprint/smps/activities/SignupPage3;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/sprint/smps/service/ClientResponse;->getErrorDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sprint/smps/activities/SignupPage3;->errorMsg:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sprint/smps/activities/SignupPage3;->access$3(Lcom/sprint/smps/activities/SignupPage3;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/sprint/smps/activities/SignupPage3;->access$1()Lcom/sprint/smps/activities/SignupPage3;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/SignupPage3;->removeDialog(I)V

    goto :goto_1a2
.end method
