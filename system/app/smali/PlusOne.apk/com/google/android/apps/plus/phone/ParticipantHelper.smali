.class public Lcom/google/android/apps/plus/phone/ParticipantHelper;
.super Ljava/lang/Object;
.source "ParticipantHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inviteMoreParticipants(Landroid/app/Activity;Ljava/util/Collection;ZLcom/google/android/apps/plus/content/EsAccount;)V
    .registers 19
    .parameter "activity"
    .parameter
    .parameter "isGroup"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;Z",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, participantList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v9

    .line 29
    .local v9, audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 30
    .local v12, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v14

    .line 31
    .local v14, personBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v12}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v13

    .line 32
    .local v13, participantId:Ljava/lang/String;
    const-string v1, "g:"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 33
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v14, v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 39
    :cond_30
    :goto_30
    invoke-virtual {v12}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 40
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_8

    .line 34
    :cond_3f
    const-string v1, "e:"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 35
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_30

    .line 36
    :cond_50
    const-string v1, "p:"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 37
    invoke-virtual {v14, v13}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_30

    .line 42
    .end local v12           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v13           #participantId:Ljava/lang/String;
    .end local v14           #personBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :cond_5c
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    .line 43
    .local v4, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-eqz p2, :cond_79

    .line 44
    const v1, 0x7f070224

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object/from16 v2, p3

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZ)Landroid/content/Intent;

    move-result-object v11

    .line 49
    .local v11, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v11, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    :goto_78
    return-void

    .line 51
    .end local v11           #intent:Landroid/content/Intent;
    :cond_79
    move-object/from16 v0, p3

    invoke-static {p0, v0, v4}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v11

    .line 53
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_78
.end method
