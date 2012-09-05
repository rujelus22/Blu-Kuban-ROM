.class public Lcom/google/android/apps/plus/content/EsConversationsData;
.super Ljava/lang/Object;
.source "EsConversationsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/content/EsConversationsData$2;
    }
.end annotation


# static fields
.field private static final sConversationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 213
    new-instance v0, Lcom/google/android/apps/plus/content/EsConversationsData$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/content/EsConversationsData$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsConversationsData;->sConversationComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    return-void
.end method

.method public static acceptConversationLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2766
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2767
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptConversationLocally conversationRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 2772
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2774
    :try_start_2c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2775
    const-string v1, "is_pending_accept"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2776
    const-string v1, "conversations"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v6, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2780
    invoke-static {v6, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 2781
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->replyToInviteRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 2783
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    sget v5, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->MAX_EVENTS_PER_REQUEST:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getEventStream(Ljava/lang/String;JJI)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 2786
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_67
    .catchall {:try_start_2c .. :try_end_67} :catchall_6e

    .line 2788
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2790
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2791
    return-void

    .line 2788
    :catchall_6e
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static checkMessageSentLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)I
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x7

    const/4 v1, 0x3

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 2513
    const-string v0, "EsConversationsData"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2514
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMessageSentLocally messageRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :cond_24
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2518
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2524
    :try_start_2f
    const-string v1, "messages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "status"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5c
    .catchall {:try_start_2f .. :try_end_5c} :catchall_a7

    move-result-object v2

    .line 2529
    :try_start_5d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 2530
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2531
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_e0

    .line 2534
    :cond_70
    if-eqz v2, :cond_75

    .line 2535
    :try_start_72
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2538
    :cond_75
    invoke-static {v0, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryMessageStatus(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v5

    .line 2540
    if-eqz v5, :cond_7d

    if-ne v5, v10, :cond_b4

    .line 2542
    :cond_7d
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 2543
    const-string v1, "EsConversationsData"

    const-string v2, "sending again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    :cond_8d
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->sendMessageInDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;

    move v5, v9

    .line 2562
    :cond_97
    :goto_97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9a
    .catchall {:try_start_72 .. :try_end_9a} :catchall_af

    .line 2564
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2566
    if-eqz v8, :cond_a6

    .line 2567
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2569
    :cond_a6
    return v5

    .line 2534
    :catchall_a7
    move-exception v1

    move-object v2, v8

    :goto_a9
    if-eqz v2, :cond_ae

    .line 2535
    :try_start_ab
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2534
    :cond_ae
    throw v1
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_af

    .line 2564
    :catchall_af
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2549
    :cond_b4
    if-ne v5, v9, :cond_cf

    .line 2551
    :try_start_b6
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 2552
    const-string v1, "EsConversationsData"

    const-string v2, "giving up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :cond_c6
    const/16 v5, 0x8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    .line 2555
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateMessageStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V

    goto :goto_97

    .line 2558
    :cond_cf
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 2559
    const-string v1, "EsConversationsData"

    const-string v2, "message sent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_b6 .. :try_end_df} :catchall_af

    goto :goto_97

    .line 2534
    :catchall_e0
    move-exception v1

    goto :goto_a9
.end method

.method public static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3228
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3229
    const-string v0, "EsConversationsData"

    const-string v1, "cleanupData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    :cond_10
    const-string v0, "participants"

    const-string v1, "(SELECT COUNT(participant_id) FROM conversation_participants WHERE participants.participant_id=conversation_participants.participant_id)=0"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3241
    return-void
.end method

.method public static connectionStarted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3193
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3195
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3197
    :try_start_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3198
    const-string v2, "status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3199
    const-string v2, "messages"

    const-string v3, "status=0 OR status=1"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3203
    const-string v2, "status"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3204
    const-string v2, "messages"

    const-string v3, "status=7"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3207
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3208
    const-string v2, "key"

    const-string v3, "awaiting_conversation_list"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    const-string v2, "value"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3212
    const-string v2, "realtimechat_metadata"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 3215
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_53
    .catchall {:try_start_b .. :try_end_53} :catchall_57

    .line 3217
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3219
    return-void

    .line 3217
    :catchall_57
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static final convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I
    .registers 4
    .parameter

    .prologue
    .line 4839
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4840
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$Participant$Type:[I

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 4850
    const-string v0, "EsConversationsData"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4851
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown participant type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    return v0

    .line 4842
    :pswitch_3c
    const/4 v0, 0x1

    goto :goto_3b

    .line 4844
    :pswitch_3e
    const/4 v0, 0x2

    goto :goto_3b

    .line 4846
    :pswitch_40
    const/4 v0, 0x3

    goto :goto_3b

    .line 4848
    :pswitch_42
    const/4 v0, 0x4

    goto :goto_3b

    .line 4840
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3e
        :pswitch_40
        :pswitch_42
    .end packed-switch
.end method

.method public static final convertParticipantType(I)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;
    .registers 2
    .parameter "typeValue"

    .prologue
    .line 4859
    packed-switch p0, :pswitch_data_12

    .line 4869
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ANDROID:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    :goto_5
    return-object v0

    .line 4861
    :pswitch_6
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_5

    .line 4863
    :pswitch_9
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->SMS:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_5

    .line 4865
    :pswitch_c
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ANDROID:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_5

    .line 4867
    :pswitch_f
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->IPHONE:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_5

    .line 4859
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static createConversationLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;
    .registers 27
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2123
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2124
    const-string v3, "EsConversationsData"

    const-string v4, "createConversationLocally:"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    :cond_10
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2128
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2129
    const/4 v6, 0x0

    .line 2130
    const/16 v19, 0x0

    .line 2134
    :try_start_1e
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantList()Ljava/util/List;

    move-result-object v4

    .line 2135
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3c

    .line 2137
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryOneToOneConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 2142
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v4

    .line 2144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {v5}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2147
    if-nez v6, :cond_172

    .line 2148
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 2149
    const-string v4, "EsConversationsData"

    const-string v5, "Creating new conversation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 2152
    invoke-static/range {v3 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2154
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->ensureLocalParticipantExists(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2156
    if-eqz p4, :cond_16e

    .line 2157
    const/4 v4, 0x1

    .line 2158
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v6, v9}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    move-object v6, v5

    .line 2203
    :goto_98
    if-eqz p3, :cond_230

    .line 2205
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2206
    const-string v5, "message_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const-string v5, "conversation_id"

    invoke-virtual {v9, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2208
    const-string v5, "author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    const-string v5, "text"

    move-object/from16 v0, p3

    invoke-virtual {v9, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const-string v5, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2211
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2212
    const-string v4, "timestamp"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2213
    const-string v4, "notification_seen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2214
    const-string v4, "messages"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2218
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 2219
    const-string v4, "is_visible"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2220
    const-string v4, "latest_message_timestamp"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2221
    const-string v4, "latest_message_author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    const-string v4, "latest_message_text"

    move-object/from16 v0, p3

    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    const-string v7, "latest_message_image_url"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    const-string v4, "latest_message_type"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2228
    const-string v4, "conversations"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v9, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v4, v5

    .line 2233
    :goto_142
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_145
    .catchall {:try_start_1e .. :try_end_145} :catchall_221

    .line 2235
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2237
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v7, v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2238
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2240
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2241
    const-string v5, "conversation_row_id"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2242
    const-string v5, "message_row_id"

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2243
    return-object v3

    .line 2161
    :cond_16e
    const/4 v4, 0x2

    move-object v6, v5

    goto/16 :goto_98

    .line 2164
    :cond_172
    :try_start_172
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2165
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Using existing conversation "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_193
    .catchall {:try_start_172 .. :try_end_193} :catchall_221

    .line 2168
    :cond_193
    const-wide/16 v17, 0x0

    .line 2169
    const/4 v5, 0x0

    .line 2171
    :try_start_196
    const-string v10, "conversations"

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "latest_message_timestamp"

    aput-object v9, v11, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v3

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2175
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_234

    .line 2176
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1cb
    .catchall {:try_start_196 .. :try_end_1cb} :catchall_226

    move-result-wide v9

    .line 2179
    :goto_1cc
    if-eqz v5, :cond_1d1

    .line 2180
    :try_start_1ce
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2183
    :cond_1d1
    cmp-long v4, v9, v7

    if-lez v4, :cond_1d9

    .line 2184
    const-wide/16 v4, 0x1

    add-long v7, v9, v4

    .line 2188
    :cond_1d9
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2189
    const-string v5, "is_pending_leave"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2190
    const-string v5, "conversations"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2193
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v5

    .line 2194
    if-eqz p4, :cond_22d

    .line 2195
    const/4 v4, 0x1

    .line 2196
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v5, v0, v1, v9, v10}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    :try_end_21f
    .catchall {:try_start_1ce .. :try_end_21f} :catchall_221

    goto/16 :goto_98

    .line 2235
    :catchall_221
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 2179
    :catchall_226
    move-exception v4

    if-eqz v5, :cond_22c

    .line 2180
    :try_start_229
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2179
    :cond_22c
    throw v4
    :try_end_22d
    .catchall {:try_start_229 .. :try_end_22d} :catchall_221

    .line 2199
    :cond_22d
    const/4 v4, 0x2

    goto/16 :goto_98

    :cond_230
    move-object/from16 v4, v19

    goto/16 :goto_142

    :cond_234
    move-wide/from16 v9, v17

    goto :goto_1cc
.end method

.method private static determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)I
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x3

    .line 4879
    sget-object v2, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$ChatMessage$ReceiverState:[I

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_26

    .line 4889
    const-string v0, "EsConversationsData"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4890
    const-string v0, "EsConversationsData"

    const-string v1, "ChatMessage\'s read state could not be determined."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    :cond_20
    const/4 v0, 0x0

    :goto_21
    :pswitch_21
    return v0

    .line 4883
    :pswitch_22
    const/4 v0, 0x4

    goto :goto_21

    :pswitch_24
    move v0, v1

    .line 4885
    goto :goto_21

    .line 4879
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_22
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method public static ensureLocalParticipantExists(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 3795
    .line 3797
    :try_start_1
    const-string v1, "participants"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "participant_id"

    aput-object v3, v2, v0

    const-string v3, "participant_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_48

    move-result-object v1

    .line 3802
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_42

    .line 3804
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3805
    const-string v2, "participant_id"

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    const-string v2, "full_name"

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3807
    const-string v2, "participants"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_50

    .line 3810
    :cond_42
    if-eqz v1, :cond_47

    .line 3811
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3814
    :cond_47
    return-void

    .line 3810
    :catchall_48
    move-exception v0

    move-object v1, v8

    :goto_4a
    if-eqz v1, :cond_4f

    .line 3811
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3810
    :cond_4f
    throw v0

    :catchall_50
    move-exception v0

    goto :goto_4a
.end method

.method private static final generateConversationName(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;JZ)Ljava/lang/String;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4645
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4646
    const/4 v8, 0x0

    .line 4648
    if-eqz p4, :cond_64

    :try_start_8
    const-string v7, "first_name ASC"

    .line 4651
    :goto_a
    if-eqz p4, :cond_67

    const-string v0, "first_name"

    .line 4654
    :goto_e
    const-string v1, "participants_view"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "participant_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "conversation_id=? AND active=1"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_6a

    move-result-object v1

    .line 4660
    const/4 v0, 0x1

    .line 4661
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 4662
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 4663
    if-nez v0, :cond_4b

    .line 4664
    const-string v2, ", "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4666
    :cond_4b
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4667
    if-eqz v2, :cond_2f

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 4668
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_62
    .catchall {:try_start_2f .. :try_end_62} :catchall_9d

    .line 4669
    const/4 v0, 0x0

    goto :goto_2f

    .line 4648
    :cond_64
    :try_start_64
    const-string v7, "full_name ASC"

    goto :goto_a

    .line 4651
    :cond_67
    const-string v0, "full_name"
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_6a

    goto :goto_e

    .line 4674
    :catchall_6a
    move-exception v0

    move-object v1, v8

    :goto_6c
    if-eqz v1, :cond_71

    .line 4675
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4674
    :cond_71
    throw v0

    :cond_72
    if-eqz v1, :cond_77

    .line 4675
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4678
    :cond_77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4679
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 4680
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generated name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4682
    :cond_9c
    return-object v0

    .line 4674
    :catchall_9d
    move-exception v0

    goto :goto_6c
.end method

.method private static insertConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4336
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantList()Ljava/util/List;

    move-result-object v1

    .line 4338
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4339
    const-string v3, "is_muted"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getMuted()Z

    move-result v0

    if-eqz v0, :cond_f2

    const/4 v0, 0x1

    :goto_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4341
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasType()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-result-object v0

    sget-object v3, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->GROUP:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    if-ne v0, v3, :cond_f5

    const/4 v4, 0x1

    .line 4343
    :goto_28
    const-string v0, "is_group"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4344
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasName()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 4345
    const-string v0, "name"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4350
    :goto_40
    const-string v0, "unread_count"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getUnreadCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4351
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasHidden()Z

    move-result v0

    if-eqz v0, :cond_ff

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getHidden()Z

    move-result v0

    if-eqz v0, :cond_ff

    const/4 v0, 0x1

    .line 4352
    :goto_5a
    const-string v3, "is_visible"

    if-eqz v0, :cond_102

    const/4 v0, 0x0

    :goto_5f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4353
    const-string v0, "is_pending_leave"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4354
    const-string v0, "is_awaiting_event_stream"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4355
    const-string v0, "latest_message_timestamp"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4356
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasFirstEventTimestamp()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 4357
    const-string v0, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 4358
    const-string v0, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting first event timestamp "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getFirstEventTimestamp()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    :cond_ae
    const-string v0, "first_event_timestamp"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getFirstEventTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4366
    :cond_bb
    if-nez v4, :cond_105

    .line 4367
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c1
    :goto_c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_105

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4368
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 4370
    const-string v3, "avatar_id"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4372
    const-string v3, "avatar_type"

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_c1

    .line 4339
    :cond_f2
    const/4 v0, 0x0

    goto/16 :goto_12

    .line 4341
    :cond_f5
    const/4 v4, 0x0

    goto/16 :goto_28

    .line 4348
    :cond_f8
    const-string v0, "name"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 4351
    :cond_ff
    const/4 v0, 0x0

    goto/16 :goto_5a

    .line 4352
    :cond_102
    const/4 v0, 0x1

    goto/16 :goto_5f

    .line 4377
    :cond_105
    const/4 v0, 0x0

    .line 4378
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasInviter()Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 4379
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getInviter()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    .line 4380
    const-string v1, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_135

    .line 4381
    const-string v1, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conversation inviter "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    :cond_135
    :goto_135
    if-eqz v0, :cond_140

    .line 4389
    const-string v1, "inviter_id"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4391
    :cond_140
    const-string v1, "is_pending_accept"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasNeedsAccept()Z

    move-result v0

    if-eqz v0, :cond_17e

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getNeedsAccept()Z

    move-result v0

    if-eqz v0, :cond_17e

    const/4 v0, 0x1

    :goto_14f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4394
    const-string v0, "conversation_id"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4395
    const-string v0, "conversations"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p2

    move-object v5, p3

    .line 4396
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->syncParticipants(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/wireless/realtimechat/proto/Client$ClientConversation;)V

    .line 4398
    return-wide v2

    .line 4384
    :cond_16d
    const-string v1, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_135

    .line 4385
    const-string v1, "EsConversationsData"

    const-string v3, "no inviter"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    .line 4391
    :cond_17e
    const/4 v0, 0x0

    goto :goto_14f
.end method

.method public static insertLocalPhotoLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2356
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2357
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLocalPhotoLocally conversationRowId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :cond_23
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 2360
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2362
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2365
    const/4 v14, 0x0

    .line 2366
    const/4 v13, 0x0

    .line 2367
    const-wide/16 v11, 0x0

    .line 2368
    const/4 v10, 0x0

    .line 2370
    :try_start_38
    const-string v3, "conversations"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "conversation_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "generated_name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "latest_message_timestamp"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6f
    .catchall {:try_start_38 .. :try_end_6f} :catchall_15f

    move-result-object v4

    .line 2378
    :try_start_70
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_171

    .line 2379
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2380
    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2381
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 2382
    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2384
    :cond_8b
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_8f
    .catchall {:try_start_70 .. :try_end_8f} :catchall_16c

    move-result-wide v5

    .line 2387
    :goto_90
    if-eqz v4, :cond_95

    .line 2388
    :try_start_92
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2391
    :cond_95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 2392
    cmp-long v4, v8, v5

    if-gtz v4, :cond_16e

    .line 2393
    const-wide/16 v8, 0x1

    add-long v4, v5, v8

    .line 2396
    :goto_a4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "c:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x20

    invoke-static {v8}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2399
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2400
    const-string v9, "latest_message_image_url"

    move-object/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    const-string v9, "latest_message_author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    const-string v9, "latest_message_timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2404
    const-string v9, "conversations"

    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v2, v9, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2407
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 2408
    const-string v9, "message_id"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const-string v6, "conversation_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2410
    const-string v6, "author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    const-string v6, "status"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2412
    const-string v6, "type"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2413
    const-string v6, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2414
    const-string v4, "notification_seen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2415
    const-string v4, "image_url"

    move-object/from16 v0, p4

    invoke-virtual {v8, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    const-string v4, "messages"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2418
    const-string v5, "conversation_id"

    invoke-virtual {v15, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    const-string v5, "conversation_name"

    invoke-virtual {v15, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    const-string v3, "message_row_id"

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v15, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2421
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_155
    .catchall {:try_start_92 .. :try_end_155} :catchall_167

    .line 2423
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2425
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2426
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2427
    return-object v15

    .line 2387
    :catchall_15f
    move-exception v3

    move-object v4, v10

    :goto_161
    if-eqz v4, :cond_166

    .line 2388
    :try_start_163
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2387
    :cond_166
    throw v3
    :try_end_167
    .catchall {:try_start_163 .. :try_end_167} :catchall_167

    .line 2423
    :catchall_167
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2387
    :catchall_16c
    move-exception v3

    goto :goto_161

    :cond_16e
    move-wide v4, v8

    goto/16 :goto_a4

    :cond_171
    move-wide v5, v11

    move-object v3, v13

    move-object v7, v14

    goto/16 :goto_90
.end method

.method private static insertParticipant(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Data$Participant;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4044
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4045
    const-string v1, "participant_id"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4046
    const-string v1, "first_name"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4047
    const-string v1, "full_name"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4048
    const-string v1, "type"

    invoke-static {p5}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4050
    const-string v1, "participants"

    const-string v2, "participant_id=?"

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 4053
    if-nez v1, :cond_47

    .line 4054
    const-string v1, "participants"

    invoke-virtual {p0, v1, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4057
    :cond_47
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4058
    const-string v1, "conversation_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4059
    const-string v1, "participant_id"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4060
    const-string v1, "active"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4061
    const-string v1, "conversation_participants"

    invoke-virtual {p0, v1, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4063
    return-void
.end method

.method private static insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZZLjava/lang/String;IJ)J
    .registers 27
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4082
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 4083
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertSystemMessage  messageType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " senderId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updateLatest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    :cond_53
    invoke-static/range {p10 .. p11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 4091
    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryMessageRowId(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 4092
    const/4 v2, 0x5

    .line 4093
    if-eqz p6, :cond_61

    .line 4094
    const/4 v2, 0x4

    .line 4096
    :cond_61
    if-nez v4, :cond_180

    .line 4097
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 4098
    const-string v4, "message_id"

    invoke-virtual {v13, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4099
    const-string v3, "conversation_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4100
    const-string v3, "author_id"

    move-object/from16 v0, p8

    invoke-virtual {v13, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4101
    const-string v3, "text"

    move-object/from16 v0, p5

    invoke-virtual {v13, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4102
    const-string v3, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4103
    const-string v2, "type"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4104
    const-string v2, "timestamp"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4105
    const-string v3, "notification_seen"

    if-eqz p6, :cond_175

    const/4 v2, 0x0

    :goto_a4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4106
    const-string v2, "messages"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 4108
    if-eqz p7, :cond_170

    .line 4109
    const-wide/16 v11, 0x0

    .line 4110
    const/4 v10, 0x0

    .line 4112
    :try_start_bb
    const-string v3, "conversations"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "latest_message_timestamp"

    aput-object v5, v4, v2

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d8
    .catchall {:try_start_bb .. :try_end_d8} :catchall_178

    move-result-object v3

    .line 4117
    :try_start_d9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_187

    .line 4118
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_e3
    .catchall {:try_start_d9 .. :try_end_e3} :catchall_185

    move-result-wide v4

    .line 4121
    :goto_e4
    if-eqz v3, :cond_e9

    .line 4122
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4126
    :cond_e9
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 4127
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new message timestamp "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " conversation latest "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    :cond_116
    cmp-long v2, p10, v4

    if-ltz v2, :cond_170

    .line 4132
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 4133
    const-string v2, "EsConversationsData"

    const-string v3, "updating latest message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    :cond_12a
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 4136
    const-string v2, "is_visible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4137
    const-string v2, "latest_message_timestamp"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4138
    const-string v2, "latest_message_author_id"

    move-object/from16 v0, p8

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    const-string v2, "latest_message_text"

    move-object/from16 v0, p5

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    const-string v3, "latest_message_image_url"

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    const-string v2, "latest_message_type"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4142
    const-string v2, "conversations"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v2, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4147
    :cond_170
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4150
    :goto_174
    return-wide v2

    .line 4105
    :cond_175
    const/4 v2, 0x1

    goto/16 :goto_a4

    .line 4121
    :catchall_178
    move-exception v2

    move-object v3, v10

    :goto_17a
    if-eqz v3, :cond_17f

    .line 4122
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4121
    :cond_17f
    throw v2

    .line 4150
    :cond_180
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_174

    .line 4121
    :catchall_185
    move-exception v2

    goto :goto_17a

    :cond_187
    move-wide v4, v11

    goto/16 :goto_e4
.end method

.method public static inviteParticipantsLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;",
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 3071
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3072
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inviteParticipantsLocally  conversationRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    :cond_22
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3077
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3080
    :try_start_2d
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_83

    .line 3083
    :try_start_32
    const-string v1, "participants_view"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "participant_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conversation_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6c
    .catchall {:try_start_32 .. :try_end_6c} :catchall_c2

    move-result-object v2

    .line 3089
    :goto_6d
    :try_start_6d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 3090
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_7c

    goto :goto_6d

    .line 3093
    :catchall_7c
    move-exception v1

    :goto_7d
    if-eqz v2, :cond_82

    .line 3094
    :try_start_7f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3093
    :cond_82
    throw v1
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_83

    .line 3113
    :catchall_83
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 3093
    :cond_88
    if-eqz v2, :cond_8d

    .line 3094
    :try_start_8a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3099
    :cond_8d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3100
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_96
    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 3101
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 3102
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 3106
    :cond_b0
    invoke-static {v0, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v1

    .line 3108
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->inviteParticipants(Ljava/lang/String;Ljava/util/Collection;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 3111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_be
    .catchall {:try_start_8a .. :try_end_be} :catchall_83

    .line 3113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3115
    return-void

    .line 3093
    :catchall_c2
    move-exception v1

    move-object v2, v8

    goto :goto_7d
.end method

.method public static leaveConversationLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3128
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3129
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaveConversationLocally  conversationRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3134
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3136
    :try_start_2c
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 3138
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3139
    const-string v3, "is_pending_leave"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3140
    const-string v3, "latest_event_timestamp"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3141
    const-string v3, "earliest_event_timestamp"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3142
    const-string v3, "EsConversationsData"

    const-string v4, "updating latest event timestamp 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    const-string v3, "conversations"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3148
    const-string v2, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conversation_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3152
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->leaveConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 3154
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9e
    .catchall {:try_start_2c .. :try_end_9e} :catchall_a5

    .line 3156
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3158
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3159
    return-void

    .line 3156
    :catchall_a5
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static markAllNotificationsAsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3169
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3173
    :try_start_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3174
    const-string v2, "notification_seen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3175
    const-string v2, "messages"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3176
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_2b

    .line 3178
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3180
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3181
    return-void

    .line 3178
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static markConversationReadLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2582
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2583
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markConversationReadLocally conversationRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2587
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2589
    :try_start_2c
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2590
    const-string v1, "notification_seen"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2591
    const-string v1, "messages"

    const-string v2, "conversation_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2595
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 2596
    const-string v1, "unread_count"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2597
    const-string v1, "conversations"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2601
    invoke-static {v0, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    :try_end_6d
    .catchall {:try_start_2c .. :try_end_6d} :catchall_10a

    move-result-object v10

    .line 2603
    const/4 v8, 0x0

    .line 2605
    :try_start_6f
    const-string v1, "messages_view"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "(status=? OR status=?) AND author_id!=? AND conversation_id=?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ac
    .catchall {:try_start_6f .. :try_end_ac} :catchall_13f

    move-result-object v2

    .line 2618
    :try_start_ad
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 2619
    const-string v1, "status"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2621
    :goto_ba
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 2622
    const-string v1, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 2623
    const-string v1, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending read receipt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_e6
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2626
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2627
    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2628
    const/4 v7, 0x1

    if-ne v1, v7, :cond_10f

    .line 2629
    invoke-static {v10, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReadReceipt(Ljava/lang/String;J)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 2637
    :goto_ff
    invoke-virtual {p4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setShouldTriggerNotifications()V
    :try_end_102
    .catchall {:try_start_ad .. :try_end_102} :catchall_103

    goto :goto_ba

    .line 2640
    :catchall_103
    move-exception v1

    :goto_104
    if-eqz v2, :cond_109

    .line 2641
    :try_start_106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2640
    :cond_109
    throw v1
    :try_end_10a
    .catchall {:try_start_106 .. :try_end_10a} :catchall_10a

    .line 2647
    :catchall_10a
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2634
    :cond_10f
    :try_start_10f
    const-string v1, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_12c
    .catchall {:try_start_10f .. :try_end_12c} :catchall_103

    goto :goto_ff

    .line 2640
    :cond_12d
    if-eqz v2, :cond_132

    .line 2641
    :try_start_12f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2645
    :cond_132
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_135
    .catchall {:try_start_12f .. :try_end_135} :catchall_10a

    .line 2647
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2650
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2651
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2652
    return-void

    .line 2640
    :catchall_13f
    move-exception v1

    move-object v2, v8

    goto :goto_104
.end method

.method public static markNotificationsSeenLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2664
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2665
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markNotificationsSeenLocally conversationRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2671
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2673
    :try_start_2c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2674
    const-string v2, "notification_seen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2675
    const-string v2, "messages"

    const-string v3, "conversation_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2679
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_56

    .line 2681
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2683
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2684
    return-void

    .line 2681
    :catchall_56
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static markParticipantInactive(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 4017
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4018
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markParticipantInactive ConversationRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Participant id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    :cond_2c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4022
    const-string v1, "active"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4023
    const-string v1, "conversation_participants"

    const-string v2, "conversation_id=? AND participant_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4029
    return-void
.end method

.method public static notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4825
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4826
    const-string v0, "EsConversationsData"

    const-string v1, "NOTIFY CONVERSATIONS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4830
    return-void
.end method

.method public static notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4809
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4810
    const-string v0, "EsConversationsData"

    const-string v1, "NOTIFY MESSAGES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4814
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/content/EsProvider;->buildMessagesUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v0

    .line 4815
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4816
    return-void
.end method

.method private static notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4773
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4774
    const-string v0, "EsConversationsData"

    const-string v1, "NOTIFY ALL PARTICIPANTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4778
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    .line 4779
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4780
    return-void
.end method

.method public static notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4791
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4792
    const-string v0, "EsConversationsData"

    const-string v1, "NOTIFY PARTICIPANTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4796
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v0

    .line 4797
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4798
    return-void
.end method

.method public static processBunchCommand(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "command"
    .parameter "request"
    .parameter "operationState"

    .prologue
    const/4 v5, 0x5

    .line 100
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserCreationResponse()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 101
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v4

    invoke-static {p0, p1, v4, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processUserCreationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 168
    :cond_e
    :goto_e
    return-void

    .line 104
    :cond_f
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListResponse()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 105
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v4

    invoke-static {p0, p1, v4, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processConversationListResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto :goto_e

    .line 107
    :cond_1d
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSteamResponse()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 108
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v4

    invoke-static {p0, p1, v4, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processEventStreamResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto :goto_e

    .line 110
    :cond_2b
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationResponse()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 111
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v4

    invoke-static {p0, p1, v4, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processConversationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto :goto_e

    .line 113
    :cond_39
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessage()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 114
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v1

    .line 115
    .local v1, chatMessage:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v1, v4, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processSingleMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto :goto_e

    .line 117
    .end local v1           #chatMessage:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    :cond_4b
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceipt()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 118
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v2

    .line 119
    .local v2, receipt:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    invoke-static {p0, p1, v2, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processReceipt(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto :goto_e

    .line 120
    .end local v2           #receipt:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    :cond_59
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasMembershipChange()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 121
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    .line 122
    .local v0, change:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    const/4 v4, 0x0

    invoke-static {p0, p1, v0, v4, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMembershipChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto :goto_e

    .line 123
    .end local v0           #change:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    :cond_68
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGroupConversationRename()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 124
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v3

    .line 125
    .local v3, rename:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    invoke-static {p0, p1, v3, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processGroupConversationRename(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto :goto_e

    .line 127
    .end local v3           #rename:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    :cond_76
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInvalidateLocalCache()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 128
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v4

    invoke-static {p0, p1, v4, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processInvalidateLocalCache(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto :goto_e

    .line 130
    :cond_84
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteResponse()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 131
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v4

    invoke-static {p0, p1, v4, p3, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processInviteResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_e

    .line 133
    :cond_93
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsResponse()Z

    move-result v4

    if-nez v4, :cond_e

    .line 135
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationPreferenceResponse()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 136
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v4

    invoke-static {p0, p1, v4, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processConversationPreferenceResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_e

    .line 138
    :cond_a8
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationResponse()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 139
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v4

    invoke-static {p0, p1, v4, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->processLeaveConversationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    goto/16 :goto_e

    .line 141
    :cond_b7
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasMigration()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 142
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMigration(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Migration;)V

    goto/16 :goto_e

    .line 143
    :cond_c6
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresence()Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 144
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v4

    invoke-static {p0, p1, v4, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processPresence(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Presence;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_e

    .line 145
    :cond_d5
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTyping()Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 146
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processTyping(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Typing;)V

    goto/16 :goto_e

    .line 147
    :cond_e4
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresenceResponse()Z

    move-result v4

    if-nez v4, :cond_e

    .line 149
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTypingResponse()Z

    move-result v4

    if-nez v4, :cond_e

    .line 151
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEventResponse()Z

    move-result v4

    if-nez v4, :cond_e

    .line 153
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEvent()Z

    move-result v4

    if-eqz v4, :cond_105

    .line 154
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v4

    invoke-static {p0, p1, v4, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processTileEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_e

    .line 155
    :cond_105
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasError()Z

    move-result v4

    if-eqz v4, :cond_135

    .line 156
    const-string v4, "EsConversationsData"

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 157
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bunch server error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDetail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 159
    :cond_135
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingResponse()Z

    move-result v4

    if-eqz v4, :cond_14d

    .line 160
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 161
    const-string v4, "EsConversationsData"

    const-string v5, "Ping response"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 164
    :cond_14d
    const-string v4, "EsConversationsData"

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 165
    const-string v4, "EsConversationsData"

    const-string v5, "Unexpected message from bunch server"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method private static processConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1683
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v13

    .line 1685
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasConversationClientId()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1686
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getConversationClientId()Ljava/lang/String;

    move-result-object v1

    .line 1687
    move-object/from16 v0, p0

    invoke-static {v0, v1, v13}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    :cond_13
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 1690
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processConversation conversationId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conversationClientId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getConversationClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " participantCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPendingAccept: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getNeedsAccept()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getHidden()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inactiveParticipantCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getInactiveParticipantCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unreadCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getUnreadCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_8c
    const/4 v9, 0x0

    .line 1700
    const/4 v11, 0x0

    .line 1701
    const/4 v10, 0x0

    .line 1703
    :try_start_8f
    const-string v2, "conversations"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "is_pending_leave"

    aput-object v4, v3, v1

    const-string v4, "conversation_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v13, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ae
    .catchall {:try_start_8f .. :try_end_ae} :catchall_e4

    move-result-object v12

    .line 1709
    :try_start_af
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_446

    .line 1710
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1711
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_e2

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_c9
    .catchall {:try_start_af .. :try_end_c9} :catchall_442

    move-result v1

    if-eqz v1, :cond_e2

    const/4 v1, 0x1

    .line 1714
    :goto_cd
    if-eqz v12, :cond_d2

    .line 1715
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1718
    :cond_d2
    if-eqz v1, :cond_ec

    .line 1722
    invoke-static {v13}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->leaveConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 1723
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1860
    :goto_e1
    return-wide v1

    .line 1711
    :cond_e2
    const/4 v1, 0x0

    goto :goto_cd

    .line 1714
    :catchall_e4
    move-exception v1

    move-object v2, v9

    :goto_e6
    if-eqz v2, :cond_eb

    .line 1715
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1714
    :cond_eb
    throw v1

    .line 1725
    :cond_ec
    if-nez v7, :cond_1ea

    .line 1727
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 1728
    const-string v1, "EsConversationsData"

    const-string v2, " creating conversation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_fe
    const-wide/16 v5, 0x0

    .line 1731
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasLastPreviewEvent()Z

    move-result v1

    if-eqz v1, :cond_137

    .line 1732
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTimestamp()J

    move-result-wide v5

    .line 1733
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 1734
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last preview event timestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_137
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1738
    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v11, v1

    .line 1748
    :goto_148
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasLastPreviewEvent()Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 1749
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v1

    .line 1750
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasChatMessage()Z

    move-result v2

    if-eqz v2, :cond_21d

    .line 1751
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_168

    .line 1752
    const-string v2, "EsConversationsData"

    const-string v3, "Got ChatMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_168
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v4

    .line 1755
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v13

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->processPreviewMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 1834
    :cond_17c
    :goto_17c
    :try_start_17c
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "message_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "text"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "image_url"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryPendingMessages(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1839
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c3

    .line 1840
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pending messages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_1c3
    :goto_1c3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3f6

    .line 1843
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v13, v1, v2, v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    :try_end_1e2
    .catchall {:try_start_17c .. :try_end_1e2} :catchall_1e3

    goto :goto_1c3

    .line 1848
    :catchall_1e3
    move-exception v1

    if-eqz v12, :cond_1e9

    .line 1849
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1848
    :cond_1e9
    throw v1

    .line 1741
    :cond_1ea
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 1742
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updating conversation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_20b
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$ClientConversation;)V

    move-object v11, v7

    goto/16 :goto_148

    .line 1757
    :cond_21d
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasMembershipChange()Z

    move-result v2

    if-eqz v2, :cond_2c5

    .line 1758
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_233

    .line 1759
    const-string v2, "EsConversationsData"

    const-string v3, "Got MembershipChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_233
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v14

    .line 1762
    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getParticipantList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_23f
    :goto_23f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 1763
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasParticipantId()Z

    move-result v2

    if-eqz v2, :cond_23f

    .line 1766
    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->JOIN:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    if-ne v2, v3, :cond_23f

    .line 1767
    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1769
    if-eqz v2, :cond_23f

    .line 1770
    const v3, 0x7f0701a0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "</b>"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "</b>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1775
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getTimestamp()J

    move-result-wide v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v10}, Lcom/google/android/apps/plus/content/EsConversationsData;->updatePreviewSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_23f

    .line 1782
    :cond_2c5
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasGroupConversationRename()Z

    move-result v2

    if-eqz v2, :cond_34b

    .line 1783
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2db

    .line 1784
    const-string v2, "EsConversationsData"

    const-string v3, "Got GroupConversationRename"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_2db
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v1

    .line 1787
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1788
    if-eqz v2, :cond_17c

    .line 1789
    const v3, 0x7f07019e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "</b>"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<i>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getNewDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</i>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1794
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getTimestamp()J

    move-result-wide v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v10}, Lcom/google/android/apps/plus/content/EsConversationsData;->updatePreviewSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_17c

    .line 1799
    :cond_34b
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasTileEvent()Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 1800
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_361

    .line 1801
    const-string v2, "EsConversationsData"

    const-string v3, "Got TileEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_361
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v2

    .line 1804
    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "JOIN_HANGOUT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 1805
    const/4 v7, 0x0

    .line 1806
    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37a
    :goto_37a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3cb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    .line 1807
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AUTHOR_PROFILE_ID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_397

    .line 1808
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_37a

    .line 1810
    :cond_397
    const-string v4, "EsConversationsData"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_37a

    .line 1811
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unexpected data in join hangout tile event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37a

    .line 1816
    :cond_3cb
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFirstName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1817
    if-eqz v1, :cond_17c

    .line 1818
    const v3, 0x7f07019f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1822
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v8, 0x3

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTimestamp()J

    move-result-wide v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v10}, Lcom/google/android/apps/plus/content/EsConversationsData;->updatePreviewSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_17c

    .line 1848
    :cond_3f6
    if-eqz v12, :cond_3fb

    .line 1849
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1853
    :cond_3fb
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1854
    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1855
    const-string v2, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conversation_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1860
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto/16 :goto_e1

    .line 1714
    :catchall_442
    move-exception v1

    move-object v2, v12

    goto/16 :goto_e6

    :cond_446
    move v1, v10

    move-object v7, v11

    goto/16 :goto_cd
.end method

.method private static processConversationListResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 239
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processConversationListResponse count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getClientConversationCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_25
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 245
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getClientConversationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 326
    :goto_37
    return-void

    .line 248
    :cond_38
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 250
    :try_start_3b
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getClientConversationList()Ljava/util/List;

    move-result-object v4

    .line 253
    new-instance v15, Ljava/util/PriorityQueue;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sget-object v6, Lcom/google/android/apps/plus/content/EsConversationsData;->sConversationComparator:Ljava/util/Comparator;

    invoke-direct {v15, v5, v6}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 256
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v3, v0, v1, v4, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    .line 259
    invoke-virtual {v15, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_3b .. :try_end_66} :catchall_67

    goto :goto_4e

    .line 323
    :catchall_67
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 262
    :cond_6c
    :try_start_6c
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 263
    const-string v4, "is_awaiting_event_stream"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const/4 v4, 0x0

    .line 266
    const/16 v5, 0x19

    move v14, v4

    .line 268
    :goto_81
    const/16 v4, 0x28

    if-ge v14, v4, :cond_12e

    invoke-virtual {v15}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-object v11, v0
    :try_end_8d
    .catchall {:try_start_6c .. :try_end_8d} :catchall_67

    if-eqz v11, :cond_12e

    .line 270
    const/16 v4, 0x14

    if-lt v14, v4, :cond_16c

    .line 271
    const/16 v4, 0xa

    move v12, v4

    .line 273
    :goto_96
    const/4 v13, 0x0

    .line 275
    :try_start_97
    const-string v4, "conversations"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "latest_event_timestamp"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "latest_message_timestamp DESC"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_aa
    .catchall {:try_start_97 .. :try_end_aa} :catchall_126

    move-result-object v10

    .line 279
    :try_start_ab
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 280
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 281
    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_bf

    .line 282
    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 284
    :cond_bf
    invoke-virtual {v11}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    move v9, v12

    invoke-static/range {v4 .. v9}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getEventStream(Ljava/lang/String;JJI)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v4

    .line 286
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 287
    const-string v4, "EsConversationsData"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_108

    .line 288
    const-string v4, "EsConversationsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requesting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " events since "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_ab .. :try_end_108} :catchall_169

    .line 293
    :cond_108
    if-eqz v10, :cond_10d

    .line 294
    :try_start_10a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_10d
    const-string v4, "conversations"

    const-string v5, "conversation_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v11}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 300
    add-int/lit8 v4, v14, 0x1

    move v5, v12

    move v14, v4

    .line 301
    goto/16 :goto_81

    .line 293
    :catchall_126
    move-exception v4

    move-object v5, v13

    :goto_128
    if-eqz v5, :cond_12d

    .line 294
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_12d
    throw v4

    .line 304
    :cond_12e
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 305
    const-string v4, "key"

    const-string v5, "awaiting_conversation_list"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v4, "value"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string v4, "realtimechat_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 314
    const-string v4, "realtimechat_metadata"

    const-string v5, "key=\'requested_conversations_since\'"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->removeLeftConversations(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 321
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_161
    .catchall {:try_start_10a .. :try_end_161} :catchall_67

    .line 323
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 325
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_37

    .line 293
    :catchall_169
    move-exception v4

    move-object v5, v10

    goto :goto_128

    :cond_16c
    move v12, v5

    goto/16 :goto_96
.end method

.method private static processConversationPreferenceResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 966
    const-string v0, "EsConversationsData"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 967
    const-string v0, "EsConversationsData"

    const-string v1, "processConversationPreferenceResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_10
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    if-ne v0, v1, :cond_28

    .line 970
    const-string v0, "EsConversationsData"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 971
    const-string v0, "EsConversationsData"

    const-string v1, "Conversation preference set successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_27
    :goto_27
    return-void

    .line 974
    :cond_28
    const-string v0, "EsConversationsData"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 975
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set conversation preference with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private static processConversationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 27
    .parameter "context"
    .parameter "account"
    .parameter "response"
    .parameter "operationState"

    .prologue
    .line 581
    const-string v5, "EsConversationsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 582
    const-string v5, "EsConversationsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processConversationResponse conversationClientId: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getConversationClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_25
    const/16 v19, 0x0

    .line 586
    .local v19, conversationRowId:Ljava/lang/Long;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 588
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 590
    :try_start_32
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v18

    .line 591
    .local v18, conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v22

    .line 592
    .local v22, status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    sget-object v5, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v22

    if-ne v0, v5, :cond_e2

    .line 593
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasConversationClientId()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 594
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getConversationClientId()Ljava/lang/String;

    move-result-object v16

    .line 595
    .local v16, clientConversationId:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .end local v16           #clientConversationId:Ljava/lang/String;
    :cond_53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, p3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->processConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 601
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getParticipantErrorList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_6b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 602
    .local v7, error:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getCreatedAt()J

    move-result-wide v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v11}, Lcom/google/android/apps/plus/content/EsConversationsData;->processParticipantError(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;JJ)V
    :try_end_86
    .catchall {:try_start_32 .. :try_end_86} :catchall_87

    goto :goto_6b

    .line 639
    .end local v7           #error:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .end local v18           #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :catchall_87
    move-exception v5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 605
    .restart local v18       #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v22       #status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :cond_8c
    :try_start_8c
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasReceipt()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 606
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v13

    move-object v8, v4

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p3

    invoke-static/range {v8 .. v14}, Lcom/google/android/apps/plus/content/EsConversationsData;->processReceipt(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 609
    :cond_a4
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasRecentMessage()Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 610
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getRecentMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v8, v4

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v15, p3

    invoke-static/range {v8 .. v15}, Lcom/google/android/apps/plus/content/EsConversationsData;->processPreviewMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 637
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_c0
    :goto_c0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c3
    .catchall {:try_start_8c .. :try_end_c3} :catchall_87

    .line 639
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 641
    if-eqz v19, :cond_e1

    .line 642
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 643
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v6}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 644
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v6}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 646
    :cond_e1
    return-void

    .line 614
    :cond_e2
    :try_start_e2
    const-string v5, "EsConversationsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_105

    .line 615
    const-string v5, "EsConversationsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received conversation response error "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_105
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasConversationClientId()Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 618
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getConversationClientId()Ljava/lang/String;

    move-result-object v17

    .line 619
    .local v17, clientId:Ljava/lang/String;
    const/16 v20, 0x1

    .line 620
    .local v20, fatalErrorType:I
    sget-object v5, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_132

    .line 634
    :goto_11c
    :pswitch_11c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v4, v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversationErrorType(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;I)V
    :try_end_127
    .catchall {:try_start_e2 .. :try_end_127} :catchall_87

    goto :goto_c0

    .line 622
    :pswitch_128
    const/16 v20, 0x2

    .line 623
    goto :goto_11c

    .line 625
    :pswitch_12b
    const/16 v20, 0x3

    .line 626
    goto :goto_11c

    .line 628
    :pswitch_12e
    const/16 v20, 0x4

    .line 629
    goto :goto_11c

    .line 620
    nop

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_128
        :pswitch_12b
        :pswitch_12e
        :pswitch_11c
    .end packed-switch
.end method

.method private static processEventStreamResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 36
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 338
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processEventStreamResponse conversationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " earliest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEarliest()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " latest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getLatest()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " eventCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEventCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_4f
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 349
    const/16 v19, 0x0

    .line 350
    const/16 v18, 0x0

    .line 352
    :try_start_5e
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getConversationId()Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_145

    move-result-object v20

    .line 356
    const/4 v10, 0x0

    .line 358
    :try_start_63
    const-string v3, "conversations"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "earliest_event_timestamp"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "latest_event_timestamp"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "is_awaiting_older_events"

    aput-object v6, v4, v5

    const-string v5, "conversation_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8a
    .catchall {:try_start_63 .. :try_end_8a} :catchall_14a

    move-result-object v4

    .line 365
    :try_start_8b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 366
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 367
    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 368
    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 369
    const/4 v3, 0x3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_a8
    .catchall {:try_start_8b .. :try_end_a8} :catchall_446

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_11a

    const/4 v3, 0x1

    .line 378
    :goto_ad
    if-eqz v4, :cond_b2

    .line 379
    :try_start_af
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_b2
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 384
    const-string v4, "is_awaiting_event_stream"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEventCount()I

    move-result v4

    .line 387
    if-lez v4, :cond_3af

    .line 388
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEarliest()J

    move-result-wide v27

    .line 389
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getLatest()J

    move-result-wide v29

    .line 390
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 391
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentLatestEventTimestamp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " eventStreamEarliest "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v27

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_100
    cmp-long v4, v27, v22

    if-gez v4, :cond_152

    if-nez v3, :cond_152

    .line 397
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 398
    const-string v3, "EsConversationsData"

    const-string v4, "isAwaitingOlderEvents is blank, ignoring"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catchall {:try_start_af .. :try_end_116} :catchall_145

    .line 561
    :cond_116
    :goto_116
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 570
    :cond_119
    :goto_119
    return-void

    .line 369
    :cond_11a
    const/4 v3, 0x0

    goto :goto_ad

    .line 371
    :cond_11c
    :try_start_11c
    const-string v3, "EsConversationsData"

    const/4 v5, 0x5

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 372
    const-string v3, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventStream for unknown conversation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catchall {:try_start_11c .. :try_end_13f} :catchall_446

    .line 378
    :cond_13f
    if-eqz v4, :cond_116

    .line 379
    :try_start_141
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_144
    .catchall {:try_start_141 .. :try_end_144} :catchall_145

    goto :goto_116

    .line 561
    :catchall_145
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 378
    :catchall_14a
    move-exception v3

    move-object v4, v10

    :goto_14c
    if-eqz v4, :cond_151

    .line 379
    :try_start_14e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_151
    throw v3

    .line 403
    :cond_152
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEventList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_15a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d9

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 404
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTimestamp()J

    move-result-wide v4

    .line 405
    const-string v6, "EsConversationsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1a3

    .line 406
    const-string v6, "EsConversationsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event timestamp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " current conversation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1a3
    const/4 v8, 0x0

    .line 412
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasReceiverState()Z

    move-result v4

    if-eqz v4, :cond_1bb

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    move-result-object v4

    sget-object v5, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    if-eq v4, v5, :cond_1ba

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    move-result-object v4

    sget-object v5, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;->READ:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    if-ne v4, v5, :cond_1bb

    .line 415
    :cond_1ba
    const/4 v8, 0x1

    .line 418
    :cond_1bb
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasTimestamp()Z

    move-result v4

    if-eqz v4, :cond_1ca

    .line 422
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTimestamp()J

    move-result-wide v4

    .line 423
    cmp-long v6, v4, v24

    if-gtz v6, :cond_1fd

    .line 424
    const/4 v8, 0x1

    .line 434
    :cond_1ca
    :goto_1ca
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasChatMessage()Z

    move-result v4

    if-eqz v4, :cond_217

    .line 435
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 436
    const-string v4, "EsConversationsData"

    const-string v5, "Got ChatMessage"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1e0
    const/4 v10, 0x1

    .line 439
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v5

    .line 440
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, v20

    move-object/from16 v9, p3

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    move/from16 v3, v18

    move v4, v10

    :goto_1f7
    move/from16 v18, v3

    move/from16 v19, v4

    .line 475
    goto/16 :goto_15a

    .line 425
    :cond_1fd
    const-wide/16 v6, 0x0

    cmp-long v6, v24, v6

    if-nez v6, :cond_205

    .line 426
    const/4 v8, 0x1

    goto :goto_1ca

    .line 428
    :cond_205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    .line 429
    sub-long v4, v6, v4

    const-wide/32 v6, 0x1dd76000

    cmp-long v4, v4, v6

    if-lez v4, :cond_1ca

    .line 430
    const/4 v8, 0x1

    goto :goto_1ca

    .line 442
    :cond_217
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasReceipt()Z

    move-result v4

    if-eqz v4, :cond_243

    .line 443
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_22d

    .line 444
    const-string v4, "EsConversationsData"

    const-string v5, "Got Receipt"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_22d
    const/4 v9, 0x1

    .line 447
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->processReceipt(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    move/from16 v3, v18

    move v4, v9

    goto :goto_1f7

    .line 449
    :cond_243
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasMembershipChange()Z

    move-result v4

    if-eqz v4, :cond_26f

    .line 450
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_259

    .line 451
    const-string v4, "EsConversationsData"

    const-string v5, "Got MembershipChange"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_259
    const/4 v10, 0x1

    .line 454
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v9, p3

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMembershipChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$MembershipChange;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    move v3, v10

    move/from16 v4, v19

    goto :goto_1f7

    .line 457
    :cond_26f
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasGroupConversationRename()Z

    move-result v4

    if-eqz v4, :cond_2a0

    .line 458
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_285

    .line 459
    const-string v4, "EsConversationsData"

    const-string v5, "Got GroupConversationRename"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_285
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v2

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v16, v8

    move-object/from16 v17, p3

    invoke-static/range {v9 .. v17}, Lcom/google/android/apps/plus/content/EsConversationsData;->processGroupConversationRename(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;ZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    move/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_1f7

    .line 464
    :cond_2a0
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasMigration()Z

    move-result v4

    if-eqz v4, :cond_2ac

    move/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_1f7

    .line 468
    :cond_2ac
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasTileEvent()Z

    move-result v4

    if-eqz v4, :cond_2d3

    .line 469
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2c2

    .line 470
    const-string v4, "EsConversationsData"

    const-string v5, "Got TileEvent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_2c2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v9, p3

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/content/EsConversationsData;->processTileEvent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$TileEvent;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    :cond_2d3
    move/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_1f7

    .line 477
    :cond_2d9
    const/4 v4, 0x0

    .line 478
    const/4 v3, 0x0

    .line 479
    cmp-long v5, v24, v27

    if-gez v5, :cond_3d4

    .line 486
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2ef

    .line 487
    const-string v4, "EsConversationsData"

    const-string v5, "newer messages with gap"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_2ef
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide/from16 v0, v27

    invoke-static {v2, v4, v5, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->removeOlderMessages(Landroid/database/sqlite/SQLiteDatabase;JJ)I

    move-result v4

    .line 491
    const-string v5, "EsConversationsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_338

    .line 492
    const-string v5, "EsConversationsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Latest current event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " earliest in eventStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " deleted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " older messages"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_338
    if-lez v4, :cond_33b

    .line 497
    const/4 v3, 0x1

    .line 499
    :cond_33b
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 534
    :cond_33f
    :goto_33f
    if-eqz v3, :cond_35d

    .line 535
    const-string v3, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_351

    .line 536
    const-string v3, "EsConversationsData"

    const-string v5, "clearing is_awaiting_older_events"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_351
    const-string v3, "is_awaiting_older_events"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    :cond_35d
    if-eqz v4, :cond_387

    .line 541
    const-string v3, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_380

    .line 542
    const-string v3, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating earliest event timestamp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_380
    const-string v3, "earliest_event_timestamp"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    :cond_387
    cmp-long v3, v29, v24

    if-lez v3, :cond_396

    .line 549
    const-string v3, "latest_event_timestamp"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 552
    :cond_396
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_3af

    .line 553
    const-string v3, "conversations"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 559
    :cond_3af
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b2
    .catchall {:try_start_14e .. :try_end_3b2} :catchall_145

    .line 561
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 563
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 564
    if-eqz v19, :cond_3c5

    .line 565
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 567
    :cond_3c5
    if-eqz v18, :cond_119

    .line 568
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto/16 :goto_119

    .line 500
    :cond_3d4
    cmp-long v5, v27, v22

    if-lez v5, :cond_430

    const-wide/16 v5, 0x0

    cmp-long v5, v22, v5

    if-eqz v5, :cond_430

    .line 509
    :try_start_3de
    const-string v5, "EsConversationsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3ee

    .line 510
    const-string v5, "EsConversationsData"

    const-string v6, "newer messages with overlap"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_3ee
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    if-eq v0, v5, :cond_33f

    .line 514
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->removeExcessMessages(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v4

    .line 515
    const-string v5, "EsConversationsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_41f

    .line 516
    const-string v5, "EsConversationsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trim excess messages removed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_41f
    if-lez v4, :cond_422

    .line 519
    const/4 v3, 0x1

    .line 521
    :cond_422
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryOldestMessageTimestamp(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_33f

    .line 527
    :cond_430
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_440

    .line 528
    const-string v4, "EsConversationsData"

    const-string v5, "older messages"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_440
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_443
    .catchall {:try_start_3de .. :try_end_443} :catchall_145

    move-result-object v4

    goto/16 :goto_33f

    .line 378
    :catchall_446
    move-exception v3

    goto/16 :goto_14c
.end method

.method private static processGroupConversationRename(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 822
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 823
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processGroupConversationRename conversationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_25
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 831
    :try_start_30
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 833
    if-nez v9, :cond_69

    .line 834
    const-string v1, "EsConversationsData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 835
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to rename for a nonexistant conversation id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_30 .. :try_end_65} :catchall_87

    .line 844
    :cond_65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 848
    :goto_68
    return-void

    .line 840
    :cond_69
    :try_start_69
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->processGroupConversationRename(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;ZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 842
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_79
    .catchall {:try_start_69 .. :try_end_79} :catchall_87

    .line 844
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 846
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 847
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto :goto_68

    .line 844
    :catchall_87
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static processGroupConversationRename(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;ZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1990
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1991
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processGroupConversationRename conversationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_25
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->hasNewDisplayName()Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 1996
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getNewDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 1997
    if-eqz p6, :cond_3a

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 1998
    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversationName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)V

    .line 2001
    :cond_3a
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getTimestamp()J

    move-result-wide v12

    .line 2002
    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1, v12, v13}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateLatestEventTimestamp(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 2004
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2005
    if-eqz v2, :cond_c6

    .line 2006
    const v3, 0x7f07019e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "</b>"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<i>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</i>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2011
    const/4 v8, 0x1

    .line 2012
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_a2

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-eqz v2, :cond_b2

    :cond_a2
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b2

    if-eqz p7, :cond_b3

    .line 2016
    :cond_b2
    const/4 v8, 0x0

    .line 2018
    :cond_b3
    const/4 v9, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-static/range {v2 .. v13}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZZLjava/lang/String;IJ)J

    .line 2027
    :cond_c2
    :goto_c2
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setShouldTriggerNotifications()V

    .line 2028
    return-void

    .line 2022
    :cond_c6
    const-string v2, "EsConversationsData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 2023
    const-string v2, "EsConversationsData"

    const-string v3, "Participant who changed the conversation name could not be found locally"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2
.end method

.method private static processHangoutTile(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2076
    const/4 v8, 0x0

    .line 2077
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    .line 2078
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUTHOR_PROFILE_ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2079
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    .line 2081
    :cond_26
    const-string v2, "EsConversationsData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2082
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unexpected data in join hangout tile event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2087
    :cond_5a
    invoke-static {p0, v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFirstName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2088
    if-eqz v0, :cond_95

    .line 2089
    const v1, 0x7f07019f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2093
    const/4 v6, 0x1

    .line 2094
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-eqz v0, :cond_82

    :cond_80
    if-eqz p6, :cond_83

    .line 2097
    :cond_82
    const/4 v6, 0x0

    .line 2099
    :cond_83
    const/4 v7, 0x1

    const/4 v9, 0x6

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTimestamp()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p4

    invoke-static/range {v0 .. v11}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZZLjava/lang/String;IJ)J

    .line 2107
    :cond_91
    :goto_91
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setShouldTriggerNotifications()V

    .line 2108
    return-void

    .line 2103
    :cond_95
    const-string v0, "EsConversationsData"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 2104
    const-string v0, "EsConversationsData"

    const-string v1, "Participant who joined hangout could not be found locally"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91
.end method

.method private static processInvalidateLocalCache(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v0, -0x1

    .line 860
    const-string v1, "EsConversationsData"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 861
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processInvalidateLocalCache version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_26
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 866
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 868
    :try_start_31
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 869
    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryDatastoreVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_aa

    move-result-object v2

    .line 871
    if-eqz v2, :cond_41

    .line 873
    :try_start_3d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_98

    move-result v0

    .line 881
    :cond_41
    :goto_41
    :try_start_41
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v3

    if-ge v0, v3, :cond_af

    .line 882
    const-string v0, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 883
    const-string v0, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing local storage. New storage version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_6c
    const-string v0, "conversations"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 888
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/content/EsConversationsData;->setDatastoreVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setClientVersion(I)V

    .line 890
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationList(J)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 902
    :cond_8e
    :goto_8e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_91
    .catchall {:try_start_41 .. :try_end_91} :catchall_aa

    .line 904
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 906
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 907
    return-void

    .line 874
    :catch_98
    move-exception v3

    .line 875
    :try_start_99
    const-string v3, "EsConversationsData"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 876
    const-string v3, "EsConversationsData"

    const-string v4, "Failed to parse database version"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_aa

    goto :goto_41

    .line 904
    :catchall_aa
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 891
    :cond_af
    :try_start_af
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v3

    if-le v0, v3, :cond_8e

    .line 892
    const-string v0, "EsConversationsData"

    const/4 v3, 0x5

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 893
    const-string v0, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring InvalidateLocalCache message! Local version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Server version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 898
    :cond_e5
    const-string v0, "EsConversationsData"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 899
    const-string v0, "EsConversationsData"

    const-string v2, "Ignoring InvalidateLocalCache message without version number."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_af .. :try_end_f5} :catchall_aa

    goto :goto_8e
.end method

.method private static processInviteResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 918
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 919
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processInviteResponse participantErrorCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getParticipantErrorCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getRequestError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_33
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 928
    :try_start_3e
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteRequest()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 929
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v1

    .line 930
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getConversationId()Ljava/lang/String;

    move-result-object v1

    .line 931
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 932
    if-nez v8, :cond_7d

    .line 933
    const-string v2, "EsConversationsData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 934
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt to process invite response for a nonexistant conversation id ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_3e .. :try_end_79} :catchall_a3

    .line 949
    :cond_79
    :goto_79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 951
    return-void

    .line 940
    :cond_7d
    :try_start_7d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v6, v1, v3

    .line 941
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getParticipantErrorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 942
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->processParticipantError(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;JJ)V
    :try_end_a2
    .catchall {:try_start_7d .. :try_end_a2} :catchall_a3

    goto :goto_8d

    .line 949
    :catchall_a3
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 944
    :cond_a8
    :try_start_a8
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 945
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 947
    :cond_ae
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_a3

    goto :goto_79
.end method

.method private static processLeaveConversationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 992
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 993
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLeaveConversationResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_2c
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 998
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1000
    :try_start_37
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationRequest()Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 1001
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getConversationId()Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_b6

    move-result-object v11

    .line 1006
    :try_start_45
    const-string v1, "conversations"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "is_pending_leave"

    aput-object v4, v2, v3

    const-string v3, "conversation_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_ae

    move-result-object v2

    .line 1012
    :try_start_63
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1013
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1014
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_76
    .catchall {:try_start_63 .. :try_end_76} :catchall_d8

    move-result v1

    if-ne v1, v8, :cond_ac

    move v1, v8

    .line 1017
    :goto_7a
    if-eqz v2, :cond_7f

    .line 1018
    :try_start_7c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1021
    :cond_7f
    if-nez v10, :cond_bb

    .line 1022
    const-string v1, "EsConversationsData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1023
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to process presence for a nonexistant conversation id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_7c .. :try_end_a8} :catchall_b6

    .line 1038
    :cond_a8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1041
    :goto_ab
    return-void

    :cond_ac
    move v1, v9

    .line 1014
    goto :goto_7a

    .line 1017
    :catchall_ae
    move-exception v1

    move-object v2, v10

    :goto_b0
    if-eqz v2, :cond_b5

    .line 1018
    :try_start_b2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1017
    :cond_b5
    throw v1
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_b6

    .line 1038
    :catchall_b6
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1027
    :cond_bb
    if-eqz v1, :cond_ce

    .line 1028
    :try_start_bd
    const-string v1, "conversations"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1036
    :cond_ce
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d1
    .catchall {:try_start_bd .. :try_end_d1} :catchall_b6

    .line 1038
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1040
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_ab

    .line 1017
    :catchall_d8
    move-exception v1

    goto :goto_b0

    :cond_da
    move v1, v9

    goto :goto_7a
.end method

.method public static processMembershipChange(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 782
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 783
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMembershipChange conversationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_25
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 791
    :try_start_30
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 793
    if-nez v8, :cond_69

    .line 794
    const-string v1, "EsConversationsData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 795
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to process membership change for a nonexistant conversation id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_30 .. :try_end_65} :catchall_8d

    .line 804
    :cond_65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 809
    :goto_68
    return-void

    .line 800
    :cond_69
    :try_start_69
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMembershipChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$MembershipChange;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 802
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_78
    .catchall {:try_start_69 .. :try_end_78} :catchall_8d

    .line 804
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 806
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 807
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 808
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto :goto_68

    .line 804
    :catchall_8d
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public static processMembershipChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$MembershipChange;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 31
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1876
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1877
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMembershipChange conversationId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_33
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getTimestamp()J

    move-result-wide v14

    .line 1883
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getParticipantList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_3f
    :goto_3f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_159

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 1884
    invoke-virtual {v9}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasParticipantId()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1887
    sget-object v4, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$MembershipChange$Type:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_20a

    .line 1929
    const-string v4, "EsConversationsData"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1930
    const-string v4, "EsConversationsData"

    const-string v5, "Ignoring unsupported membership change event"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :pswitch_71
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    .line 1889
    invoke-static/range {v4 .. v9}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertParticipant(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Data$Participant;)V

    .line 1892
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1894
    const v5, 0x7f0701a0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<b>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "</b>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v9}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1899
    const/4 v10, 0x1

    .line 1900
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_e1

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-eqz v4, :cond_f1

    :cond_e1
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    if-eqz p6, :cond_f2

    .line 1904
    :cond_f1
    const/4 v10, 0x0

    .line 1906
    :cond_f2
    const/4 v11, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    invoke-static/range {v4 .. v15}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZZLjava/lang/String;IJ)J

    .line 1909
    if-eqz v10, :cond_3f

    .line 1910
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setShouldTriggerNotifications()V

    goto/16 :goto_3f

    .line 1916
    :pswitch_10a
    invoke-virtual {v9}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-wide/from16 v19, p3

    invoke-static/range {v16 .. v21}, Lcom/google/android/apps/plus/content/EsConversationsData;->markParticipantInactive(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)V

    .line 1918
    const v4, 0x7f0701a1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v9}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1922
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    invoke-static/range {v4 .. v15}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZZLjava/lang/String;IJ)J

    goto/16 :goto_3f

    .line 1935
    :cond_159
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_169

    .line 1936
    const-string v4, "EsConversationsData"

    const-string v5, "renaming conversation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_169
    const/4 v12, 0x0

    .line 1940
    const/4 v15, 0x0

    .line 1941
    const-wide/16 v13, 0x0

    .line 1943
    :try_start_16d
    const-string v5, "conversations"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "is_awaiting_event_stream"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "latest_event_timestamp"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "is_muted"

    aput-object v7, v6, v4

    const-string v7, "_id=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_195
    .catchall {:try_start_16d .. :try_end_195} :catchall_1fd

    move-result-object v5

    .line 1950
    :try_start_196
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_207

    .line 1951
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1fb

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1fb

    const/4 v4, 0x1

    .line 1953
    :goto_1ab
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1af
    .catchall {:try_start_196 .. :try_end_1af} :catchall_205

    move-result-wide v6

    .line 1956
    :goto_1b0
    if-eqz v5, :cond_1b5

    .line 1957
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1960
    :cond_1b5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->generateConversationName(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;JZ)Ljava/lang/String;

    move-result-object v5

    .line 1962
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1963
    const-string v9, "generated_name"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->hasTimestamp()Z

    move-result v5

    if-eqz v5, :cond_1e7

    .line 1966
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getTimestamp()J

    move-result-wide v9

    cmp-long v5, v9, v6

    if-lez v5, :cond_1e7

    if-nez v4, :cond_1e7

    .line 1968
    const-string v4, "latest_event_timestamp"

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1972
    :cond_1e7
    const-string v4, "conversations"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1975
    return-void

    .line 1951
    :cond_1fb
    const/4 v4, 0x0

    goto :goto_1ab

    .line 1956
    :catchall_1fd
    move-exception v4

    move-object v5, v12

    :goto_1ff
    if-eqz v5, :cond_204

    .line 1957
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1956
    :cond_204
    throw v4

    :catchall_205
    move-exception v4

    goto :goto_1ff

    :cond_207
    move-wide v6, v13

    move v4, v15

    goto :goto_1b0

    .line 1887
    :pswitch_data_20a
    .packed-switch 0x1
        :pswitch_71
        :pswitch_10a
    .end packed-switch
.end method

.method private static processMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 33
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1303
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContentCount()I

    move-result v3

    if-lez v3, :cond_114

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 1304
    :goto_12
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)I

    move-result v21

    .line 1305
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1306
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMessage conversationId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_61
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v22

    .line 1312
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasMessageClientId()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1313
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientId()Ljava/lang/String;

    move-result-object v3

    .line 1314
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 1315
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new message Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_9e
    if-eqz v3, :cond_ab

    .line 1318
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v3, v1, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateMessageId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :cond_ab
    const/4 v12, 0x0

    .line 1325
    :try_start_ac
    const-string v4, "participants"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const-string v6, "participant_id=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ca
    .catchall {:try_start_ac .. :try_end_ca} :catchall_119

    move-result-object v4

    .line 1330
    :try_start_cb
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_11f

    .line 1331
    const-string v3, "EsConversationsData"

    const/4 v5, 0x5

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 1332
    const-string v3, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attempt to insert a message id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "nonexistant participant id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catchall {:try_start_cb .. :try_end_110} :catchall_451

    .line 1338
    :cond_110
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1475
    :cond_113
    :goto_113
    return-void

    .line 1303
    :cond_114
    const-string v3, ""

    move-object v11, v3

    goto/16 :goto_12

    .line 1338
    :catchall_119
    move-exception v3

    move-object v4, v12

    :goto_11b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_11f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1341
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_175

    const/4 v3, 0x3

    move/from16 v0, v21

    if-eq v0, v3, :cond_141

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasRetry()Z

    move-result v3

    if-eqz v3, :cond_175

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getRetry()Z

    move-result v3

    if-eqz v3, :cond_175

    .line 1344
    :cond_141
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v3

    sget-object v5, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-object/from16 v0, p4

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReceipt(Ljava/lang/String;JLcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 1346
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_175

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p5

    if-nez v3, :cond_175

    .line 1348
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v3

    sget-object v5, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->READ:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-object/from16 v0, p4

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReceipt(Ljava/lang/String;JLcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 1353
    :cond_175
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1354
    const/4 v3, 0x0

    .line 1355
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasPhotoMetadata()Z

    move-result v4

    if-eqz v4, :cond_45d

    .line 1356
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 1357
    const-string v4, "image_url"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    .line 1359
    :goto_19f
    const-string v3, "message_id"

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v3, "conversation_id"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1361
    const-string v3, "author_id"

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v3, "text"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-string v3, "status"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1364
    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1365
    const-string v3, "timestamp"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1367
    const/4 v3, 0x0

    .line 1368
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1fc

    .line 1369
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryMessageRowId(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1371
    :cond_1fc
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_229

    .line 1372
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "conversationRowId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " messageRowId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_229
    const/4 v4, 0x1

    .line 1376
    if-eqz v3, :cond_3a1

    .line 1377
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_23c

    .line 1378
    const-string v4, "EsConversationsData"

    const-string v5, "updating message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_23c
    const-string v4, "messages"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1383
    const/4 v3, 0x0

    move v13, v3

    .line 1399
    :goto_253
    const-wide/16 v19, 0x0

    .line 1400
    const-wide/16 v17, 0x0

    .line 1401
    const/16 v16, 0x0

    .line 1402
    const/4 v15, 0x0

    .line 1403
    const/4 v14, 0x0

    .line 1405
    :try_start_25b
    const-string v4, "conversations"

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "is_awaiting_event_stream"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "latest_message_timestamp"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "earliest_event_timestamp"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string v6, "is_muted"

    aput-object v6, v5, v3

    const-string v6, "_id=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_288
    .catchall {:try_start_25b .. :try_end_288} :catchall_406

    move-result-object v4

    .line 1413
    :try_start_289
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_454

    .line 1414
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_400

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_400

    const/4 v5, 0x1

    .line 1416
    :goto_29e
    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1417
    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1418
    const/4 v3, 0x3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_403

    const/4 v3, 0x3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2b3
    .catchall {:try_start_289 .. :try_end_2b3} :catchall_44f

    move-result v3

    if-eqz v3, :cond_403

    const/4 v3, 0x1

    .line 1422
    :goto_2b7
    if-eqz v4, :cond_2bc

    .line 1423
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1427
    :cond_2bc
    const-string v4, "EsConversationsData"

    const/4 v10, 0x3

    invoke-static {v4, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2e9

    .line 1428
    const-string v4, "EsConversationsData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "new message timestamp "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, " conversation latest "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_2e9
    cmp-long v4, v22, v8

    if-ltz v4, :cond_113

    .line 1433
    const-string v4, "EsConversationsData"

    const/4 v8, 0x3

    invoke-static {v4, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2fd

    .line 1434
    const-string v4, "EsConversationsData"

    const-string v8, "updating latest message"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_2fd
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->clear()V

    .line 1437
    if-eqz v13, :cond_30e

    .line 1438
    const-string v4, "is_visible"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1440
    :cond_30e
    const-string v4, "latest_message_text"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const-string v4, "latest_message_image_url"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v4, "latest_message_author_id"

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const-string v4, "latest_message_timestamp"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1444
    const-string v4, "latest_message_type"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1446
    if-nez v5, :cond_40e

    .line 1447
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_350

    .line 1448
    const-string v4, "EsConversationsData"

    const-string v5, "updating latest event timestamp"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_350
    const-string v4, "latest_event_timestamp"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1462
    :cond_35b
    :goto_35b
    const-string v4, "conversations"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1466
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_113

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_390

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p5, v4

    if-eqz v4, :cond_113

    :cond_390
    if-nez v3, :cond_113

    const/4 v3, 0x4

    move/from16 v0, v21

    if-eq v0, v3, :cond_39c

    const/4 v3, 0x3

    move/from16 v0, v21

    if-ne v0, v3, :cond_113

    .line 1472
    :cond_39c
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setShouldTriggerNotifications()V

    goto/16 :goto_113

    .line 1385
    :cond_3a1
    const-string v3, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3b1

    .line 1386
    const-string v3, "EsConversationsData"

    const-string v5, "inserting message"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_3b1
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_3c3

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, p5, v5

    if-eqz v3, :cond_3d6

    :cond_3c3
    const/4 v3, 0x5

    move/from16 v0, v21

    if-eq v0, v3, :cond_3d6

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f3

    .line 1392
    :cond_3d6
    const-string v3, "notification_seen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1397
    :goto_3e2
    const-string v3, "messages"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move v13, v4

    goto/16 :goto_253

    .line 1394
    :cond_3f3
    const-string v3, "notification_seen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3e2

    .line 1414
    :cond_400
    const/4 v5, 0x0

    goto/16 :goto_29e

    .line 1418
    :cond_403
    const/4 v3, 0x0

    goto/16 :goto_2b7

    .line 1422
    :catchall_406
    move-exception v3

    move-object v4, v14

    :goto_408
    if-eqz v4, :cond_40d

    .line 1423
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1422
    :cond_40d
    throw v3

    .line 1451
    :cond_40e
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-nez v4, :cond_35b

    .line 1455
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_437

    .line 1456
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating earliest and latest event timestamp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_437
    const-string v4, "latest_event_timestamp"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1459
    const-string v4, "earliest_event_timestamp"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_35b

    .line 1422
    :catchall_44f
    move-exception v3

    goto :goto_408

    .line 1338
    :catchall_451
    move-exception v3

    goto/16 :goto_11b

    :cond_454
    move v3, v15

    move/from16 v5, v16

    move-wide/from16 v6, v17

    move-wide/from16 v8, v19

    goto/16 :goto_2b7

    :cond_45d
    move-object v12, v3

    goto/16 :goto_19f
.end method

.method private static processMigration(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Migration;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1054
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1055
    const-string v0, "EsConversationsData"

    const-string v1, "processMigration "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_10
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1059
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1061
    :try_start_1b
    invoke-static {v1, p0, p1, p2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMigration(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Migration;)V

    .line 1062
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_25

    .line 1064
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1066
    return-void

    .line 1064
    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static processMigration(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Migration;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1210
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1211
    const-string v0, "EsConversationsData"

    const-string v1, "processMigration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_12
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getOldId()Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getNewId()Ljava/lang/String;

    move-result-object v1

    .line 1216
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1217
    const-string v3, "participant_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v3, "conversation_participants"

    const-string v4, "participant_id=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1221
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1222
    const-string v3, "author_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const-string v3, "messages"

    const-string v4, "author_id=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1226
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1227
    const-string v3, "latest_message_author_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const-string v3, "conversations"

    const-string v4, "latest_message_author_id=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1231
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1232
    const-string v3, "inviter_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v1, "conversations"

    const-string v3, "inviter_id=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1235
    return-void
.end method

.method public static processParticipantError(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;JJ)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1251
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1252
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processParticipantError status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_29
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->hasFullName()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->hasStatus()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1257
    :cond_35
    const-string v0, "EsConversationsData"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1258
    const-string v0, "EsConversationsData"

    const-string v1, "Participant error with no name or status"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_45
    :goto_45
    return-void

    .line 1262
    :cond_46
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 1263
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    .line 1265
    sget-object v2, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_a2

    .line 1279
    const v0, 0x7f0701ab

    .line 1281
    :goto_5c
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</b>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1283
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p4

    move-wide/from16 v10, p6

    invoke-static/range {v0 .. v11}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZZLjava/lang/String;IJ)J

    goto :goto_45

    .line 1267
    :pswitch_91
    const v0, 0x7f0701a7

    .line 1268
    goto :goto_5c

    .line 1270
    :pswitch_95
    const v0, 0x7f0701a8

    .line 1271
    goto :goto_5c

    .line 1273
    :pswitch_99
    const v0, 0x7f0701a9

    .line 1274
    goto :goto_5c

    .line 1276
    :pswitch_9d
    const v0, 0x7f0701aa

    .line 1277
    goto :goto_5c

    .line 1265
    nop

    :pswitch_data_a2
    .packed-switch 0x5
        :pswitch_91
        :pswitch_95
        :pswitch_99
        :pswitch_9d
    .end packed-switch
.end method

.method private static processPresence(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Presence;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1078
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1079
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPresence conversationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_27
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1084
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1086
    :try_start_32
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->hasConversationId()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1087
    const-string v0, "EsConversationsData"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1088
    const-string v0, "EsConversationsData"

    const-string v1, "Received a Presence message without conversation id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_c3

    .line 1122
    :cond_48
    :goto_48
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1124
    return-void

    .line 1092
    :cond_4c
    :try_start_4c
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getConversationId()Ljava/lang/String;

    move-result-object v3

    .line 1094
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    .line 1095
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->hasReciprocate()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getReciprocate()Z

    move-result v5

    if-eqz v5, :cond_87

    if-eqz v4, :cond_87

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_87

    .line 1097
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v4

    .line 1099
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1100
    if-eqz v4, :cond_87

    .line 1101
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->presenceRequest(Ljava/lang/String;ZZ)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 1108
    :cond_87
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_db

    .line 1109
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1110
    if-nez v4, :cond_c8

    .line 1111
    const-string v0, "EsConversationsData"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1112
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt to process presence for a nonexistant conversation id ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_4c .. :try_end_c2} :catchall_c3

    goto :goto_48

    .line 1122
    :catchall_c3
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1117
    :cond_c8
    :try_start_c8
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getType()Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    move-result-object v6

    sget-object v7, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->FOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    if-ne v6, v7, :cond_e0

    :goto_d8
    invoke-static {v3, v4, v5, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->notifyUserPresenceChanged(JLjava/lang/String;Z)V

    .line 1120
    :cond_db
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_de
    .catchall {:try_start_c8 .. :try_end_de} :catchall_c3

    goto/16 :goto_48

    :cond_e0
    move v0, v1

    .line 1117
    goto :goto_d8
.end method

.method private static processPreviewMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1489
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContentCount()I

    move-result v0

    if-lez v0, :cond_b0

    invoke-virtual {p3, v6}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1490
    :goto_10
    invoke-static {p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)I

    move-result v1

    .line 1491
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1492
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPreviewMessage conversationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " timestamp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_5b
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v2

    .line 1498
    const/4 v1, 0x0

    .line 1499
    invoke-virtual {p3, v6}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasPhotoMetadata()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 1500
    invoke-virtual {p3, v6}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1503
    :cond_76
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1504
    const-string v5, "latest_message_text"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v0, "latest_message_image_url"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const-string v0, "latest_message_author_id"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string v0, "latest_message_timestamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1508
    const-string v0, "latest_message_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1511
    const-string v0, "conversations"

    const-string v1, "_id=?"

    new-array v2, v7, [Ljava/lang/String;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1513
    return-void

    .line 1489
    :cond_b0
    const-string v0, ""

    goto/16 :goto_10
.end method

.method public static processReceipt(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 734
    .line 735
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasMessageClientId()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 736
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageClientId()Ljava/lang/String;

    move-result-object v0

    .line 738
    :goto_b
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 739
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processReceipt ConversationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MessageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clientMessageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Timestamp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasTimestamp()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_6e
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 751
    :try_start_79
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 753
    if-nez v7, :cond_b2

    .line 754
    const-string v1, "EsConversationsData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 755
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to process receipt for a nonexistant conversation id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_79 .. :try_end_ae} :catchall_ce

    .line 763
    :cond_ae
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 767
    :goto_b1
    return-void

    .line 760
    :cond_b2
    :try_start_b2
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsConversationsData;->processReceipt(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 761
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c0
    .catchall {:try_start_b2 .. :try_end_c0} :catchall_ce

    .line 763
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 765
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 766
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto :goto_b1

    .line 763
    :catchall_ce
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    :cond_d3
    move-object v0, v1

    goto/16 :goto_b
.end method

.method public static processReceipt(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1526
    const/4 v2, 0x0

    .line 1527
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasMessageClientId()Z

    move-result v3

    if-eqz v3, :cond_219

    .line 1528
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageClientId()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 1530
    :goto_c
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1531
    const-string v3, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processReceipt Conversation row id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", MessageId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", clientMessageId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Timestamp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_62
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_6d
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1540
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 1541
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getTimestamp()J

    move-result-wide v2

    move-wide v11, v2

    .line 1545
    :goto_7d
    sget-object v2, Lcom/google/android/apps/plus/content/EsConversationsData$2;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$Receipt$Type:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_21c

    .line 1670
    :cond_8c
    :goto_8c
    return-void

    .line 1531
    :cond_8d
    const/4 v2, 0x0

    goto :goto_62

    .line 1543
    :cond_8f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-wide v11, v2

    goto :goto_7d

    .line 1547
    :pswitch_98
    const/4 v13, 0x0

    .line 1548
    const/4 v14, 0x0

    .line 1550
    :try_start_9a
    const-string v3, "messages"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "timestamp"

    aput-object v5, v4, v2

    const-string v5, "conversation_id=? AND message_id=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c0
    .catchall {:try_start_9a .. :try_end_c0} :catchall_170

    move-result-object v13

    .line 1557
    :try_start_c1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 1558
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_cf
    .catchall {:try_start_c1 .. :try_end_cf} :catchall_210

    move-result-object v2

    .line 1561
    :goto_d0
    if-eqz v13, :cond_d5

    .line 1562
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1566
    :cond_d5
    const-string v3, "status"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1567
    if-eqz v10, :cond_10d

    .line 1568
    const-string v3, "message_id"

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const-string v3, "timestamp"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1570
    const-string v3, "messages"

    const-string v4, "message_id=? AND conversation_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1587
    :cond_10d
    :try_start_10d
    const-string v3, "messages"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "conversation_id=? AND (status=1 OR status=7) AND timestamp>? AND timestamp<?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1600
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1601
    :goto_13e
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_207

    .line 1602
    const-wide/16 v2, 0x1

    add-long/2addr v11, v2

    .line 1603
    const-string v2, "timestamp"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1604
    const-string v2, "messages"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_168
    .catchall {:try_start_10d .. :try_end_168} :catchall_169

    goto :goto_13e

    .line 1609
    :catchall_169
    move-exception v2

    if-eqz v13, :cond_16f

    .line 1610
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1609
    :cond_16f
    throw v2

    .line 1561
    :catchall_170
    move-exception v2

    move-object v3, v13

    :goto_172
    if-eqz v3, :cond_177

    .line 1562
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1561
    :cond_177
    throw v2

    .line 1617
    :pswitch_178
    const/4 v11, 0x3

    .line 1618
    const/4 v10, 0x0

    .line 1620
    :try_start_17a
    const-string v3, "messages"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "status"

    aput-object v5, v4, v2

    const-string v5, "conversation_id=? AND message_id=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19f
    .catchall {:try_start_17a .. :try_end_19f} :catchall_1d9

    move-result-object v3

    .line 1627
    :try_start_1a0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_214

    .line 1628
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1aa
    .catchall {:try_start_1a0 .. :try_end_1aa} :catchall_20e

    move-result v2

    .line 1631
    :goto_1ab
    if-eqz v3, :cond_1b0

    .line 1632
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1636
    :cond_1b0
    const/4 v3, 0x5

    if-eq v2, v3, :cond_8c

    .line 1637
    const-string v2, "status"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1638
    const-string v2, "messages"

    const-string v3, "conversation_id=? AND message_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 1631
    :catchall_1d9
    move-exception v2

    move-object v3, v10

    :goto_1db
    if-eqz v3, :cond_1e0

    .line 1632
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1631
    :cond_1e0
    throw v2

    .line 1647
    :pswitch_1e1
    const-string v2, "status"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1648
    const-string v2, "messages"

    const-string v3, "conversation_id=? AND message_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 1609
    :cond_207
    if-eqz v13, :cond_8c

    .line 1610
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8c

    .line 1631
    :catchall_20e
    move-exception v2

    goto :goto_1db

    .line 1561
    :catchall_210
    move-exception v2

    move-object v3, v13

    goto/16 :goto_172

    :cond_214
    move v2, v11

    goto :goto_1ab

    :cond_216
    move-object v2, v14

    goto/16 :goto_d0

    :cond_219
    move-object v10, v2

    goto/16 :goto_c

    .line 1545
    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_98
        :pswitch_178
        :pswitch_1e1
    .end packed-switch
.end method

.method private static processSingleMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 660
    const-string v0, "EsConversationsData"

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 661
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSingleMessage messageClientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " conversationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receiverState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsConversationsData;->determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_5f
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 673
    :try_start_6a
    invoke-static {v0, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 674
    if-nez v10, :cond_a9

    .line 675
    const-string v1, "EsConversationsData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 676
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to add a message id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for a nonexistant conversation id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_6a .. :try_end_a5} :catchall_142

    .line 717
    :cond_a5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 721
    :goto_a8
    return-void

    .line 682
    :cond_a9
    :try_start_a9
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsConversationsData;->determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)I

    move-result v1

    .line 684
    invoke-virtual {p4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_b9

    invoke-virtual {p4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v2

    if-eq v10, v2, :cond_11c

    :cond_b9
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c4
    .catchall {:try_start_a9 .. :try_end_c4} :catchall_142

    move-result v2

    if-nez v2, :cond_11c

    if-eq v1, v4, :cond_cc

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11c

    .line 692
    :cond_cc
    :try_start_cc
    const-string v1, "conversations"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "unread_count"

    aput-object v4, v2, v3

    const-string v3, "conversation_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e4
    .catchall {:try_start_cc .. :try_end_e4} :catchall_13a

    move-result-object v2

    .line 696
    :try_start_e5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_149

    .line 697
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_ef
    .catchall {:try_start_e5 .. :try_end_ef} :catchall_147

    move-result v1

    .line 700
    :goto_f0
    if-eqz v2, :cond_f5

    .line 701
    :try_start_f2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 704
    :cond_f5
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 705
    const-string v3, "unread_count"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 706
    const-string v1, "is_visible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    const-string v1, "conversations"

    const-string v3, "conversation_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 712
    :cond_11c
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 715
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12b
    .catchall {:try_start_f2 .. :try_end_12b} :catchall_142

    .line 717
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 719
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 720
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto/16 :goto_a8

    .line 700
    :catchall_13a
    move-exception v1

    move-object v2, v8

    :goto_13c
    if-eqz v2, :cond_141

    .line 701
    :try_start_13e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 700
    :cond_141
    throw v1
    :try_end_142
    .catchall {:try_start_13e .. :try_end_142} :catchall_142

    .line 717
    :catchall_142
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 700
    :catchall_147
    move-exception v1

    goto :goto_13c

    :cond_149
    move v1, v9

    goto :goto_f0
.end method

.method private static processTileEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1171
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1176
    :try_start_b
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getConversationId()Ljava/lang/String;

    move-result-object v1

    .line 1177
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 1179
    if-nez v8, :cond_40

    .line 1180
    const-string v2, "EsConversationsData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1181
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to add tile to nonexistant conversation id ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_68

    .line 1191
    :cond_3c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1196
    :goto_3f
    return-void

    .line 1186
    :cond_40
    :try_start_40
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->processTileEvent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$TileEvent;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 1188
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTimestamp()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateLatestEventTimestamp(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 1189
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_68

    .line 1191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1194
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1195
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto :goto_3f

    .line 1191
    :catchall_68
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static processTileEvent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$TileEvent;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    .line 2043
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    .line 2044
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTimestamp()J

    move-result-wide v1

    .line 2045
    const-string v3, "EsConversationsData"

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 2046
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processTileEvent conversation id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Event Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Tile Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTileType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Tile Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTileVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_5d
    const-string v1, "JOIN_HANGOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-wide v4, p3

    move v6, p6

    move-object v7, p7

    .line 2053
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->processHangoutTile(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 2060
    :cond_6f
    :goto_6f
    return-void

    .line 2056
    :cond_70
    const-string v1, "EsConversationsData"

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 2057
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processTileEvent for unexpected event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f
.end method

.method private static processTyping(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Typing;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1135
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1136
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processTyping conversationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_25
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1141
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1144
    :try_start_30
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 1145
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1146
    if-nez v0, :cond_77

    .line 1147
    const-string v0, "EsConversationsData"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1148
    const-string v0, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to process typing for a nonexistant conversation id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_30 .. :try_end_73} :catchall_97

    .line 1159
    :cond_73
    :goto_73
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1161
    return-void

    .line 1153
    :cond_77
    :try_start_77
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1154
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    move-result-object v0

    sget-object v6, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    if-ne v0, v6, :cond_9c

    const/4 v0, 0x1

    :goto_90
    invoke-static {v3, v4, v5, v2, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->notifyUserTypingStatusChanged(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 1157
    :cond_93
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_96
    .catchall {:try_start_77 .. :try_end_96} :catchall_97

    goto :goto_73

    .line 1159
    :catchall_97
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1154
    :cond_9c
    const/4 v0, 0x0

    goto :goto_90
.end method

.method private static processUserCreationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 178
    const-string v0, "EsConversationsData"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 179
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processUserCreationResponse participantId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_25
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 187
    :try_start_30
    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryLoadConversationsSince(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    .line 191
    const-string v0, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 192
    const-string v0, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requesting conversations changed since "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_55
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationList(J)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 195
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getUserInfo(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 201
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 202
    const-string v4, "key"

    const-string v5, "requested_conversations_since"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v4, "value"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v2, "realtimechat_metadata"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 207
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_86
    .catchall {:try_start_30 .. :try_end_86} :catchall_8a

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 211
    return-void

    .line 209
    :catchall_8a
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3601
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3602
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryConversationId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    :cond_21
    const-string v0, "SELECT conversation_id  FROM conversations WHERE _id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;
    .registers 12
    .parameter "db"
    .parameter "conversationId"

    .prologue
    const/4 v9, 0x0

    .line 3573
    const/4 v8, 0x0

    .line 3575
    .local v8, c:Landroid/database/Cursor;
    :try_start_2
    const-string v1, "conversations"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "conversation_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3580
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3581
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3582
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_34

    move-result-object v0

    .line 3585
    if-eqz v8, :cond_33

    .line 3586
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3589
    :cond_33
    :goto_33
    return-object v0

    .line 3585
    :catchall_34
    move-exception v0

    if-eqz v8, :cond_3a

    .line 3586
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3585
    :cond_3a
    throw v0

    :cond_3b
    if-eqz v8, :cond_40

    .line 3586
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_40
    move-object v0, v9

    .line 3589
    goto :goto_33
.end method

.method public static queryDatastoreVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3251
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3253
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3255
    :try_start_b
    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryDatastoreVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1

    .line 3256
    .local v1, version:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    .line 3259
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3257
    return-object v1

    .line 3259
    .end local v1           #version:Ljava/lang/String;
    :catchall_16
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private static queryDatastoreVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .registers 11
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 3267
    .line 3269
    :try_start_1
    const-string v1, "realtimechat_metadata"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "key = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "datastore_version"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    move-result-object v1

    .line 3274
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3275
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_3d

    move-result-object v0

    .line 3278
    if-eqz v1, :cond_2e

    .line 3279
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3282
    :cond_2e
    :goto_2e
    return-object v0

    .line 3278
    :catchall_2f
    move-exception v0

    :goto_30
    if-eqz v9, :cond_35

    .line 3279
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3278
    :cond_35
    throw v0

    :cond_36
    if-eqz v1, :cond_3b

    .line 3279
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3b
    move-object v0, v9

    .line 3282
    goto :goto_2e

    .line 3278
    :catchall_3d
    move-exception v0

    move-object v9, v1

    goto :goto_30
.end method

.method private static queryLoadConversationsSince(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 11
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 3366
    .line 3372
    :try_start_1
    const-string v1, "realtimechat_metadata"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "key = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "requested_conversations_since"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    move-result-object v2

    .line 3377
    :try_start_1e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3378
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_70

    move-result-wide v0

    .line 3381
    if-eqz v2, :cond_2e

    .line 3382
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3400
    :cond_2e
    :goto_2e
    return-wide v0

    .line 3381
    :catchall_2f
    move-exception v0

    move-object v1, v9

    :goto_31
    if-eqz v1, :cond_36

    .line 3382
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3381
    :cond_36
    throw v0

    :cond_37
    if-eqz v2, :cond_3c

    .line 3382
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3388
    :cond_3c
    :try_start_3c
    const-string v1, "conversations"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "MAX(latest_event_timestamp)"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3392
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 3393
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_61

    move-result-wide v0

    .line 3396
    if-eqz v9, :cond_2e

    .line 3397
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    .line 3396
    :catchall_61
    move-exception v0

    if-eqz v9, :cond_67

    .line 3397
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3396
    :cond_67
    throw v0

    :cond_68
    if-eqz v9, :cond_6d

    .line 3397
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3400
    :cond_6d
    const-wide/16 v0, 0x0

    goto :goto_2e

    .line 3381
    :catchall_70
    move-exception v0

    move-object v1, v2

    goto :goto_31
.end method

.method public static queryMessageRowId(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/Long;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 3623
    .line 3625
    :try_start_1
    const-string v1, "messages"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "conversation_id=? AND message_id=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_3a

    move-result-object v1

    .line 3631
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3632
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_41

    .line 3633
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_48

    move-result-object v0

    .line 3636
    if-eqz v1, :cond_39

    .line 3637
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3640
    :cond_39
    :goto_39
    return-object v0

    .line 3636
    :catchall_3a
    move-exception v0

    :goto_3b
    if-eqz v8, :cond_40

    .line 3637
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3636
    :cond_40
    throw v0

    :cond_41
    if-eqz v1, :cond_46

    .line 3637
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_46
    move-object v0, v8

    .line 3640
    goto :goto_39

    .line 3636
    :catchall_48
    move-exception v0

    move-object v8, v1

    goto :goto_3b
.end method

.method private static queryMessageStatus(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 3412
    .line 3414
    :try_start_1
    const-string v1, "messages"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "status"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_31

    move-result-object v1

    .line 3419
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3420
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_37

    .line 3421
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_3c

    move-result v0

    .line 3424
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3426
    :goto_30
    return v0

    .line 3424
    :catchall_31
    move-exception v0

    move-object v1, v8

    :goto_33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3426
    const/4 v0, -0x1

    goto :goto_30

    .line 3424
    :catchall_3c
    move-exception v0

    goto :goto_33
.end method

.method private static queryOldestMessageTimestamp(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 3292
    .line 3294
    :try_start_1
    const-string v1, "messages"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "MIN(timestamp)"

    aput-object v3, v2, v0

    const-string v3, "conversation_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_30

    move-result-object v2

    .line 3299
    :try_start_1f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3300
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_40

    move-result-wide v0

    .line 3303
    if-eqz v2, :cond_2f

    .line 3304
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3307
    :cond_2f
    :goto_2f
    return-wide v0

    .line 3303
    :catchall_30
    move-exception v0

    move-object v1, v8

    :goto_32
    if-eqz v1, :cond_37

    .line 3304
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3303
    :cond_37
    throw v0

    :cond_38
    if-eqz v2, :cond_3d

    .line 3304
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3307
    :cond_3d
    const-wide/16 v0, 0x0

    goto :goto_2f

    .line 3303
    :catchall_40
    move-exception v0

    move-object v1, v2

    goto :goto_32
.end method

.method public static queryOneToOneConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Long;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3706
    .line 3708
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "conversations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conversations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conversations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conversation_participants"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conversation_participants"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conversation_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conversations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "participant_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3733
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a5
    .catchall {:try_start_1 .. :try_end_a5} :catchall_bb

    move-result-object v1

    .line 3734
    :try_start_a6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 3735
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_b4
    .catchall {:try_start_a6 .. :try_end_b4} :catchall_c8

    move-result-object v0

    .line 3738
    if-eqz v1, :cond_ba

    .line 3739
    :goto_b7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3742
    :cond_ba
    return-object v0

    .line 3738
    :catchall_bb
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_bf
    if-eqz v1, :cond_c4

    .line 3739
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3738
    :cond_c4
    throw v0

    :cond_c5
    if-eqz v1, :cond_ba

    goto :goto_b7

    :catchall_c8
    move-exception v0

    goto :goto_bf
.end method

.method public static queryParticipantFirstName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 3678
    .line 3680
    :try_start_1
    const-string v1, "participants"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "first_name"

    aput-object v3, v2, v0

    const-string v3, "participant_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    move-result-object v1

    .line 3684
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3685
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_3a

    move-result-object v0

    .line 3688
    if-eqz v1, :cond_2b

    .line 3689
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3692
    :cond_2b
    :goto_2b
    return-object v0

    .line 3688
    :catchall_2c
    move-exception v0

    :goto_2d
    if-eqz v8, :cond_32

    .line 3689
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3688
    :cond_32
    throw v0

    :cond_33
    if-eqz v1, :cond_38

    .line 3689
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_38
    move-object v0, v8

    .line 3692
    goto :goto_2b

    .line 3688
    :catchall_3a
    move-exception v0

    move-object v8, v1

    goto :goto_2d
.end method

.method public static queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 3652
    .line 3654
    :try_start_1
    const-string v1, "participants"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "full_name"

    aput-object v3, v2, v0

    const-string v3, "participant_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_2c

    move-result-object v1

    .line 3658
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3659
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_3a

    move-result-object v0

    .line 3662
    if-eqz v1, :cond_2b

    .line 3663
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3666
    :cond_2b
    :goto_2b
    return-object v0

    .line 3662
    :catchall_2c
    move-exception v0

    :goto_2d
    if-eqz v8, :cond_32

    .line 3663
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3662
    :cond_32
    throw v0

    :cond_33
    if-eqz v1, :cond_38

    .line 3663
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_38
    move-object v0, v8

    .line 3666
    goto :goto_2b

    .line 3662
    :catchall_3a
    move-exception v0

    move-object v8, v1

    goto :goto_2d
.end method

.method public static queryPendingMessages(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3464
    const-string v1, "messages"

    const-string v3, "status=0 AND conversation_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const-string v7, "timestamp ASC"

    move-object v0, p0

    move-object v2, p3

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3470
    return-object v0
.end method

.method public static removeAllConversationsFromInviterLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2852
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2853
    const-string v0, "EsConversationsData"

    const-string v1, "removeAllConversationsFromInviterLocally"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :cond_10
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2857
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2859
    :try_start_1b
    const-string v0, "conversations"

    const-string v2, "inviter_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2861
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_32

    .line 2863
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2865
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2866
    return-void

    .line 2863
    :catchall_32
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private static removeExcessMessages(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 15
    .parameter
    .parameter

    .prologue
    .line 4285
    const-wide/16 v10, 0x0

    .line 4286
    const/4 v9, 0x0

    .line 4288
    :try_start_3
    const-string v1, "messages"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "timestamp"

    aput-object v3, v2, v0

    const-string v3, "conversation_id= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    const-string v8, "20,1"

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_4c

    move-result-object v1

    .line 4294
    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 4295
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_52

    move-result-wide v2

    .line 4298
    :goto_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4300
    const-string v0, "messages"

    const-string v1, "conversation_id=? AND timestamp<?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p0, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4298
    :catchall_4c
    move-exception v0

    move-object v1, v9

    :goto_4e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_52
    move-exception v0

    goto :goto_4e

    :cond_54
    move-wide v2, v10

    goto :goto_2f
.end method

.method private static removeLeftConversations(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4315
    const-string v0, "conversations"

    const-string v1, "is_pending_leave=1"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4318
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4319
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveLeftConversations "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    :cond_2a
    return-void
.end method

.method public static removeMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2919
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2920
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMessageLocally  messageRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2925
    const/4 v9, 0x0

    .line 2926
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2928
    const/4 v8, 0x0

    .line 2930
    :try_start_2e
    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_56
    .catchall {:try_start_2e .. :try_end_56} :catchall_150

    move-result-object v8

    .line 2934
    :try_start_57
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 2935
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_187

    move-result-object v1

    move-object v9, v1

    .line 2938
    :cond_67
    if-eqz v8, :cond_6c

    .line 2939
    :try_start_69
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2943
    :cond_6c
    const-string v1, "messages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_69 .. :try_end_89} :catchall_158

    .line 2950
    :try_start_89
    const-string v1, "messages"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "text"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "image_url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "author_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conversation_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2956
    :cond_c3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 2957
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2958
    const/4 v2, 0x2

    if-eq v1, v2, :cond_da

    const/4 v2, 0x1

    if-eq v1, v2, :cond_da

    const/4 v2, 0x6

    if-eq v1, v2, :cond_da

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c3

    .line 2966
    :cond_da
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2967
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_15d

    .line 2968
    const-string v1, "latest_message_text"

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    const-string v1, "latest_message_image_url"

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    const-string v1, "latest_message_timestamp"

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2973
    const-string v1, "latest_message_type"

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2974
    const-string v1, "latest_message_author_id"

    const/4 v3, 0x4

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    :goto_11f
    const-string v1, "conversations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_89 .. :try_end_138} :catchall_180

    .line 2984
    if-eqz v8, :cond_13d

    .line 2985
    :try_start_13a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2989
    :cond_13d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_140
    .catchall {:try_start_13a .. :try_end_140} :catchall_158

    .line 2991
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2993
    if-eqz v9, :cond_14c

    .line 2994
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2996
    :cond_14c
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2997
    return-void

    .line 2938
    :catchall_150
    move-exception v1

    move-object v2, v8

    :goto_152
    if-eqz v2, :cond_157

    .line 2939
    :try_start_154
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2938
    :cond_157
    throw v1
    :try_end_158
    .catchall {:try_start_154 .. :try_end_158} :catchall_158

    .line 2991
    :catchall_158
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2976
    :cond_15d
    :try_start_15d
    const-string v3, "latest_message_text"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2977
    const-string v3, "latest_message_image_url"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    const-string v1, "latest_message_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2979
    const-string v3, "latest_message_author_id"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17f
    .catchall {:try_start_15d .. :try_end_17f} :catchall_180

    goto :goto_11f

    .line 2984
    :catchall_180
    move-exception v1

    if-eqz v8, :cond_186

    .line 2985
    :try_start_183
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2984
    :cond_186
    throw v1
    :try_end_187
    .catchall {:try_start_183 .. :try_end_187} :catchall_158

    .line 2938
    :catchall_187
    move-exception v1

    move-object v2, v8

    goto :goto_152
.end method

.method private static removeOlderMessages(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4269
    const-string v0, "messages"

    const-string v1, "conversation_id=? AND timestamp<?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static requestOlderEvents(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 2803
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2805
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2809
    :try_start_c
    const-string v1, "conversations"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "earliest_event_timestamp"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_c2

    move-result-object v7

    .line 2814
    :try_start_3a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 2815
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 2816
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requesting events since "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conversation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_75
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sget v6, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->MAX_EVENTS_PER_REQUEST:I

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getEventStream(Ljava/lang/String;JJI)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    .line 2823
    invoke-virtual {p4, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 2825
    :cond_8a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2826
    const-string v2, "is_awaiting_older_events"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2827
    const-string v2, "conversations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_3a .. :try_end_b6} :catchall_cf

    .line 2831
    if-eqz v7, :cond_bb

    .line 2832
    :try_start_b8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2835
    :cond_bb
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_ca

    .line 2837
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2839
    return-void

    .line 2831
    :catchall_c2
    move-exception v1

    move-object v2, v8

    :goto_c4
    if-eqz v2, :cond_c9

    .line 2832
    :try_start_c6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2831
    :cond_c9
    throw v1
    :try_end_ca
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_ca

    .line 2837
    :catchall_ca
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2831
    :catchall_cf
    move-exception v1

    move-object v2, v7

    goto :goto_c4
.end method

.method public static resendMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "messageRowId"
    .parameter "connected"
    .parameter "operationState"

    .prologue
    .line 2445
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2446
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resendMessageLocally messageRowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_21
    const/4 v8, 0x0

    .line 2449
    .local v8, result:Landroid/os/Bundle;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2451
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2453
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-object/from16 v7, p7

    :try_start_34
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->sendMessageInDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;

    move-result-object v8

    .line 2455
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_42

    .line 2457
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2459
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2460
    return-object v8

    .line 2457
    :catchall_42
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static sendMessageInDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;
    .registers 29
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3858
    const/4 v15, 0x0

    .line 3859
    const/4 v14, 0x0

    .line 3860
    const/4 v13, 0x0

    .line 3861
    const/4 v12, 0x0

    .line 3862
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .line 3864
    const/4 v11, 0x0

    .line 3866
    :try_start_a
    const-string v4, "messages"

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "conversation_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "message_id"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "text"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string v6, "image_url"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_1a7

    move-result-object v4

    .line 3873
    :try_start_44
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 3874
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 3875
    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3876
    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3877
    const/4 v3, 0x3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_28b

    move-result-object v3

    move-object v12, v3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    .line 3880
    :cond_66
    if-eqz v4, :cond_6b

    .line 3881
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3884
    :cond_6b
    if-nez v15, :cond_90

    .line 3885
    const-string v3, "EsConversationsData"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 3886
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    :cond_90
    const/16 v19, 0x0

    .line 3893
    const/16 v18, 0x0

    .line 3894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v16, v3, v5

    .line 3895
    const/4 v11, 0x0

    .line 3897
    :try_start_9d
    const-string v4, "conversations"

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "conversation_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "name"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "generated_name"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string v6, "latest_message_timestamp"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d6
    .catchall {:try_start_9d .. :try_end_d6} :catchall_1af

    move-result-object v4

    .line 3904
    :try_start_d7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_28e

    .line 3905
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3906
    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3907
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 3908
    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3910
    :cond_f2
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_f6
    .catchall {:try_start_d7 .. :try_end_f6} :catchall_288

    move-result-wide v5

    move-wide/from16 v16, v5

    move-object v5, v7

    .line 3913
    :goto_fa
    if-eqz v4, :cond_ff

    .line 3914
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3918
    :cond_ff
    const-string v4, "conversation_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3919
    const-string v4, "conversation_name"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3920
    const-string v3, "message_row_id"

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3921
    const-string v3, "local_uri"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3923
    if-eqz v12, :cond_1b7

    const-string v3, "content://"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b7

    .line 3979
    :goto_127
    const-wide/16 v3, 0x1

    add-long v4, v16, v3

    .line 3980
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3981
    if-eqz p6, :cond_16b

    .line 3982
    const-string v3, "latest_message_text"

    invoke-virtual {v6, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3983
    const-string v3, "latest_message_image_url"

    invoke-virtual {v6, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3984
    const-string v3, "latest_message_author_id"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3986
    const-string v3, "latest_message_timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3987
    const-string v3, "latest_message_type"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3989
    const-string v3, "conversations"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3993
    :cond_16b
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 3994
    if-eqz p5, :cond_282

    const/4 v3, 0x7

    .line 3996
    :goto_171
    const-string v7, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3997
    if-eqz p6, :cond_185

    .line 3998
    const-string v3, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4000
    :cond_185
    const-string v3, "messages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    .line 4003
    return-object v20

    .line 3880
    :catchall_1a7
    move-exception v3

    move-object v4, v11

    :goto_1a9
    if-eqz v4, :cond_1ae

    .line 3881
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3880
    :cond_1ae
    throw v3

    .line 3913
    :catchall_1af
    move-exception v3

    move-object v4, v11

    :goto_1b1
    if-eqz v4, :cond_1b6

    .line 3914
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3913
    :cond_1b6
    throw v3

    .line 3928
    :cond_1b7
    if-eqz v5, :cond_275

    const-string v3, "c:"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_275

    .line 3932
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v18

    .line 3933
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 3934
    const/4 v11, 0x0

    .line 3936
    :try_start_1cb
    const-string v4, "participants_view"

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "participant_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "first_name"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "full_name"

    aput-object v6, v5, v3

    const/4 v3, 0x3

    const-string v6, "type"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "conversation_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_204
    .catchall {:try_start_1cb .. :try_end_204} :catchall_285

    move-result-object v4

    .line 3943
    :goto_205
    :try_start_205
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_248

    .line 3944
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v3

    .line 3945
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 3946
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3947
    if-eqz v5, :cond_221

    .line 3948
    invoke-virtual {v3, v5}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 3950
    :cond_221
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3951
    if-eqz v5, :cond_22b

    .line 3952
    invoke-virtual {v3, v5}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 3954
    :cond_22b
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(I)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 3956
    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    :try_end_240
    .catchall {:try_start_205 .. :try_end_240} :catchall_241

    goto :goto_205

    .line 3965
    :catchall_241
    move-exception v3

    :goto_242
    if-eqz v4, :cond_247

    .line 3966
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3965
    :cond_247
    throw v3

    .line 3958
    :cond_248
    :try_start_248
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_26d

    .line 3959
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->GROUP:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    :try_end_256
    .catchall {:try_start_248 .. :try_end_256} :catchall_241

    .line 3965
    :goto_256
    if-eqz v4, :cond_25b

    .line 3966
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3969
    :cond_25b
    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v3

    .line 3971
    const/4 v4, 0x0

    move/from16 v0, p5

    invoke-static {v3, v14, v13, v4, v0}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    goto/16 :goto_127

    .line 3961
    :cond_26d
    :try_start_26d
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    :try_end_274
    .catchall {:try_start_26d .. :try_end_274} :catchall_241

    goto :goto_256

    .line 3975
    :cond_275
    move/from16 v0, p5

    invoke-static {v5, v14, v13, v12, v0}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    goto/16 :goto_127

    .line 3994
    :cond_282
    const/4 v3, 0x1

    goto/16 :goto_171

    .line 3965
    :catchall_285
    move-exception v3

    move-object v4, v11

    goto :goto_242

    .line 3913
    :catchall_288
    move-exception v3

    goto/16 :goto_1b1

    .line 3880
    :catchall_28b
    move-exception v3

    goto/16 :goto_1a9

    :cond_28e
    move-object/from16 v3, v18

    move-object/from16 v5, v19

    goto/16 :goto_fa
.end method

.method public static sendMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2260
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2261
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessageLocally conversationRowId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_23
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2265
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2268
    :try_start_2e
    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v14

    .line 2269
    const/4 v3, 0x1

    .line 2270
    const-string v4, "c:"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15c

    .line 2272
    const/4 v3, 0x0

    move v13, v3

    .line 2276
    :goto_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v4}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_2e .. :try_end_57} :catchall_16a

    move-result-object v15

    .line 2279
    const-wide/16 v11, 0x0

    .line 2280
    const/4 v10, 0x0

    .line 2282
    :try_start_5b
    const-string v3, "messages"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "MAX(timestamp)"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "conversation_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_83
    .catchall {:try_start_5b .. :try_end_83} :catchall_162

    move-result-object v4

    .line 2286
    :try_start_84
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_176

    .line 2287
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_174

    move-result-wide v5

    .line 2290
    :goto_8f
    if-eqz v4, :cond_94

    .line 2291
    :try_start_91
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2294
    :cond_94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v3, v7

    .line 2295
    cmp-long v7, v3, v5

    if-gtz v7, :cond_a2

    .line 2296
    const-wide/16 v3, 0x1

    add-long/2addr v3, v5

    .line 2303
    :cond_a2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2304
    const-string v6, "latest_message_text"

    move-object/from16 v0, p4

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    const-string v6, "latest_message_image_url"

    move-object/from16 v0, p5

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    const-string v6, "latest_message_author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    const-string v6, "latest_message_timestamp"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2309
    const-string v6, "latest_message_type"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2311
    const-string v6, "conversations"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2314
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2315
    const-string v6, "message_id"

    invoke-virtual {v5, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2316
    const-string v6, "conversation_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2317
    const-string v6, "author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    const-string v6, "text"

    move-object/from16 v0, p4

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    const-string v6, "status"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2320
    const-string v6, "type"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2321
    const-string v6, "timestamp"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2322
    const-string v3, "notification_seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2323
    const-string v3, "image_url"

    move-object/from16 v0, p5

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    const-string v3, "messages"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2326
    if-eqz p6, :cond_14b

    .line 2327
    const/4 v4, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v14, v15, v0, v1, v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 2331
    :cond_14b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14e
    .catchall {:try_start_91 .. :try_end_14e} :catchall_16a

    .line 2333
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2335
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2336
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2337
    if-nez v3, :cond_16f

    const-wide/16 v2, -0x1

    :goto_15b
    return-wide v2

    .line 2273
    :cond_15c
    if-nez p6, :cond_179

    .line 2274
    const/4 v3, 0x2

    move v13, v3

    goto/16 :goto_3f

    .line 2290
    :catchall_162
    move-exception v3

    move-object v4, v10

    :goto_164
    if-eqz v4, :cond_169

    .line 2291
    :try_start_166
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2290
    :cond_169
    throw v3
    :try_end_16a
    .catchall {:try_start_166 .. :try_end_16a} :catchall_16a

    .line 2333
    :catchall_16a
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2337
    :cond_16f
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_15b

    .line 2290
    :catchall_174
    move-exception v3

    goto :goto_164

    :cond_176
    move-wide v5, v11

    goto/16 :goto_8f

    :cond_179
    move v13, v3

    goto/16 :goto_3f
.end method

.method public static sendPresenceRequestLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3041
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3042
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPresenceRequestLocally  conversationRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isPresent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_2b
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3048
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3050
    :try_start_36
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 3051
    invoke-static {v0, p4, p5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->presenceRequest(Ljava/lang/String;ZZ)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 3053
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_48

    .line 3055
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3057
    return-void

    .line 3055
    :catchall_48
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static sendTypingRequestLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing$Type;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3010
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3011
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTypingRequestLocally  conversationRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " typingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_2f
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3017
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3019
    :try_start_3a
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 3020
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->typingRequest(Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 3022
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_4c

    .line 3024
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3026
    return-void

    .line 3024
    :catchall_4c
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static setDatastoreVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3752
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3753
    const-string v1, "key"

    const-string v2, "datastore_version"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3755
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    const-string v1, "realtimechat_metadata"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 3759
    return-void
.end method

.method public static setMessageStatusLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 2877
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2878
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageStatusLocally  messageRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    :cond_22
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2884
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2888
    :try_start_2d
    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversation_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_55
    .catchall {:try_start_2d .. :try_end_55} :catchall_81

    move-result-object v2

    .line 2892
    :try_start_56
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2893
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_64
    .catchall {:try_start_56 .. :try_end_64} :catchall_8e

    move-result-object v8

    .line 2896
    :cond_65
    if-eqz v2, :cond_6a

    .line 2897
    :try_start_67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6a
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    .line 2900
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateMessageStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V

    .line 2901
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_89

    .line 2903
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2905
    if-eqz v8, :cond_80

    .line 2906
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2908
    :cond_80
    return-void

    .line 2896
    :catchall_81
    move-exception v1

    move-object v2, v8

    :goto_83
    if-eqz v2, :cond_88

    .line 2897
    :try_start_85
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2896
    :cond_88
    throw v1
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_89

    .line 2903
    :catchall_89
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2896
    :catchall_8e
    move-exception v1

    goto :goto_83
.end method

.method private static final syncParticipants(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/wireless/realtimechat/proto/Client$ClientConversation;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4541
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4542
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantList()Ljava/util/List;

    move-result-object v3

    .line 4544
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getInactiveParticipantList()Ljava/util/List;

    move-result-object v4

    .line 4548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4549
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4550
    const/4 v0, 0x0

    .line 4551
    const-string v1, "conversation_id=?"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4552
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4553
    const-string v1, " AND participant_id NOT IN ("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4554
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_2e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4555
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasParticipantId()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 4556
    add-int/lit8 v1, v1, 0x1

    .line 4557
    const-string v8, "?,"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4558
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    move v0, v1

    move v1, v0

    goto :goto_2e

    .line 4561
    :cond_51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4562
    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4563
    const-string v0, "active"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4564
    if-lez v1, :cond_7d

    .line 4565
    const-string v1, "conversation_participants"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4570
    :cond_7d
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4571
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 4572
    const-string v3, "participant_id"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4573
    const-string v3, "full_name"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4574
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_bd

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bd

    .line 4575
    const-string v3, "first_name"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4577
    :cond_bd
    const-string v3, "type"

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4578
    const-string v3, "participants"

    const-string v5, "participant_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v3, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 4581
    const-string v5, "EsConversationsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 4582
    const-string v5, "EsConversationsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update Participant "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    :cond_10b
    if-nez v3, :cond_113

    .line 4585
    const-string v3, "participants"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4588
    :cond_113
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 4589
    const-string v3, "conversation_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4590
    const-string v3, "participant_id"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4592
    const-string v0, "active"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4593
    const-string v0, "conversation_participants"

    const/4 v3, 0x0

    const/4 v5, 0x5

    invoke-virtual {p0, v0, v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_81

    .line 4597
    :cond_13b
    if-eqz v4, :cond_1fb

    .line 4598
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_141
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4599
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 4600
    const-string v3, "participant_id"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4601
    const-string v3, "full_name"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4602
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17d

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17d

    .line 4603
    const-string v3, "first_name"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4605
    :cond_17d
    const-string v3, "type"

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4606
    const-string v3, "participants"

    const-string v4, "participant_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 4609
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1cb

    .line 4610
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update Participant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    :cond_1cb
    if-nez v3, :cond_1d3

    .line 4613
    const-string v3, "participants"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4616
    :cond_1d3
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 4617
    const-string v3, "conversation_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4618
    const-string v3, "participant_id"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4620
    const-string v0, "active"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4621
    const-string v0, "conversation_participants"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p0, v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_141

    .line 4626
    :cond_1fb
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 4627
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->generateConversationName(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;JZ)Ljava/lang/String;

    move-result-object v0

    .line 4629
    const-string v1, "generated_name"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    const-string v0, "conversations"

    const-string v1, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4633
    return-void
.end method

.method private static updateConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$ClientConversation;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4413
    const-string v0, "EsConversationsData"

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 4414
    const-string v3, "EsConversationsData"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConversation Conversation id: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Muted: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getMuted()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", UnreadCount: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getUnreadCount()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasName()Z

    move-result v0

    if-eqz v0, :cond_13b

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_4c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    :cond_57
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4421
    const-string v4, "is_muted"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getMuted()Z

    move-result v0

    if-eqz v0, :cond_13f

    move v0, v1

    :goto_65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4423
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasId()Z

    move-result v0

    if-eqz v0, :cond_142

    .line 4424
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v4, "g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 4428
    :goto_7c
    const-string v0, "is_group"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4429
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasName()Z

    move-result v0

    if-eqz v0, :cond_152

    .line 4430
    const-string v0, "name"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4434
    :goto_94
    const-string v0, "unread_count"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getUnreadCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4435
    const-string v0, "conversation_id"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4436
    const-string v5, "is_visible"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasHidden()Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getHidden()Z

    move-result v0

    if-eqz v0, :cond_159

    move v0, v2

    :goto_b9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4438
    const-string v0, "is_awaiting_event_stream"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4439
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasFirstEventTimestamp()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 4440
    const-string v0, "EsConversationsData"

    invoke-static {v0, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 4441
    const-string v0, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting first event timestamp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getFirstEventTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    :cond_f3
    const-string v0, "first_event_timestamp"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getFirstEventTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4449
    :cond_100
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantList()Ljava/util/List;

    move-result-object v0

    .line 4450
    if-nez v4, :cond_15c

    .line 4451
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10a
    :goto_10a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4452
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10a

    .line 4454
    const-string v6, "avatar_id"

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4456
    const-string v6, "avatar_type"

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_10a

    .line 4414
    :cond_13b
    const-string v0, ""

    goto/16 :goto_4c

    :cond_13f
    move v0, v2

    .line 4421
    goto/16 :goto_65

    .line 4426
    :cond_142
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_150

    move v0, v1

    :goto_14d
    move v4, v0

    goto/16 :goto_7c

    :cond_150
    move v0, v2

    goto :goto_14d

    .line 4432
    :cond_152
    const-string v0, "name"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_94

    :cond_159
    move v0, v1

    .line 4436
    goto/16 :goto_b9

    .line 4462
    :cond_15c
    const-string v0, "conversations"

    const-string v5, "_id=?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p0, v0, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v5, p5

    .line 4466
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->syncParticipants(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/wireless/realtimechat/proto/Client$ClientConversation;)V

    .line 4467
    return-void
.end method

.method private static updateConversationErrorType(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4220
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4221
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConversationErrorType Conversation client Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FatalErrorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    :cond_2b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4226
    const-string v1, "fatal_error_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4228
    const-string v1, "conversations"

    const-string v2, "conversation_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4231
    return-void
.end method

.method private static final updateConversationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4478
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 4479
    const-string v1, "conversations"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "conversation_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4484
    :try_start_1f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 4485
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4486
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already have a conversation Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    :cond_46
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4489
    const-string v1, "conversations"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "conversation_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_64
    .catchall {:try_start_1f .. :try_end_64} :catchall_d9

    move-result-object v1

    .line 4494
    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 4495
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4498
    const-string v0, "conversation_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4499
    const-string v0, "messages"

    const-string v4, "conversation_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v0, v8, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4503
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 4504
    const-string v0, "conversation_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4506
    const-string v0, "conversation_participants"

    const-string v2, "conversation_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v8, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4511
    const-string v0, "conversations"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_65 .. :try_end_b8} :catchall_d4

    .line 4516
    :cond_b8
    :try_start_b8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_d9

    .line 4520
    :cond_bb
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4522
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 4523
    const-string v0, "conversation_id"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4524
    const-string v0, "conversations"

    const-string v1, "conversation_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v8, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4527
    return-void

    .line 4516
    :catchall_d4
    move-exception v0

    :try_start_d5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_d9

    .line 4520
    :catchall_d9
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateConversationMutedLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2728
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2729
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConversationMutedLocally conversationRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " muted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    :cond_2b
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2736
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2738
    :try_start_36
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2739
    const-string v3, "is_muted"

    if-eqz p4, :cond_79

    const/4 v0, 0x1

    :goto_40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2740
    const-string v0, "conversations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2744
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 2745
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->setConversationMuted(Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 2747
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_72
    .catchall {:try_start_36 .. :try_end_72} :catchall_7b

    .line 2749
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2751
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2752
    return-void

    .line 2739
    :cond_79
    const/4 v0, 0x0

    goto :goto_40

    .line 2749
    :catchall_7b
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static updateConversationName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3772
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3773
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConversationName Conversation Row id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    :cond_21
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3777
    const-string v1, "name"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3779
    const-string v1, "conversations"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3783
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3784
    return-void
.end method

.method public static updateConversationNameLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "name"
    .parameter "operationState"

    .prologue
    .line 2698
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2699
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConversationNameLocally conversationRowId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2704
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2706
    :try_start_2c
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 2707
    .local v0, conversationId:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->setConversationName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 2709
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_41

    .line 2711
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2713
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2714
    return-void

    .line 2711
    .end local v0           #conversationId:Ljava/lang/String;
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private static updateLatestEventTimestamp(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .registers 23
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4694
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4695
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLatestEventTimestamp ConversationRowId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    :cond_2f
    const-wide/16 v16, 0x0

    .line 4700
    const-wide/16 v14, 0x0

    .line 4701
    const/4 v13, 0x0

    .line 4702
    const/4 v12, 0x0

    .line 4703
    const/4 v11, 0x0

    .line 4705
    :try_start_36
    const-string v3, "realtimechat_metadata"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "value"

    aput-object v5, v4, v2

    const-string v5, "key = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "awaiting_conversation_list"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_53
    .catchall {:try_start_36 .. :try_end_53} :catchall_fa

    move-result-object v3

    .line 4710
    :try_start_54
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_115

    .line 4711
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_10e

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_115

    .line 4712
    const/4 v2, 0x1

    move v11, v2

    .line 4716
    :goto_64
    if-eqz v3, :cond_69

    .line 4717
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4721
    :cond_69
    const/4 v10, 0x0

    .line 4723
    :try_start_6a
    const-string v3, "conversations"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "is_awaiting_event_stream"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "latest_event_timestamp"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "latest_message_timestamp"

    aput-object v5, v4, v2

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_92
    .catchall {:try_start_6a .. :try_end_92} :catchall_104

    move-result-object v3

    .line 4730
    :try_start_93
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_110

    .line 4731
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_102

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_102

    const/4 v2, 0x1

    .line 4733
    :goto_a8
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4734
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_b1
    .catchall {:try_start_93 .. :try_end_b1} :catchall_10c

    move-result-wide v4

    .line 4737
    :goto_b2
    if-eqz v3, :cond_b7

    .line 4738
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4742
    :cond_b7
    cmp-long v3, p3, v6

    if-lez v3, :cond_f9

    .line 4743
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4744
    if-nez v2, :cond_cd

    if-nez v11, :cond_cd

    .line 4745
    const-string v2, "latest_event_timestamp"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4747
    :cond_cd
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_e0

    cmp-long v2, v4, p3

    if-lez v2, :cond_e0

    .line 4754
    const-string v2, "latest_message_timestamp"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4756
    :cond_e0
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_f9

    .line 4757
    const-string v2, "conversations"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4762
    :cond_f9
    return-void

    .line 4716
    :catchall_fa
    move-exception v2

    move-object v3, v11

    :goto_fc
    if-eqz v3, :cond_101

    .line 4717
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4716
    :cond_101
    throw v2

    .line 4731
    :cond_102
    const/4 v2, 0x0

    goto :goto_a8

    .line 4737
    :catchall_104
    move-exception v2

    move-object v3, v10

    :goto_106
    if-eqz v3, :cond_10b

    .line 4738
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4737
    :cond_10b
    throw v2

    :catchall_10c
    move-exception v2

    goto :goto_106

    .line 4716
    :catchall_10e
    move-exception v2

    goto :goto_fc

    :cond_110
    move v2, v13

    move-wide v4, v14

    move-wide/from16 v6, v16

    goto :goto_b2

    :cond_115
    move v11, v12

    goto/16 :goto_64
.end method

.method public static final updateMessageId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3826
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3827
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3828
    invoke-static {p0, p2}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 3829
    if-nez v1, :cond_48

    .line 3830
    const-string v0, "EsConversationsData"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 3831
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to update a message id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] for nonexistant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conversation id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    :cond_47
    :goto_47
    return-void

    .line 3837
    :cond_48
    const-string v2, "messages"

    const-string v3, "message_id=? AND conversation_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p0, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_47
.end method

.method private static updateMessageStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4203
    const-string v1, "status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4204
    const-string v1, "messages"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4207
    return-void
.end method

.method public static updateMessageUriAndSendLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJZLjava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2479
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2480
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMessageUriAndSendLocally messageRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2484
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2486
    :try_start_2c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2487
    const-string v2, "image_url"

    invoke-virtual {v1, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    const-string v2, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2492
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->sendMessageInDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;

    .line 2495
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_60
    .catchall {:try_start_2c .. :try_end_60} :catchall_67

    .line 2497
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2499
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2500
    return-void

    .line 2497
    :catchall_67
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updatePreviewSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;IJ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 4171
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4172
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewSystemMessage  messageType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " senderId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    :cond_36
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4178
    const-string v0, "is_visible"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4179
    const-string v0, "latest_message_timestamp"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4180
    const-string v0, "latest_message_author_id"

    invoke-virtual {v1, v0, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4181
    const-string v0, "latest_message_text"

    invoke-virtual {v1, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4182
    const-string v2, "latest_message_image_url"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    const-string v0, "latest_message_type"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4184
    const-string v0, "conversations"

    const-string v2, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4187
    return-void
.end method
