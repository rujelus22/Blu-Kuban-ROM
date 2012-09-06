.class public Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;
.super Ljava/lang/Object;
.source "ParticipantUtils.java"


# direct methods
.method public static createAudienceFromPerson(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 5
    .parameter "personId"
    .parameter "personName"

    .prologue
    .line 200
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 201
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v1

    .line 202
    .local v1, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {v1, p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 203
    const-string v2, "e:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 204
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 210
    :goto_1b
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 211
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    return-object v2

    .line 205
    :cond_23
    const-string v2, "p:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 206
    invoke-virtual {v1, p0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_1b

    .line 208
    :cond_2f
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_1b
.end method

.method public static getParticipantIdFromPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Ljava/lang/String;
    .registers 6
    .parameter "person"

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, participantId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 180
    .local v1, gaiaId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasFocusObfuscatedId()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_c
    if-eqz v1, :cond_22

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    :cond_21
    :goto_21
    return-object v2

    .line 186
    :cond_22
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->hasEmail()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 189
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, email:Ljava/lang/String;
    const-string v3, "p:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    .line 193
    :cond_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21
.end method

.method public static getParticipantListFromAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "audience"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 39
    .local v15, participantTable:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v14, participantList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v17

    .line 42
    .local v17, personList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 43
    .local v16, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->makeParticipantFromPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v13

    .line 44
    .local v13, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    if-eqz v13, :cond_12

    .line 45
    invoke-virtual {v13}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 46
    invoke-virtual {v13}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 52
    .end local v13           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v16           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_39
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v9

    .line 53
    .local v9, circleList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_41
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 54
    .local v8, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    const/4 v10, 0x0

    .line 56
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_4e
    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "person_id"

    aput-object v2, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->getPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 58
    :cond_6a
    :goto_6a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 59
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 60
    .local v11, firstName:Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 61
    .local v18, words:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v1, v0

    if-lez v1, :cond_83

    .line 62
    const/4 v1, 0x0

    aget-object v11, v18, v1

    .line 64
    :cond_83
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v13

    .line 69
    .restart local v13       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v13}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 70
    invoke-virtual {v13}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b5
    .catchall {:try_start_4e .. :try_end_b5} :catchall_b6

    goto :goto_6a

    .line 75
    .end local v11           #firstName:Ljava/lang/String;
    .end local v13           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v18           #words:[Ljava/lang/String;
    :catchall_b6
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_bb
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 78
    .end local v8           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_bf
    return-object v14
.end method

.method public static makeParticipantFromPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 7
    .parameter "person"

    .prologue
    .line 138
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->getParticipantIdFromPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, participantId:Ljava/lang/String;
    if-eqz v2, :cond_2f

    .line 140
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, firstName:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, words:[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_16

    .line 143
    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 145
    :cond_16
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    .line 152
    .end local v0           #firstName:Ljava/lang/String;
    .end local v3           #words:[Ljava/lang/String;
    :goto_2e
    return-object v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public static makePersonFromParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 5
    .parameter "participant"

    .prologue
    .line 162
    if-eqz p0, :cond_33

    .line 163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, participantId:Ljava/lang/String;
    const-string v2, "g:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 167
    :cond_14
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v2

    const-string v3, "g:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    .line 173
    .end local v0           #participantId:Ljava/lang/String;
    :goto_32
    return-object v1

    :cond_33
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public static stripParticipantIdPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "accountId"

    .prologue
    .line 82
    const-string v0, "g:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 83
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    .end local p0
    :cond_d
    return-object p0
.end method
