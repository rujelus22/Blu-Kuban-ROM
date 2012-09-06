.class public Lcom/google/android/apps/plus/phone/ParticipantHelper;
.super Ljava/lang/Object;
.source "ParticipantHelper.java"


# direct methods
.method public static inviteMoreParticipants(Landroid/app/Activity;Ljava/util/Collection;ZLcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 23
    .parameter "activity"
    .parameter
    .parameter "isGroup"
    .parameter "account"
    .parameter "fromHangoutTile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;Z",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, participantList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v11

    .line 31
    .local v11, audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 32
    .local v15, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v17

    .line 33
    .local v17, personBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v15}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v16

    .line 34
    .local v16, participantId:Ljava/lang/String;
    const-string v2, "g:"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 35
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 36
    .local v12, gaiaId:Ljava/lang/String;
    if-eqz v12, :cond_31

    .line 37
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 44
    .end local v12           #gaiaId:Ljava/lang/String;
    :cond_31
    :goto_31
    invoke-virtual {v15}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 45
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_8

    .line 39
    :cond_42
    const-string v2, "e:"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 40
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_31

    .line 41
    :cond_59
    const-string v2, "p:"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 42
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_31

    .line 47
    .end local v15           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v16           #participantId:Ljava/lang/String;
    .end local v17           #personBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :cond_6b
    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v5

    .line 48
    .local v5, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    if-eqz p2, :cond_8e

    .line 49
    const v2, 0x7f0802d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v10}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;

    move-result-object v14

    .line 54
    .local v14, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    :goto_8d
    return-void

    .line 56
    .end local v14           #intent:Landroid/content/Intent;
    :cond_8e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v14

    .line 58
    .restart local v14       #intent:Landroid/content/Intent;
    if-eqz p4, :cond_a3

    .line 59
    const-string v2, "tile"

    const-class v3, Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :cond_a3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_8d
.end method
