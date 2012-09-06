.class public Lcom/google/android/apps/plus/content/EsAudienceData;
.super Ljava/lang/Object;
.source "EsAudienceData.java"


# direct methods
.method public static processSuggestionsResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "response"

    .prologue
    .line 29
    const-string v9, "EsConversationsData"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 30
    const-string v9, "EsConversationsData"

    const-string v10, "processSuggestionsResponse"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_10
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 35
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 37
    :try_start_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v4, participantIds:Ljava/lang/StringBuilder;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 39
    .local v8, values:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 40
    .local v5, sequence:I
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getSuggestionList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    .line 41
    .local v7, suggestion:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->getSuggestedUserList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v6, v5

    .end local v5           #sequence:I
    .local v6, sequence:I
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 42
    .local v3, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    if-lez v6, :cond_56

    .line 43
    const/16 v9, 0x2c

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    :cond_56
    const-string v9, "\'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 47
    const-string v9, "full_name"

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v9, "first_name"

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v9, "participant_id"

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v9, "sequence"

    add-int/lit8 v5, v6, 0x1

    .end local v6           #sequence:I
    .restart local v5       #sequence:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v9, "hangout_suggestions"

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v0, v9, v10, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move v6, v5

    .end local v5           #sequence:I
    .restart local v6       #sequence:I
    goto :goto_43

    .end local v3           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_9b
    move v5, v6

    .end local v6           #sequence:I
    .restart local v5       #sequence:I
    goto :goto_2e

    .line 57
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #suggestion:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    :cond_9d
    const-string v9, "hangout_suggestions"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "participant_id NOT IN ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c3
    .catchall {:try_start_1b .. :try_end_c3} :catchall_c7

    .line 63
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 65
    return-void

    .line 63
    .end local v4           #participantIds:Ljava/lang/StringBuilder;
    .end local v5           #sequence:I
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_c7
    move-exception v9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9
.end method
