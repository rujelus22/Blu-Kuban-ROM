.class public Lcom/google/android/apps/plus/content/EsConversationsData;
.super Ljava/lang/Object;
.source "EsConversationsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/content/EsConversationsData$4;
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

.field private static final sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsConversationsData;->sHandler:Landroid/os/Handler;

    .line 419
    new-instance v0, Lcom/google/android/apps/plus/content/EsConversationsData$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/content/EsConversationsData$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsConversationsData;->sConversationComparator:Ljava/util/Comparator;

    return-void
.end method

.method public static acceptConversationLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "inviterId"
    .parameter "operationState"

    .prologue
    const/4 v2, 0x3

    .line 3047
    const-string v1, "EsConversationsData"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3048
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptConversationLocally conversationRowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 3053
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3055
    :try_start_2c
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3056
    .local v7, values:Landroid/content/ContentValues;
    const-string v1, "is_pending_accept"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3057
    const-string v1, "conversations"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v6, v1, v7, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3061
    invoke-static {v6, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 3062
    .local v0, conversationId:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->replyToInviteRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 3064
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    sget v5, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->MAX_EVENTS_PER_REQUEST:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getEventStream(Ljava/lang/String;JJI)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 3067
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 3068
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requesting 20 events since 0 for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_85
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_88
    .catchall {:try_start_2c .. :try_end_88} :catchall_8f

    .line 3073
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3075
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3076
    return-void

    .line 3073
    .end local v0           #conversationId:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    :catchall_8f
    move-exception v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public static checkMessageSentLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)I
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"
    .parameter "operationState"

    .prologue
    .line 2792
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2793
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMessageSentLocally messageRowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2797
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2798
    const/4 v10, 0x0

    .line 2799
    .local v10, messageStatus:I
    const/4 v8, 0x0

    .line 2801
    .local v8, conversationRowId:Ljava/lang/Long;
    const/4 v9, 0x0

    .line 2803
    .local v9, cursor:Landroid/database/Cursor;
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

    move-result-object v9

    .line 2808
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 2809
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2810
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_70
    .catchall {:try_start_2f .. :try_end_70} :catchall_aa

    move-result v5

    .line 2813
    .end local v10           #messageStatus:I
    .local v5, messageStatus:I
    :goto_71
    if-eqz v9, :cond_76

    .line 2814
    :try_start_73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2817
    :cond_76
    invoke-static {v0, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryMessageStatus(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v5

    .line 2819
    if-eqz v5, :cond_7f

    const/4 v1, 0x1

    if-ne v5, v1, :cond_b7

    .line 2821
    :cond_7f
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 2822
    const-string v1, "EsConversationsData"

    const-string v2, "sending again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_73 .. :try_end_8f} :catchall_d3

    .line 2824
    :cond_8f
    const/4 v10, 0x7

    .line 2825
    .end local v5           #messageStatus:I
    .restart local v10       #messageStatus:I
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v7, p4

    :try_start_96
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->sendMessageInDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_b1

    move v5, v10

    .line 2841
    .end local v10           #messageStatus:I
    .restart local v5       #messageStatus:I
    :cond_9a
    :goto_9a
    :try_start_9a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_d3

    .line 2843
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2845
    if-eqz v8, :cond_a9

    .line 2846
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2848
    :cond_a9
    return v5

    .line 2813
    .end local v5           #messageStatus:I
    .restart local v10       #messageStatus:I
    :catchall_aa
    move-exception v1

    if-eqz v9, :cond_b0

    .line 2814
    :try_start_ad
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b0
    throw v1
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_b1

    .line 2843
    :catchall_b1
    move-exception v1

    move v5, v10

    .end local v10           #messageStatus:I
    .restart local v5       #messageStatus:I
    :goto_b3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 2828
    :cond_b7
    const/4 v1, 0x7

    if-ne v5, v1, :cond_d5

    .line 2830
    :try_start_ba
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 2831
    const-string v1, "EsConversationsData"

    const-string v2, "giving up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    :cond_ca
    const/16 v5, 0x8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    .line 2834
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateMessageStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V

    goto :goto_9a

    .line 2843
    :catchall_d3
    move-exception v1

    goto :goto_b3

    .line 2837
    :cond_d5
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 2838
    const-string v1, "EsConversationsData"

    const-string v2, "message sent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_ba .. :try_end_e5} :catchall_d3

    goto :goto_9a

    .end local v5           #messageStatus:I
    .restart local v10       #messageStatus:I
    :cond_e6
    move v5, v10

    .end local v10           #messageStatus:I
    .restart local v5       #messageStatus:I
    goto :goto_71
.end method

.method public static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "db"
    .parameter "account"

    .prologue
    .line 3517
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3518
    const-string v0, "EsConversationsData"

    const-string v1, "cleanupData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    :cond_10
    const-string v0, "participants"

    const-string v1, "(SELECT COUNT(participant_id) FROM conversation_participants WHERE participants.participant_id=conversation_participants.participant_id)=0"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3530
    return-void
.end method

.method public static connectionStarted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3482
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3484
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3486
    :try_start_b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3487
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3488
    const-string v2, "messages"

    const-string v3, "status=0 OR status=1"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3492
    const-string v2, "status"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3493
    const-string v2, "messages"

    const-string v3, "status=7"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3496
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 3497
    const-string v2, "key"

    const-string v3, "awaiting_conversation_list"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    const-string v2, "value"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3501
    const-string v2, "realtimechat_metadata"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 3504
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_53
    .catchall {:try_start_b .. :try_end_53} :catchall_57

    .line 3506
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3508
    return-void

    .line 3506
    .end local v1           #values:Landroid/content/ContentValues;
    :catchall_57
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public static final convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I
    .registers 4
    .parameter "participant"

    .prologue
    .line 5158
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 5159
    sget-object v0, Lcom/google/android/apps/plus/content/EsConversationsData$4;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$Participant$Type:[I

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getType()Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 5169
    const-string v0, "EsConversationsData"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 5170
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

    .line 5174
    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    return v0

    .line 5161
    :pswitch_3c
    const/4 v0, 0x1

    goto :goto_3b

    .line 5163
    :pswitch_3e
    const/4 v0, 0x2

    goto :goto_3b

    .line 5165
    :pswitch_40
    const/4 v0, 0x3

    goto :goto_3b

    .line 5167
    :pswitch_42
    const/4 v0, 0x4

    goto :goto_3b

    .line 5159
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
    .line 5178
    packed-switch p0, :pswitch_data_12

    .line 5188
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ANDROID:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    :goto_5
    return-object v0

    .line 5180
    :pswitch_6
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->INVITED:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_5

    .line 5182
    :pswitch_9
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->SMS:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_5

    .line 5184
    :pswitch_c
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->ANDROID:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_5

    .line 5186
    :pswitch_f
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;->IPHONE:Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    goto :goto_5

    .line 5178
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static createConversationLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;
    .registers 37
    .parameter "context"
    .parameter "account"
    .parameter "conversation"
    .parameter "text"
    .parameter "connected"
    .parameter "operationState"

    .prologue
    .line 2367
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2368
    const-string v4, "EsConversationsData"

    const-string v5, "createConversationLocally:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_10
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2372
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2373
    const/16 v19, 0x0

    .line 2374
    .local v19, conversationRowId:Ljava/lang/Long;
    const/16 v24, 0x0

    .line 2375
    .local v24, messageRowId:Ljava/lang/Long;
    const/16 v29, 0x0

    .line 2378
    .local v29, suggestionsChanged:Z
    :try_start_21
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantList()Ljava/util/List;

    move-result-object v26

    .line 2379
    .local v26, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_41

    .line 2381
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryOneToOneConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    .line 2386
    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    mul-long v7, v4, v9

    .line 2388
    .local v7, timestamp:J
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

    move-result-object v17

    .line 2390
    .local v17, clientMessageId:Ljava/lang/String;
    const/16 v28, 0x0

    .line 2391
    .local v28, status:I
    if-nez v19, :cond_1d7

    .line 2392
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 2393
    const-string v4, "EsConversationsData"

    const-string v5, "Creating new conversation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 2396
    invoke-static/range {v3 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 2398
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->ensureLocalParticipantExists(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2400
    if-eqz p4, :cond_1d3

    .line 2401
    const/16 v28, 0x1

    .line 2402
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 2447
    :goto_a0
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasType()Z

    move-result v4

    if-eqz v4, :cond_d3

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-result-object v4

    sget-object v5, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    if-ne v4, v5, :cond_d3

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantCount()I

    move-result v4

    if-lez v4, :cond_d3

    .line 2451
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v25

    .line 2452
    .local v25, oneToOneParticipantId:Ljava/lang/String;
    const-string v4, "messenger_suggestions"

    const-string v5, "participant_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v25, v6, v9

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 2455
    .local v20, count:I
    if-lez v20, :cond_d3

    .line 2456
    const/16 v29, 0x1

    .line 2460
    .end local v20           #count:I
    .end local v25           #oneToOneParticipantId:Ljava/lang/String;
    :cond_d3
    if-eqz p3, :cond_19e

    .line 2462
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 2463
    .local v30, values:Landroid/content/ContentValues;
    const-string v4, "message_id"

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    const-string v4, "conversation_id"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2465
    const-string v4, "author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    const-string v4, "text"

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    const-string v4, "status"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2468
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2469
    const-string v4, "timestamp"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2470
    const-string v4, "notification_seen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2471
    const-string v4, "messages"

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 2475
    invoke-virtual/range {v30 .. v30}, Landroid/content/ContentValues;->clear()V

    .line 2476
    const-string v4, "is_visible"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2477
    const-string v4, "latest_message_timestamp"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2478
    const-string v4, "latest_message_author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    const-string v4, "latest_message_text"

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    const-string v5, "latest_message_image_url"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    const-string v4, "latest_message_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2485
    const-string v4, "conversations"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2490
    .end local v30           #values:Landroid/content/ContentValues;
    :cond_19e
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a1
    .catchall {:try_start_21 .. :try_end_1a1} :catchall_292

    .line 2492
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2494
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2495
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2496
    if-eqz v29, :cond_1b7

    .line 2497
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifySuggestionsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2500
    :cond_1b7
    new-instance v27, Landroid/os/Bundle;

    invoke-direct/range {v27 .. v27}, Landroid/os/Bundle;-><init>()V

    .line 2501
    .local v27, result:Landroid/os/Bundle;
    const-string v4, "conversation_row_id"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2502
    const-string v4, "message_row_id"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2503
    return-object v27

    .line 2405
    .end local v27           #result:Landroid/os/Bundle;
    :cond_1d3
    const/16 v28, 0x2

    goto/16 :goto_a0

    .line 2408
    :cond_1d7
    :try_start_1d7
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1fa

    .line 2409
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using existing conversation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fa
    .catchall {:try_start_1d7 .. :try_end_1fa} :catchall_292

    .line 2412
    :cond_1fa
    const-wide/16 v21, 0x0

    .line 2413
    .local v21, currentMessageTimestamp:J
    const/16 v23, 0x0

    .line 2415
    .local v23, cursor:Landroid/database/Cursor;
    :try_start_1fe
    const-string v10, "conversations"

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "latest_message_timestamp"

    aput-object v5, v11, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v3

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 2419
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_236

    .line 2420
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_235
    .catchall {:try_start_1fe .. :try_end_235} :catchall_297

    move-result-wide v21

    .line 2423
    :cond_236
    if-eqz v23, :cond_23b

    .line 2424
    :try_start_238
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 2427
    :cond_23b
    cmp-long v4, v21, v7

    if-lez v4, :cond_243

    .line 2428
    const-wide/16 v4, 0x1

    add-long v7, v21, v4

    .line 2432
    :cond_243
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 2433
    .restart local v30       #values:Landroid/content/ContentValues;
    const-string v4, "is_pending_leave"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2434
    const-string v4, "conversations"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2437
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v18

    .line 2438
    .local v18, conversationId:Ljava/lang/String;
    if-eqz p4, :cond_29e

    .line 2439
    const/16 v28, 0x1

    .line 2440
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_290
    .catchall {:try_start_238 .. :try_end_290} :catchall_292

    goto/16 :goto_a0

    .line 2492
    .end local v7           #timestamp:J
    .end local v17           #clientMessageId:Ljava/lang/String;
    .end local v18           #conversationId:Ljava/lang/String;
    .end local v21           #currentMessageTimestamp:J
    .end local v23           #cursor:Landroid/database/Cursor;
    .end local v26           #participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    .end local v28           #status:I
    .end local v30           #values:Landroid/content/ContentValues;
    :catchall_292
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 2423
    .restart local v7       #timestamp:J
    .restart local v17       #clientMessageId:Ljava/lang/String;
    .restart local v21       #currentMessageTimestamp:J
    .restart local v23       #cursor:Landroid/database/Cursor;
    .restart local v26       #participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    .restart local v28       #status:I
    :catchall_297
    move-exception v4

    if-eqz v23, :cond_29d

    .line 2424
    :try_start_29a
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_29d
    throw v4
    :try_end_29e
    .catchall {:try_start_29a .. :try_end_29e} :catchall_292

    .line 2443
    .restart local v18       #conversationId:Ljava/lang/String;
    .restart local v30       #values:Landroid/content/ContentValues;
    :cond_29e
    const/16 v28, 0x2

    goto/16 :goto_a0
.end method

.method private static determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)I
    .registers 4
    .parameter "message"

    .prologue
    const/4 v0, 0x3

    .line 5198
    sget-object v1, Lcom/google/android/apps/plus/content/EsConversationsData$4;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$ChatMessage$ReceiverState:[I

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_26

    .line 5208
    const-string v0, "EsConversationsData"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5209
    const-string v0, "EsConversationsData"

    const-string v1, "ChatMessage\'s read state could not be determined."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5211
    :cond_20
    const/4 v0, 0x0

    :goto_21
    :pswitch_21
    return v0

    .line 5202
    :pswitch_22
    const/4 v0, 0x4

    goto :goto_21

    .line 5204
    :pswitch_24
    const/4 v0, 0x5

    goto :goto_21

    .line 5198
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_22
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method

.method private static determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;)I
    .registers 4
    .parameter "state"

    .prologue
    const/4 v0, 0x5

    .line 5221
    sget-object v1, Lcom/google/android/apps/plus/content/EsConversationsData$4;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$EventStreamResponse$ReceiverState:[I

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    .line 5231
    const-string v0, "EsConversationsData"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5232
    const-string v0, "EsConversationsData"

    const-string v1, "ChatMessage\'s read state could not be determined."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    :pswitch_1d
    return v0

    .line 5223
    :pswitch_1e
    const/4 v0, 0x3

    goto :goto_1d

    .line 5225
    :pswitch_20
    const/4 v0, 0x4

    goto :goto_1d

    .line 5221
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_20
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public static ensureLocalParticipantExists(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 13
    .parameter "db"
    .parameter "context"
    .parameter "account"

    .prologue
    .line 4095
    const/4 v8, 0x0

    .line 4097
    .local v8, cursor:Landroid/database/Cursor;
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

    move-result-object v8

    .line 4102
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_42

    .line 4104
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 4105
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "participant_id"

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4106
    const-string v0, "full_name"

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4107
    const-string v0, "participants"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_48

    .line 4110
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_42
    if-eqz v8, :cond_47

    .line 4111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4114
    :cond_47
    return-void

    .line 4110
    :catchall_48
    move-exception v0

    if-eqz v8, :cond_4e

    .line 4111
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v0
.end method

.method private static insertConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J
    .registers 17
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversation"
    .parameter "latestMessageTimestamp"

    .prologue
    .line 4684
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 4685
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "is_muted"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getMuted()Z

    move-result v0

    if-eqz v0, :cond_11f

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4687
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasType()Z

    move-result v0

    if-eqz v0, :cond_122

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->GROUP:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    if-ne v0, v1, :cond_122

    const/4 v4, 0x1

    .line 4689
    .local v4, isGroup:Z
    :goto_24
    const-string v0, "is_group"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4690
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasName()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 4691
    const-string v0, "name"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4696
    :goto_3c
    const-string v0, "unread_count"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getUnreadCount()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4697
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasHidden()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getHidden()Z

    move-result v0

    if-eqz v0, :cond_12c

    const/4 v7, 0x1

    .line 4698
    .local v7, isHidden:Z
    :goto_56
    const-string v1, "is_visible"

    if-eqz v7, :cond_12f

    const/4 v0, 0x0

    :goto_5b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4699
    const-string v0, "is_pending_leave"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4700
    const-string v0, "is_awaiting_event_stream"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4701
    const-string v0, "latest_message_timestamp"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4702
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasFirstEventTimestamp()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 4703
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 4704
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting first event timestamp "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getFirstEventTimestamp()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    :cond_aa
    const-string v0, "first_event_timestamp"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getFirstEventTimestamp()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4710
    :cond_b7
    const/4 v6, 0x0

    .line 4711
    .local v6, inviter:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasInviter()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 4712
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getInviter()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v6

    .line 4713
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 4714
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conversation inviter "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4721
    :cond_e7
    :goto_e7
    if-eqz v6, :cond_f2

    .line 4722
    const-string v0, "inviter_id"

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4724
    :cond_f2
    const-string v1, "is_pending_accept"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasNeedsAccept()Z

    move-result v0

    if-eqz v0, :cond_143

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getNeedsAccept()Z

    move-result v0

    if-eqz v0, :cond_143

    const/4 v0, 0x1

    :goto_101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4727
    const-string v0, "conversation_id"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4728
    const-string v0, "conversations"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .local v2, localRowId:J
    move-object v0, p0

    move-object v1, p2

    move-object v5, p3

    .line 4729
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->syncParticipants(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/wireless/realtimechat/proto/Client$ClientConversation;)V

    .line 4731
    return-wide v2

    .line 4685
    .end local v2           #localRowId:J
    .end local v4           #isGroup:Z
    .end local v6           #inviter:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v7           #isHidden:Z
    :cond_11f
    const/4 v0, 0x0

    goto/16 :goto_e

    .line 4687
    :cond_122
    const/4 v4, 0x0

    goto/16 :goto_24

    .line 4694
    .restart local v4       #isGroup:Z
    :cond_125
    const-string v0, "name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 4697
    :cond_12c
    const/4 v7, 0x0

    goto/16 :goto_56

    .line 4698
    .restart local v7       #isHidden:Z
    :cond_12f
    const/4 v0, 0x1

    goto/16 :goto_5b

    .line 4717
    .restart local v6       #inviter:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_132
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 4718
    const-string v0, "EsConversationsData"

    const-string v1, "no inviter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 4724
    :cond_143
    const/4 v0, 0x0

    goto :goto_101
.end method

.method public static insertLocalPhotoLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;
    .registers 28
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "uri"
    .parameter "connected"
    .parameter "operationState"

    .prologue
    .line 2616
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2617
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertLocalPhotoLocally conversationRowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :cond_23
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 2620
    .local v17, result:Landroid/os/Bundle;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2622
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2623
    const/16 v16, 0x0

    .line 2625
    .local v16, messageRowId:Ljava/lang/Long;
    const/4 v11, 0x0

    .line 2626
    .local v11, conversationId:Ljava/lang/String;
    const/4 v12, 0x0

    .line 2627
    .local v12, conversationName:Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 2628
    .local v14, latestMessageTimestamp:J
    const/4 v13, 0x0

    .line 2630
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_3a
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

    move-result-object v13

    .line 2638
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 2639
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2640
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2641
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 2642
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2644
    :cond_8d
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_91
    .catchall {:try_start_3a .. :try_end_91} :catchall_182

    move-result-wide v14

    .line 2647
    :cond_92
    if-eqz v13, :cond_97

    .line 2648
    :try_start_94
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2651
    :cond_97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v18, v3, v5

    .line 2652
    .local v18, timestamp:J
    cmp-long v3, v18, v14

    if-gtz v3, :cond_a7

    .line 2653
    const-wide/16 v3, 0x1

    add-long v18, v14, v3

    .line 2656
    :cond_a7
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

    move-result-object v10

    .line 2659
    .local v10, clientMessageId:Ljava/lang/String;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 2660
    .local v20, values:Landroid/content/ContentValues;
    const-string v3, "latest_message_image_url"

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    const-string v3, "latest_message_author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    const-string v3, "latest_message_timestamp"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2664
    const-string v3, "conversations"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2667
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 2668
    const-string v3, "message_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    const-string v3, "conversation_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2670
    const-string v3, "author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    const-string v3, "status"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2672
    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2673
    const-string v3, "timestamp"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2674
    const-string v3, "notification_seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2675
    const-string v3, "image_url"

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    const-string v3, "messages"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 2678
    const-string v3, "conversation_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    const-string v3, "conversation_name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    const-string v3, "message_row_id"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2681
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_178
    .catchall {:try_start_94 .. :try_end_178} :catchall_189

    .line 2683
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2685
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2686
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2687
    return-object v17

    .line 2647
    .end local v10           #clientMessageId:Ljava/lang/String;
    .end local v18           #timestamp:J
    .end local v20           #values:Landroid/content/ContentValues;
    :catchall_182
    move-exception v3

    if-eqz v13, :cond_188

    .line 2648
    :try_start_185
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_188
    throw v3
    :try_end_189
    .catchall {:try_start_185 .. :try_end_189} :catchall_189

    .line 2683
    :catchall_189
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private static insertParticipant(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Data$Participant;)V
    .registers 20
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "participant"

    .prologue
    .line 4343
    const/4 v10, 0x0

    .line 4344
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 4346
    .local v11, maxOrder:I
    :try_start_2
    const-string v3, "conversation_participants"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "MAX(sequence)"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conversation_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4350
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4351
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_b2

    move-result v11

    .line 4354
    :cond_35
    if-eqz v10, :cond_3a

    .line 4355
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4359
    :cond_3a
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 4360
    .local v13, values:Landroid/content/ContentValues;
    const-string v2, "participant_id"

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4361
    const-string v2, "first_name"

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4362
    const-string v2, "full_name"

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    const-string v2, "type"

    invoke-static/range {p5 .. p5}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4365
    const-string v2, "participants"

    const-string v3, "participant_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v2, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 4368
    .local v12, updateCount:I
    if-nez v12, :cond_81

    .line 4369
    const-string v2, "participants"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4372
    :cond_81
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 4373
    const-string v2, "conversation_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4374
    const-string v2, "participant_id"

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4375
    const-string v2, "active"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4376
    const-string v2, "sequence"

    add-int/lit8 v3, v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4377
    const-string v2, "conversation_participants"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4378
    return-void

    .line 4354
    .end local v12           #updateCount:I
    .end local v13           #values:Landroid/content/ContentValues;
    :catchall_b2
    move-exception v2

    if-eqz v10, :cond_b8

    .line 4355
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b8
    throw v2
.end method

.method private static insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;IZLjava/lang/String;IJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J
    .registers 34
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "text"
    .parameter "messageState"
    .parameter "allowNotification"
    .parameter "senderId"
    .parameter "messageType"
    .parameter "timestamp"
    .parameter "sendReceipts"
    .parameter "operationState"

    .prologue
    .line 4398
    const-string v5, "EsConversationsData"

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 4399
    const-string v5, "EsConversationsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertSystemMessage  text: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " messageType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " senderId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " messageState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " allowNotification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p10

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    :cond_5f
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryMessageRowId(Landroid/database/sqlite/SQLiteDatabase;JJ)Ljava/lang/Long;

    move-result-object v17

    .line 4409
    .local v17, messageRowId:Ljava/lang/Long;
    if-nez v17, :cond_21f

    .line 4410
    const/4 v5, 0x5

    move/from16 v0, p6

    if-eq v0, v5, :cond_87

    if-eqz p7, :cond_87

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    const-wide v7, 0x4bb50894ce390L

    cmp-long v5, p10, v7

    if-gez v5, :cond_214

    :cond_87
    const/16 v18, 0x1

    .line 4416
    .local v18, notificationSeen:Z
    :goto_89
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 4417
    .local v19, values:Landroid/content/ContentValues;
    const-string v5, "conversation_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4418
    const-string v5, "author_id"

    move-object/from16 v0, v19

    move-object/from16 v1, p8

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4419
    const-string v5, "text"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4420
    const-string v5, "status"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4421
    const-string v5, "type"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4422
    const-string v5, "timestamp"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4423
    const-string v5, "notification_seen"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4424
    const-string v5, "messages"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 4426
    if-eqz p7, :cond_20f

    .line 4427
    const-wide/16 v15, 0x0

    .line 4428
    .local v15, latestMessageTimestamp:J
    const/4 v14, 0x0

    .line 4429
    .local v14, conversationId:Ljava/lang/String;
    const/4 v13, 0x0

    .line 4431
    .local v13, conversationCursor:Landroid/database/Cursor;
    :try_start_ec
    const-string v6, "conversations"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "conversation_id"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "latest_message_timestamp"

    aput-object v8, v7, v5

    const-string v8, "_id=?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4437
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_120

    .line 4438
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4439
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_11f
    .catchall {:try_start_ec .. :try_end_11f} :catchall_218

    move-result-wide v15

    .line 4442
    :cond_120
    if-eqz v13, :cond_125

    .line 4443
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4447
    :cond_125
    const-string v5, "EsConversationsData"

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_153

    .line 4448
    const-string v5, "EsConversationsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new message timestamp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p10

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " conversation latest "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v0, v15

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    :cond_153
    cmp-long v5, p10, v15

    if-ltz v5, :cond_1bd

    .line 4453
    const-string v5, "EsConversationsData"

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_167

    .line 4454
    const-string v5, "EsConversationsData"

    const-string v7, "updating latest message"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    :cond_167
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 4457
    const-string v5, "is_visible"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4458
    const-string v5, "latest_message_timestamp"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4459
    const-string v5, "latest_message_author_id"

    move-object/from16 v0, v19

    move-object/from16 v1, p8

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4460
    const-string v5, "latest_message_text"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4461
    const-string v7, "latest_message_image_url"

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4462
    const-string v5, "latest_message_type"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4463
    const-string v5, "conversations"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4468
    :cond_1bd
    move-object v6, v14

    .line 4469
    .local v6, finalConversationId:Ljava/lang/String;
    sget-object v12, Lcom/google/android/apps/plus/content/EsConversationsData;->sHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/apps/plus/content/EsConversationsData$3;

    move-wide/from16 v7, p10

    move/from16 v9, p6

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/plus/content/EsConversationsData$3;-><init>(Ljava/lang/String;JILandroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v12, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4482
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20f

    if-eqz p12, :cond_20f

    const/4 v5, 0x3

    move/from16 v0, p6

    if-ne v0, v5, :cond_20f

    .line 4484
    sget-object v5, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-wide/from16 v0, p10

    invoke-static {v14, v0, v1, v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReceipt(Ljava/lang/String;JLcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v5

    move-object/from16 v0, p13

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 4486
    invoke-virtual/range {p13 .. p13}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_20f

    invoke-virtual/range {p13 .. p13}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v7, p3

    if-nez v5, :cond_20f

    .line 4488
    sget-object v5, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->READ:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-wide/from16 v0, p10

    invoke-static {v14, v0, v1, v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReceipt(Ljava/lang/String;JLcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v5

    move-object/from16 v0, p13

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 4494
    .end local v6           #finalConversationId:Ljava/lang/String;
    .end local v13           #conversationCursor:Landroid/database/Cursor;
    .end local v14           #conversationId:Ljava/lang/String;
    .end local v15           #latestMessageTimestamp:J
    :cond_20f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 4497
    .end local v18           #notificationSeen:Z
    .end local v19           #values:Landroid/content/ContentValues;
    :goto_213
    return-wide v7

    .line 4410
    :cond_214
    const/16 v18, 0x0

    goto/16 :goto_89

    .line 4442
    .restart local v13       #conversationCursor:Landroid/database/Cursor;
    .restart local v14       #conversationId:Ljava/lang/String;
    .restart local v15       #latestMessageTimestamp:J
    .restart local v18       #notificationSeen:Z
    .restart local v19       #values:Landroid/content/ContentValues;
    :catchall_218
    move-exception v5

    if-eqz v13, :cond_21e

    .line 4443
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_21e
    throw v5

    .line 4497
    .end local v13           #conversationCursor:Landroid/database/Cursor;
    .end local v14           #conversationId:Ljava/lang/String;
    .end local v15           #latestMessageTimestamp:J
    .end local v18           #notificationSeen:Z
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_21f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_213
.end method

.method public static inviteParticipantsLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/util/List;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter
    .parameter "operationState"
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
    .line 3356
    .local p4, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 3357
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inviteParticipantsLocally  conversationRowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    :cond_23
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3362
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3365
    :try_start_2e
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_85

    .line 3366
    .local v11, currentParticipants:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 3368
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_34
    const-string v3, "participants_view"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "participant_id"

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

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3374
    :goto_6f
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 3375
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catchall {:try_start_34 .. :try_end_7d} :catchall_7e

    goto :goto_6f

    .line 3378
    :catchall_7e
    move-exception v3

    if-eqz v12, :cond_84

    .line 3379
    :try_start_81
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_84
    throw v3
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_85

    .line 3402
    .end local v11           #currentParticipants:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12           #cursor:Landroid/database/Cursor;
    :catchall_85
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 3378
    .restart local v11       #currentParticipants:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_8a
    if-eqz v12, :cond_8f

    .line 3379
    :try_start_8c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3384
    :cond_8f
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3385
    .local v14, needInvite:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_98
    :goto_98
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 3386
    .local v15, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v15}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    .line 3387
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 3388
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inviting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    :cond_e1
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 3395
    .end local v15           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_e5
    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v10

    .line 3397
    .local v10, conversationId:Ljava/lang/String;
    invoke-static {v10, v14}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->inviteParticipants(Ljava/lang/String;Ljava/util/Collection;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 3400
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f7
    .catchall {:try_start_8c .. :try_end_f7} :catchall_85

    .line 3402
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3404
    return-void
.end method

.method public static leaveConversationLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "operationState"

    .prologue
    .line 3417
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3418
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leaveConversationLocally  conversationRowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3423
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3425
    :try_start_2c
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 3427
    .local v0, conversationId:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3428
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "is_pending_leave"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3429
    const-string v3, "latest_event_timestamp"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3430
    const-string v3, "earliest_event_timestamp"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3431
    const-string v3, "EsConversationsData"

    const-string v4, "updating latest event timestamp 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
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

    .line 3437
    const-string v3, "messages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conversation_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3441
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->leaveConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 3443
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9e
    .catchall {:try_start_2c .. :try_end_9e} :catchall_a5

    .line 3445
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3447
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3448
    return-void

    .line 3445
    .end local v0           #conversationId:Ljava/lang/String;
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_a5
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public static markAllNotificationsAsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3458
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3460
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3462
    :try_start_b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3463
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "notification_seen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3464
    const-string v2, "messages"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3465
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_2b

    .line 3467
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3469
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3470
    return-void

    .line 3467
    .end local v1           #values:Landroid/content/ContentValues;
    :catchall_2b
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public static markConversationReadLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "operationState"

    .prologue
    .line 2861
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2862
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "markConversationReadLocally conversationRowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_23
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2866
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2868
    :try_start_2e
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2869
    .local v16, values:Landroid/content/ContentValues;
    const-string v3, "notification_seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2870
    const-string v3, "messages"

    const-string v4, "conversation_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2874
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 2875
    const-string v3, "unread_count"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2876
    const-string v3, "conversations"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2880
    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_2e .. :try_end_79} :catchall_10f

    move-result-object v10

    .line 2882
    .local v10, conversationId:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2884
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_7b
    const-string v3, "messages_view"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "timestamp"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "status"

    aput-object v6, v4, v5

    const-string v5, "(status=? OR status=?) AND author_id!=? AND conversation_id=?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2897
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 2898
    .local v15, timestamps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_b9
    :goto_b9
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_114

    .line 2899
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 2900
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending read receipt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_e5
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2903
    .local v13, timestamp:J
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2905
    .local v12, status:I
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2906
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setShouldTriggerNotifications()V

    .line 2908
    const/4 v3, 0x4

    if-eq v12, v3, :cond_b9

    .line 2911
    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    invoke-static {v10, v13, v14, v3}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReceipt(Ljava/lang/String;JLcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_107
    .catchall {:try_start_7b .. :try_end_107} :catchall_108

    goto :goto_b9

    .line 2921
    .end local v12           #status:I
    .end local v13           #timestamp:J
    .end local v15           #timestamps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_108
    move-exception v3

    if-eqz v11, :cond_10e

    .line 2922
    :try_start_10b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_10e
    throw v3
    :try_end_10f
    .catchall {:try_start_10b .. :try_end_10f} :catchall_10f

    .line 2928
    .end local v10           #conversationId:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #values:Landroid/content/ContentValues;
    :catchall_10f
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2915
    .restart local v10       #conversationId:Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v15       #timestamps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v16       #values:Landroid/content/ContentValues;
    :cond_114
    :try_start_114
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_123

    .line 2916
    invoke-static {v10, v15}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReadReceipts(Ljava/lang/String;Ljava/util/List;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_123
    .catchall {:try_start_114 .. :try_end_123} :catchall_108

    .line 2921
    :cond_123
    if-eqz v11, :cond_128

    .line 2922
    :try_start_125
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2926
    :cond_128
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12b
    .catchall {:try_start_125 .. :try_end_12b} :catchall_10f

    .line 2928
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2931
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2932
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2933
    return-void
.end method

.method public static markNotificationsSeenLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "operationState"

    .prologue
    .line 2945
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2946
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markNotificationsSeenLocally conversationRowId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2952
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2954
    :try_start_2c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2955
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "notification_seen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2956
    const-string v2, "messages"

    const-string v3, "conversation_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2960
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4f
    .catchall {:try_start_2c .. :try_end_4f} :catchall_56

    .line 2962
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2964
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2965
    return-void

    .line 2962
    .end local v1           #values:Landroid/content/ContentValues;
    :catchall_56
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private static markParticipantInactive(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)V
    .registers 12
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "participantId"

    .prologue
    const/4 v5, 0x0

    .line 4317
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4318
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markParticipantInactive ConversationRowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Participant id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    :cond_2c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4322
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "active"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4323
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

    .line 4329
    return-void
.end method

.method public static notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 5129
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5130
    const-string v0, "EsConversationsData"

    const-string v1, "NOTIFY CONVERSATIONS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5134
    return-void
.end method

.method public static notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    const/4 v3, 0x0

    .line 5113
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5114
    const-string v1, "EsConversationsData"

    const-string v2, "NOTIFY MESSAGES"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5116
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5118
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/content/EsProvider;->buildMessagesUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v0

    .line 5119
    .local v0, messagesUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5120
    return-void
.end method

.method private static notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 5077
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5078
    const-string v1, "EsConversationsData"

    const-string v2, "NOTIFY ALL PARTICIPANTS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5082
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    .line 5083
    .local v0, participantsUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5084
    return-void
.end method

.method public static notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    const/4 v3, 0x0

    .line 5095
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5096
    const-string v1, "EsConversationsData"

    const-string v2, "NOTIFY PARTICIPANTS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5098
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5100
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v0

    .line 5101
    .local v0, participantsUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5102
    return-void
.end method

.method public static notifySuggestionsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 5143
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5144
    const-string v0, "EsConversationsData"

    const-string v1, "NOTIFY SUGGESTIONS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->MESSENGER_SUGGESTIONS_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5149
    return-void
.end method

.method public static processBunchServerUpdate(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 47
    .parameter "context"
    .parameter "account"
    .parameter "update"
    .parameter "operationState"

    .prologue
    .line 222
    const/16 v35, 0x0

    .line 223
    .local v35, conversationRowId:Ljava/lang/Long;
    const/16 v38, 0x0

    .line 224
    .local v38, messagesChanged:Z
    const/16 v39, 0x0

    .line 225
    .local v39, participantsChanged:Z
    const/16 v36, 0x0

    .line 227
    .local v36, conversationsChanged:Z
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 229
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 231
    :try_start_13
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasEventMetadata()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 235
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getEventMetadata()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getConversationId()Ljava/lang/String;

    move-result-object v34

    .line 236
    .local v34, conversationId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getEventMetadata()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getEventTimestamp()J

    move-result-wide v40

    .line 237
    .local v40, timestamp:J
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getEventMetadata()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    .line 239
    if-eqz v35, :cond_63

    .line 240
    sget-object v4, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-object/from16 v0, v34

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReceipt(Ljava/lang/String;JLcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    if-ne v4, v0, :cond_63

    .line 244
    sget-object v4, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->READ:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-object/from16 v0, v34

    move-wide/from16 v1, v40

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReceipt(Ljava/lang/String;JLcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 250
    .end local v34           #conversationId:Ljava/lang/String;
    .end local v40           #timestamp:J
    :cond_63
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasInvalidateLocalCache()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 251
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v3, v0, v1, v4, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processInvalidateLocalCache(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 253
    const/16 v36, 0x1

    .line 401
    :cond_78
    :goto_78
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7b
    .catchall {:try_start_13 .. :try_end_7b} :catchall_b2

    .line 403
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 406
    if-eqz v35, :cond_9f

    .line 407
    if-eqz v36, :cond_85

    .line 408
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 410
    :cond_85
    if-eqz v39, :cond_92

    .line 411
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 413
    :cond_92
    if-eqz v38, :cond_9f

    .line 414
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 417
    :cond_9f
    :goto_9f
    return-void

    .line 254
    :cond_a0
    :try_start_a0
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasMigration()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 255
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMigration(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Migration;)V
    :try_end_b1
    .catchall {:try_start_a0 .. :try_end_b1} :catchall_b2

    goto :goto_78

    .line 403
    :catchall_b2
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 257
    :cond_b7
    :try_start_b7
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasNewConversation()Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 258
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getNewConversation()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v3, v0, v1, v4, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processNewConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$NewConversation;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    .line 260
    const/16 v36, 0x1

    .line 261
    const/16 v38, 0x1

    .line 262
    const/16 v39, 0x1

    goto :goto_78

    .line 263
    :cond_d6
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasChatMessage()Z

    move-result v4

    if-eqz v4, :cond_148

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v8

    .line 265
    .local v8, message:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    .line 267
    if-nez v35, :cond_135

    .line 268
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_123

    .line 269
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received message ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for a nonexistant conversation id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_123
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_130
    .catchall {:try_start_b7 .. :try_end_130} :catchall_b2

    .line 403
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_9f

    .line 278
    :cond_135
    :try_start_135
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p3

    invoke-static/range {v3 .. v9}, Lcom/google/android/apps/plus/content/EsConversationsData;->processSingleMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$ChatMessage;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 280
    const/16 v36, 0x1

    .line 281
    const/16 v38, 0x1

    .line 282
    goto/16 :goto_78

    .end local v8           #message:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    :cond_148
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasMembershipChange()Z

    move-result v4

    if-eqz v4, :cond_1c0

    .line 283
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v14

    .line 284
    .local v14, change:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    .line 286
    if-nez v35, :cond_1a7

    .line 287
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_195

    .line 288
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received membershipChange ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for a nonexistant conversation id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_195
    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_1a2
    .catchall {:try_start_135 .. :try_end_1a2} :catchall_b2

    .line 403
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_9f

    .line 297
    :cond_1a7
    :try_start_1a7
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object v9, v3

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v17, p3

    invoke-static/range {v9 .. v17}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMembershipChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$MembershipChange;IZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 300
    const/16 v36, 0x1

    .line 301
    const/16 v38, 0x1

    .line 302
    const/16 v39, 0x1

    .line 303
    goto/16 :goto_78

    .end local v14           #change:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    :cond_1c0
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasGroupConversationRename()Z

    move-result v4

    if-eqz v4, :cond_239

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v20

    .line 305
    .local v20, rename:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    .line 307
    if-nez v35, :cond_21f

    .line 308
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_20d

    .line 309
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received rename ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for a nonexistant conversation id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_20d
    invoke-virtual/range {v20 .. v20}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_21a
    .catchall {:try_start_1a7 .. :try_end_21a} :catchall_b2

    .line 403
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_9f

    .line 318
    :cond_21f
    :try_start_21f
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object v15, v3

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v24, p3

    invoke-static/range {v15 .. v24}, Lcom/google/android/apps/plus/content/EsConversationsData;->processGroupConversationRename(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;ZIZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 321
    const/16 v36, 0x1

    .line 322
    const/16 v38, 0x1

    .line 323
    goto/16 :goto_78

    .end local v20           #rename:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    :cond_239
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasTileEvent()Z

    move-result v4

    if-eqz v4, :cond_2b5

    .line 324
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v37

    .line 325
    .local v37, event:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    .line 327
    if-nez v35, :cond_298

    .line 328
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_286

    .line 329
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received TileEvent ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for a nonexistant conversation id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_286
    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_293
    .catchall {:try_start_21f .. :try_end_293} :catchall_b2

    .line 403
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_9f

    .line 338
    :cond_298
    :try_start_298
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v26

    const/16 v27, 0x3

    const/16 v28, 0x0

    move-object/from16 v21, v3

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v29, p3

    invoke-static/range {v21 .. v29}, Lcom/google/android/apps/plus/content/EsConversationsData;->processTileEvent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$TileEvent;IZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 341
    const/16 v36, 0x1

    .line 342
    const/16 v38, 0x1

    .line 343
    goto/16 :goto_78

    .end local v37           #event:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    :cond_2b5
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasPresence()Z

    move-result v4

    if-eqz v4, :cond_325

    .line 344
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v26

    .line 345
    .local v26, presence:Lcom/google/wireless/realtimechat/proto/Client$Presence;
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    .line 347
    if-nez v35, :cond_314

    .line 348
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_302

    .line 349
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received presence ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for a nonexistant conversation id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_302
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_30f
    .catchall {:try_start_298 .. :try_end_30f} :catchall_b2

    .line 403
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_9f

    .line 358
    :cond_314
    :try_start_314
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v21, v3

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v27, p3

    invoke-static/range {v21 .. v27}, Lcom/google/android/apps/plus/content/EsConversationsData;->processPresence(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Presence;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_78

    .line 360
    .end local v26           #presence:Lcom/google/wireless/realtimechat/proto/Client$Presence;
    :cond_325
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasTyping()Z

    move-result v4

    if-eqz v4, :cond_397

    .line 361
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v42

    .line 362
    .local v42, typing:Lcom/google/wireless/realtimechat/proto/Client$Typing;
    invoke-virtual/range {v42 .. v42}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    .line 364
    if-nez v35, :cond_384

    .line 365
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_372

    .line 366
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received typing ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v42 .. v42}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for a nonexistant conversation id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v42 .. v42}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_372
    invoke-virtual/range {v42 .. v42}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_37f
    .catchall {:try_start_314 .. :try_end_37f} :catchall_b2

    .line 403
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_9f

    .line 375
    :cond_384
    :try_start_384
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v32

    move-object/from16 v27, v3

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    invoke-static/range {v27 .. v32}, Lcom/google/android/apps/plus/content/EsConversationsData;->processTyping(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing;)V

    goto/16 :goto_78

    .line 377
    .end local v42           #typing:Lcom/google/wireless/realtimechat/proto/Client$Typing;
    :cond_397
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasReceipt()Z

    move-result v4

    if-eqz v4, :cond_409

    .line 378
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v32

    .line 379
    .local v32, receipt:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    invoke-virtual/range {v32 .. v32}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    .line 381
    if-nez v35, :cond_3f6

    .line 382
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3e4

    .line 383
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received receipt ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for a nonexistant conversation id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_3e4
    invoke-virtual/range {v32 .. v32}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_3f1
    .catchall {:try_start_384 .. :try_end_3f1} :catchall_b2

    .line 403
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_9f

    .line 392
    :cond_3f6
    :try_start_3f6
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v27, v3

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move-object/from16 v33, p3

    invoke-static/range {v27 .. v33}, Lcom/google/android/apps/plus/content/EsConversationsData;->processReceipt(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 394
    const/16 v38, 0x1

    .line 395
    goto/16 :goto_78

    .line 396
    .end local v32           #receipt:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    :cond_409
    const-string v4, "EsConversationsData"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 397
    const-string v4, "EsConversationsData"

    const-string v5, "Unexpected update from bunch server"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_419
    .catchall {:try_start_3f6 .. :try_end_419} :catchall_b2

    goto/16 :goto_78
.end method

.method public static processChatMessageResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "response"
    .parameter "operationState"

    .prologue
    const/4 v2, 0x3

    .line 883
    const/4 v7, 0x0

    .line 884
    .local v7, clientMessageId:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->hasMessageClientId()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 885
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getMessageClientId()Ljava/lang/String;

    move-result-object v7

    .line 887
    :cond_c
    const-string v1, "EsConversationsData"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 888
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processChatMessageResponse ConversationId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clientMessageId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_48
    const/4 v8, 0x0

    .line 894
    .local v8, conversationRowId:Ljava/lang/Long;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 896
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 898
    :try_start_54
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 900
    if-nez v8, :cond_98

    .line 901
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 902
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to process ChatMessageResponse for a nonexistant conversation id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_89
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_94
    .catchall {:try_start_54 .. :try_end_94} :catchall_b4

    .line 914
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 918
    :goto_97
    return-void

    .line 910
    :cond_98
    :try_start_98
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsConversationsData;->processChatMessageResponse(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 912
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a6
    .catchall {:try_start_98 .. :try_end_a6} :catchall_b4

    .line 914
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 916
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 917
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto :goto_97

    .line 914
    :catchall_b4
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public static processChatMessageResponse(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 23
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "response"
    .parameter "operationState"

    .prologue
    .line 1658
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getMessageClientId()Ljava/lang/String;

    move-result-object v10

    .line 1659
    .local v10, clientMessageId:Ljava/lang/String;
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1660
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processChatMessageResponse Conversation row id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_3f
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1666
    .local v15, values:Landroid/content/ContentValues;
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getTimestamp()J

    move-result-wide v13

    .line 1667
    .local v13, timestamp:J
    const/4 v11, 0x0

    .line 1668
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1670
    .local v12, originalTimestamp:Ljava/lang/Long;
    :try_start_4a
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

    aput-object v10, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1677
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1678
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_7a
    .catchall {:try_start_4a .. :try_end_7a} :catchall_112

    move-result-object v12

    .line 1681
    :cond_7b
    if-eqz v11, :cond_80

    .line 1682
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1686
    :cond_80
    const-string v2, "status"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1687
    if-eqz v10, :cond_af

    .line 1688
    const-string v2, "timestamp"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1689
    const-string v2, "messages"

    const-string v3, "message_id=? AND conversation_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1707
    :cond_af
    :try_start_af
    const-string v3, "messages"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "conversation_id=? AND (status=1 OR status=7) AND timestamp>? AND timestamp<?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1720
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1721
    :goto_e0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_119

    .line 1722
    const-wide/16 v2, 0x1

    add-long/2addr v13, v2

    .line 1723
    const-string v2, "timestamp"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1724
    const-string v2, "messages"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_10a
    .catchall {:try_start_af .. :try_end_10a} :catchall_10b

    goto :goto_e0

    .line 1729
    :catchall_10b
    move-exception v2

    if-eqz v11, :cond_111

    .line 1730
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_111
    throw v2

    .line 1681
    :catchall_112
    move-exception v2

    if-eqz v11, :cond_118

    .line 1682
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_118
    throw v2

    .line 1729
    :cond_119
    if-eqz v11, :cond_11e

    .line 1730
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1749
    :cond_11e
    return-void
.end method

.method private static processConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J
    .registers 42
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversation"
    .parameter "operationState"

    .prologue
    .line 1870
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v26

    .line 1871
    .local v26, conversationId:Ljava/lang/String;
    const/16 v25, 0x0

    .line 1872
    .local v25, clientConversationId:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasConversationClientId()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1873
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getConversationClientId()Ljava/lang/String;

    move-result-object v25

    .line 1874
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    :cond_19
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1877
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processConversation conversationId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " conversationClientId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getConversationClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " participantCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isPendingAccept: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getNeedsAccept()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hidden: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getHidden()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inactiveParticipantCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getInactiveParticipantCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " unreadCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getUnreadCount()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :cond_92
    const/16 v28, 0x0

    .line 1887
    .local v28, cursor:Landroid/database/Cursor;
    const/16 v27, 0x0

    .line 1888
    .local v27, conversationRowId:Ljava/lang/Long;
    const/16 v31, 0x0

    .line 1890
    .local v31, isPendingLeave:Z
    :try_start_98
    const-string v4, "conversations"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "is_pending_leave"

    aput-object v6, v5, v3

    const-string v6, "conversation_id=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v26, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 1896
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 1897
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 1898
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_f2

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_d8
    .catchall {:try_start_98 .. :try_end_d8} :catchall_f5

    move-result v3

    if-eqz v3, :cond_f2

    const/16 v31, 0x1

    .line 1901
    :cond_dd
    :goto_dd
    if-eqz v28, :cond_e2

    .line 1902
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1905
    :cond_e2
    if-eqz v31, :cond_fc

    .line 1909
    invoke-static/range {v26 .. v26}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->leaveConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 1910
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2047
    :goto_f1
    return-wide v3

    .line 1898
    :cond_f2
    const/16 v31, 0x0

    goto :goto_dd

    .line 1901
    :catchall_f5
    move-exception v3

    if-eqz v28, :cond_fb

    .line 1902
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_fb
    throw v3

    .line 1912
    :cond_fc
    if-nez v27, :cond_202

    .line 1914
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 1915
    const-string v3, "EsConversationsData"

    const-string v4, " creating conversation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_10e
    const-wide/16 v7, 0x0

    .line 1918
    .local v7, timestamp:J
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasLastPreviewEvent()Z

    move-result v3

    if-eqz v3, :cond_147

    .line 1919
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTimestamp()J

    move-result-wide v7

    .line 1920
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_147

    .line 1921
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last preview event timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_147
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 1925
    invoke-static/range {v3 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 1935
    .end local v7           #timestamp:J
    :goto_157
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasLastPreviewEvent()Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 1936
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v29

    .line 1937
    .local v29, event:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasChatMessage()Z

    move-result v3

    if-eqz v3, :cond_238

    .line 1938
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_177

    .line 1939
    const-string v3, "EsConversationsData"

    const-string v4, "Got ChatMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_177
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v12

    .line 1942
    .local v12, chatMessage:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v13, v26

    move-object/from16 v16, p4

    invoke-static/range {v9 .. v16}, Lcom/google/android/apps/plus/content/EsConversationsData;->processPreviewMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 2021
    .end local v12           #chatMessage:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .end local v29           #event:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    :cond_18c
    :goto_18c
    :try_start_18c
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v9, "message_id"

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-string v9, "text"

    aput-object v9, v5, v6

    const/4 v6, 0x2

    const-string v9, "image_url"

    aput-object v9, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryPendingMessages(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 2026
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1d3

    .line 2027
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pending messages"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_1d3
    :goto_1d3
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_41b

    .line 2030
    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v3, v4, v5, v6}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_1fa
    .catchall {:try_start_18c .. :try_end_1fa} :catchall_1fb

    goto :goto_1d3

    .line 2035
    :catchall_1fb
    move-exception v3

    if-eqz v28, :cond_201

    .line 2036
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_201
    throw v3

    .line 1928
    :cond_202
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_225

    .line 1929
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updating conversation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_225
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-static/range {v9 .. v15}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_157

    .line 1944
    .restart local v29       #event:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    :cond_238
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasMembershipChange()Z

    move-result v3

    if-eqz v3, :cond_2e3

    .line 1945
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_24e

    .line 1946
    const-string v3, "EsConversationsData"

    const-string v4, "Got MembershipChange"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_24e
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v24

    .line 1949
    .local v24, change:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getParticipantList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_25a
    :goto_25a
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 1950
    .local v33, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasParticipantId()Z

    move-result v3

    if-eqz v3, :cond_25a

    .line 1953
    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->JOIN:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    if-ne v3, v4, :cond_25a

    .line 1954
    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1956
    .local v23, actorName:Ljava/lang/String;
    if-eqz v23, :cond_25a

    .line 1957
    const v3, 0x7f08024e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<b>"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "</b>"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<b>"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "</b>"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1962
    .local v18, text:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getTimestamp()J

    move-result-wide v21

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v13 .. v22}, Lcom/google/android/apps/plus/content/EsConversationsData;->updatePreviewSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_25a

    .line 1969
    .end local v18           #text:Ljava/lang/String;
    .end local v23           #actorName:Ljava/lang/String;
    .end local v24           #change:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v33           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_2e3
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasGroupConversationRename()Z

    move-result v3

    if-eqz v3, :cond_36c

    .line 1970
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2f9

    .line 1971
    const-string v3, "EsConversationsData"

    const-string v4, "Got GroupConversationRename"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_2f9
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v34

    .line 1974
    .local v34, rename:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    invoke-virtual/range {v34 .. v34}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1975
    .restart local v23       #actorName:Ljava/lang/String;
    if-eqz v23, :cond_18c

    .line 1976
    const v3, 0x7f08024c

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<b>"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "</b>"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<i>"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v34 .. v34}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getNewDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "</i>"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1981
    .restart local v18       #text:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v34 .. v34}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v34 .. v34}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getTimestamp()J

    move-result-wide v21

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v13 .. v22}, Lcom/google/android/apps/plus/content/EsConversationsData;->updatePreviewSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_18c

    .line 1986
    .end local v18           #text:Ljava/lang/String;
    .end local v23           #actorName:Ljava/lang/String;
    .end local v34           #rename:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    :cond_36c
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasTileEvent()Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 1987
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_382

    .line 1988
    const-string v3, "EsConversationsData"

    const-string v4, "Got TileEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_382
    invoke-virtual/range {v29 .. v29}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v35

    .line 1991
    .local v35, tileEvent:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    invoke-virtual/range {v35 .. v35}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JOIN_HANGOUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 1992
    const/16 v19, 0x0

    .line 1993
    .local v19, authorId:Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30       #i$:Ljava/util/Iterator;
    :cond_39c
    :goto_39c
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3ed

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    .line 1994
    .local v32, pair:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    invoke-virtual/range {v32 .. v32}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AUTHOR_PROFILE_ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b9

    .line 1995
    invoke-virtual/range {v32 .. v32}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v19

    goto :goto_39c

    .line 1997
    :cond_3b9
    const-string v3, "EsConversationsData"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_39c

    .line 1998
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got unexpected data in join hangout tile event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39c

    .line 2003
    .end local v32           #pair:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    :cond_3ed
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFirstName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2004
    .restart local v23       #actorName:Ljava/lang/String;
    if-eqz v23, :cond_18c

    .line 2005
    const v3, 0x7f08024d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v23, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 2009
    .restart local v18       #text:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/16 v20, 0x3

    invoke-virtual/range {v35 .. v35}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTimestamp()J

    move-result-wide v21

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static/range {v13 .. v22}, Lcom/google/android/apps/plus/content/EsConversationsData;->updatePreviewSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;IJ)V

    goto/16 :goto_18c

    .line 2035
    .end local v18           #text:Ljava/lang/String;
    .end local v19           #authorId:Ljava/lang/String;
    .end local v23           #actorName:Ljava/lang/String;
    .end local v29           #event:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v35           #tileEvent:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    :cond_41b
    if-eqz v28, :cond_420

    .line 2036
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 2040
    :cond_420
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 2041
    .local v36, values:Landroid/content/ContentValues;
    const-string v3, "status"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2042
    const-string v3, "messages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conversation_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2047
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto/16 :goto_f1
.end method

.method public static processConversationListResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 28
    .parameter "context"
    .parameter "account"
    .parameter "response"
    .parameter "operationState"

    .prologue
    .line 444
    const-string v7, "EsConversationsData"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 445
    const-string v7, "EsConversationsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processConversationListResponse count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getClientConversationCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_25
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 451
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getClientConversationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 562
    :goto_37
    return-void

    .line 454
    :cond_38
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 456
    :try_start_3b
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getClientConversationList()Ljava/util/List;

    move-result-object v16

    .line 459
    .local v16, conversations:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;>;"
    new-instance v21, Ljava/util/PriorityQueue;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    sget-object v8, Lcom/google/android/apps/plus/content/EsConversationsData;->sConversationComparator:Ljava/util/Comparator;

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v8}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 462
    .local v21, orderedConversations:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 463
    .local v15, conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v3, v0, v1, v15, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->processConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    .line 465
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_3b .. :try_end_6a} :catchall_6b

    goto :goto_50

    .line 559
    .end local v15           #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .end local v16           #conversations:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;>;"
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #orderedConversations:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;>;"
    :catchall_6b
    move-exception v7

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 469
    .restart local v16       #conversations:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;>;"
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v21       #orderedConversations:Ljava/util/PriorityQueue;,"Ljava/util/PriorityQueue<Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;>;"
    :cond_70
    const/16 v17, 0x0

    .line 470
    .local v17, count:I
    const/16 v18, 0x0

    .line 472
    .local v18, cursor:Landroid/database/Cursor;
    :try_start_74
    const-string v4, "conversations"

    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "conversation_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "latest_event_timestamp"

    aput-object v8, v5, v7

    const-string v6, "is_awaiting_event_stream=1"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 477
    :goto_8d
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 478
    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, conversationId:Ljava/lang/String;
    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 480
    .local v5, latest:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_aa

    .line 481
    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 483
    :cond_aa
    const-wide/16 v7, 0x0

    const/16 v9, 0x14

    invoke-static/range {v4 .. v9}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getEventStream(Ljava/lang/String;JJI)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v22

    .line 485
    .local v22, request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 486
    const-string v7, "EsConversationsData"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 487
    const-string v7, "EsConversationsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requesting 20 events since "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_74 .. :try_end_e4} :catchall_1c7

    .line 490
    :cond_e4
    add-int/lit8 v17, v17, 0x1

    .line 491
    goto :goto_8d

    .line 493
    .end local v4           #conversationId:Ljava/lang/String;
    .end local v5           #latest:J
    .end local v22           #request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    :cond_e7
    if-eqz v18, :cond_ec

    .line 494
    :try_start_e9
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_ec
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v23, values:Landroid/content/ContentValues;
    const-string v7, "is_awaiting_event_stream"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const/4 v15, 0x0

    .line 501
    .restart local v15       #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    const/16 v19, 0x19

    .line 503
    .local v19, eventsToLoad:I
    :goto_100
    const/16 v7, 0x28

    move/from16 v0, v17

    if-ge v0, v7, :cond_1d5

    invoke-virtual/range {v21 .. v21}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    check-cast v15, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    :try_end_10c
    .catchall {:try_start_e9 .. :try_end_10c} :catchall_6b

    .restart local v15       #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    if-eqz v15, :cond_1d5

    .line 505
    const/16 v7, 0x14

    move/from16 v0, v17

    if-lt v0, v7, :cond_116

    .line 506
    const/16 v19, 0xa

    .line 510
    :cond_116
    :try_start_116
    const-string v8, "conversations"

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v10, "latest_event_timestamp"

    aput-object v10, v9, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "is_awaiting_event_stream=0 AND conversation_id=\'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 515
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1ab

    .line 516
    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 517
    .restart local v5       #latest:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_15c

    .line 518
    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 520
    :cond_15c
    invoke-virtual {v15}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v10, 0x0

    move-wide v8, v5

    move/from16 v12, v19

    invoke-static/range {v7 .. v12}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getEventStream(Ljava/lang/String;JJI)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v22

    .line 522
    .restart local v22       #request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 523
    const-string v7, "EsConversationsData"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1ab

    .line 524
    const-string v7, "EsConversationsData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requesting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " events since "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v15}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ab
    .catchall {:try_start_116 .. :try_end_1ab} :catchall_1ce

    .line 529
    .end local v5           #latest:J
    .end local v22           #request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    :cond_1ab
    if-eqz v18, :cond_1b0

    .line 530
    :try_start_1ad
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 533
    :cond_1b0
    const-string v7, "conversations"

    const-string v8, "conversation_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v15}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, v23

    invoke-virtual {v3, v7, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 536
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_100

    .line 493
    .end local v15           #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .end local v19           #eventsToLoad:I
    .end local v23           #values:Landroid/content/ContentValues;
    :catchall_1c7
    move-exception v7

    if-eqz v18, :cond_1cd

    .line 494
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_1cd
    throw v7

    .line 529
    .restart local v15       #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .restart local v19       #eventsToLoad:I
    .restart local v23       #values:Landroid/content/ContentValues;
    :catchall_1ce
    move-exception v7

    if-eqz v18, :cond_1d4

    .line 530
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_1d4
    throw v7

    .line 540
    :cond_1d5
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 541
    const-string v7, "key"

    const-string v8, "awaiting_conversation_list"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v7, "value"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const-string v7, "realtimechat_metadata"

    const/4 v8, 0x0

    const/4 v9, 0x5

    move-object/from16 v0, v23

    invoke-virtual {v3, v7, v8, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 550
    const-string v7, "realtimechat_metadata"

    const-string v8, "key=\'requested_conversations_since\'"

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->removeLeftConversations(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 557
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_208
    .catchall {:try_start_1ad .. :try_end_208} :catchall_6b

    .line 559
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 561
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_37
.end method

.method public static processConversationPreferenceResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "response"
    .parameter "operationState"

    .prologue
    const/4 v2, 0x3

    .line 1030
    const-string v0, "EsConversationsData"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1031
    const-string v0, "EsConversationsData"

    const-string v1, "processConversationPreferenceResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_10
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    if-ne v0, v1, :cond_28

    .line 1034
    const-string v0, "EsConversationsData"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1035
    const-string v0, "EsConversationsData"

    const-string v1, "Conversation preference set successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_27
    :goto_27
    return-void

    .line 1038
    :cond_28
    const-string v0, "EsConversationsData"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1039
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

.method public static processConversationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 27
    .parameter "context"
    .parameter "account"
    .parameter "response"
    .parameter "operationState"

    .prologue
    .line 805
    const-string v5, "EsConversationsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 806
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

    .line 809
    :cond_25
    const/16 v19, 0x0

    .line 810
    .local v19, conversationRowId:Ljava/lang/Long;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 812
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 814
    :try_start_32
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v18

    .line 815
    .local v18, conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v22

    .line 816
    .local v22, status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    sget-object v5, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-object/from16 v0, v22

    if-ne v0, v5, :cond_e5

    .line 817
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasConversationClientId()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 818
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getConversationClientId()Ljava/lang/String;

    move-result-object v16

    .line 819
    .local v16, clientConversationId:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
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

    .line 825
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getParticipantErrorList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_6b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 826
    .local v7, error:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getCreatedAt()J

    move-result-wide v10

    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v13, p3

    invoke-static/range {v4 .. v13}, Lcom/google/android/apps/plus/content/EsConversationsData;->processParticipantError(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;JJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    :try_end_89
    .catchall {:try_start_32 .. :try_end_89} :catchall_8a

    goto :goto_6b

    .line 863
    .end local v7           #error:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .end local v18           #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :catchall_8a
    move-exception v5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 829
    .restart local v18       #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v22       #status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :cond_8f
    :try_start_8f
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasReceipt()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 830
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v13

    move-object v8, v4

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p3

    invoke-static/range {v8 .. v14}, Lcom/google/android/apps/plus/content/EsConversationsData;->processReceipt(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 833
    :cond_a7
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasRecentMessage()Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 834
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

    .line 861
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_c3
    :goto_c3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c6
    .catchall {:try_start_8f .. :try_end_c6} :catchall_8a

    .line 863
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 865
    if-eqz v19, :cond_e4

    .line 866
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 867
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v6}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 868
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v6}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 870
    :cond_e4
    return-void

    .line 838
    :cond_e5
    :try_start_e5
    const-string v5, "EsConversationsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_108

    .line 839
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

    .line 841
    :cond_108
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->hasConversationClientId()Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 842
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getConversationClientId()Ljava/lang/String;

    move-result-object v17

    .line 843
    .local v17, clientId:Ljava/lang/String;
    const/16 v20, 0x1

    .line 844
    .local v20, fatalErrorType:I
    sget-object v5, Lcom/google/android/apps/plus/content/EsConversationsData$4;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_134

    .line 858
    :goto_11f
    :pswitch_11f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v4, v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversationErrorType(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;I)V
    :try_end_12a
    .catchall {:try_start_e5 .. :try_end_12a} :catchall_8a

    goto :goto_c3

    .line 846
    :pswitch_12b
    const/16 v20, 0x2

    .line 847
    goto :goto_11f

    .line 849
    :pswitch_12e
    const/16 v20, 0x3

    .line 850
    goto :goto_11f

    .line 852
    :pswitch_131
    const/16 v20, 0x4

    .line 853
    goto :goto_11f

    .line 844
    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_12b
        :pswitch_12e
        :pswitch_131
        :pswitch_11f
    .end packed-switch
.end method

.method public static processEventStreamResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 55
    .parameter "context"
    .parameter "account"
    .parameter "response"
    .parameter "operationState"

    .prologue
    .line 573
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 574
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processEventStreamResponse conversationId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " earliest: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEarliest()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " latest: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getLatest()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " eventCount: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEventCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_4f
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 583
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v31, 0x0

    .line 584
    .local v31, conversationRowId:Ljava/lang/Long;
    const/16 v44, 0x0

    .line 585
    .local v44, messagesChanged:Z
    const/16 v46, 0x0

    .line 587
    .local v46, participantsChanged:Z
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 589
    :try_start_60
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getConversationId()Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_16b

    move-result-object v30

    .line 590
    .local v30, conversationId:Ljava/lang/String;
    const-wide/16 v34, 0x0

    .line 591
    .local v34, currentLatestEventTimestamp:J
    const-wide/16 v32, 0x0

    .line 592
    .local v32, currentEarliestEventTimestamp:J
    const/16 v43, 0x0

    .line 593
    .local v43, isAwaitingOlderEvents:Z
    const/16 v29, 0x0

    .line 595
    .local v29, conversationCursor:Landroid/database/Cursor;
    :try_start_6c
    const-string v3, "conversations"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "earliest_event_timestamp"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "latest_event_timestamp"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "is_awaiting_older_events"

    aput-object v7, v4, v6

    const-string v5, "conversation_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v30, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 602
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 603
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    .line 604
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 605
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 606
    const/4 v3, 0x3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_b9
    .catchall {:try_start_6c .. :try_end_b9} :catchall_164

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12c

    const/16 v43, 0x1

    .line 617
    :goto_bf
    if-eqz v29, :cond_c4

    .line 618
    :try_start_c1
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_c4
    new-instance v50, Landroid/content/ContentValues;

    invoke-direct/range {v50 .. v50}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v50, values:Landroid/content/ContentValues;
    const-string v3, "is_awaiting_event_stream"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEventCount()I

    move-result v37

    .line 626
    .local v37, eventCount:I
    if-lez v37, :cond_38a

    .line 627
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEarliest()J

    move-result-wide v38

    .line 628
    .local v38, eventStreamEarliest:J
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getLatest()J

    move-result-wide v40

    .line 629
    .local v40, eventStreamLatest:J
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 630
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentLatestEventTimestamp "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " eventStreamEarliest "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_112
    cmp-long v3, v38, v32

    if-gez v3, :cond_170

    if-nez v43, :cond_170

    .line 636
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 637
    const-string v3, "EsConversationsData"

    const-string v4, "isAwaitingOlderEvents is blank, ignoring"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catchall {:try_start_c1 .. :try_end_128} :catchall_16b

    .line 785
    :cond_128
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 794
    .end local v37           #eventCount:I
    .end local v38           #eventStreamEarliest:J
    .end local v40           #eventStreamLatest:J
    .end local v50           #values:Landroid/content/ContentValues;
    :cond_12b
    :goto_12b
    return-void

    .line 606
    :cond_12c
    const/16 v43, 0x0

    goto :goto_bf

    .line 608
    :cond_12f
    :try_start_12f
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_152

    .line 609
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventStream for unknown conversation "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_152
    invoke-static/range {v30 .. v30}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_15b
    .catchall {:try_start_12f .. :try_end_15b} :catchall_164

    .line 617
    if-eqz v29, :cond_160

    .line 618
    :try_start_15d
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V
    :try_end_160
    .catchall {:try_start_15d .. :try_end_160} :catchall_16b

    .line 785
    :cond_160
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_12b

    .line 617
    :catchall_164
    move-exception v3

    if-eqz v29, :cond_16a

    .line 618
    :try_start_167
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_16a
    throw v3
    :try_end_16b
    .catchall {:try_start_167 .. :try_end_16b} :catchall_16b

    .line 785
    .end local v29           #conversationCursor:Landroid/database/Cursor;
    .end local v30           #conversationId:Ljava/lang/String;
    .end local v32           #currentEarliestEventTimestamp:J
    .end local v34           #currentLatestEventTimestamp:J
    .end local v43           #isAwaitingOlderEvents:Z
    :catchall_16b
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 642
    .restart local v29       #conversationCursor:Landroid/database/Cursor;
    .restart local v30       #conversationId:Ljava/lang/String;
    .restart local v32       #currentEarliestEventTimestamp:J
    .restart local v34       #currentLatestEventTimestamp:J
    .restart local v37       #eventCount:I
    .restart local v38       #eventStreamEarliest:J
    .restart local v40       #eventStreamLatest:J
    .restart local v43       #isAwaitingOlderEvents:Z
    .restart local v50       #values:Landroid/content/ContentValues;
    :cond_170
    :try_start_170
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getEventList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .local v42, i$:Ljava/util/Iterator;
    :cond_178
    :goto_178
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c4

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 643
    .local v36, event:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTimestamp()J

    move-result-wide v48

    .line 644
    .local v48, timestamp:J
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;)I

    move-result v12

    .line 645
    .local v12, messageState:I
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1d9

    .line 646
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event timestamp "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v48

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " current conversation "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " state "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_1d9
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasReceipt()Z

    move-result v3

    if-eqz v3, :cond_204

    .line 653
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1ef

    .line 654
    const-string v3, "EsConversationsData"

    const-string v4, "Got Receipt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_1ef
    const/16 v44, 0x1

    .line 657
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->processReceipt(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_178

    .line 659
    :cond_204
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasChatMessage()Z

    move-result v3

    if-eqz v3, :cond_232

    .line 660
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_21a

    .line 661
    const-string v3, "EsConversationsData"

    const-string v4, "Got ChatMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_21a
    const/16 v44, 0x1

    .line 664
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v5

    .line 665
    .local v5, chatMessage:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, v30

    move-object/from16 v10, p3

    invoke-static/range {v2 .. v10}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_178

    .line 667
    .end local v5           #chatMessage:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    :cond_232
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasMembershipChange()Z

    move-result v3

    if-eqz v3, :cond_25f

    .line 668
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_248

    .line 669
    const-string v3, "EsConversationsData"

    const-string v4, "Got MembershipChange"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_248
    const/16 v46, 0x1

    .line 672
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v11

    .line 673
    .local v11, change:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v13, 0x1

    move-object v6, v2

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v14, p3

    invoke-static/range {v6 .. v14}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMembershipChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$MembershipChange;IZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_178

    .line 676
    .end local v11           #change:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    :cond_25f
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasGroupConversationRename()Z

    move-result v3

    if-eqz v3, :cond_28f

    .line 677
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_275

    .line 678
    const-string v3, "EsConversationsData"

    const-string v4, "Got GroupConversationRename"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_275
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v18

    .line 681
    .local v18, rename:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const/16 v19, 0x0

    const/16 v21, 0x1

    move-object v13, v2

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v20, v12

    move-object/from16 v22, p3

    invoke-static/range {v13 .. v22}, Lcom/google/android/apps/plus/content/EsConversationsData;->processGroupConversationRename(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;ZIZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_178

    .line 684
    .end local v18           #rename:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    :cond_28f
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasMigration()Z

    move-result v3

    if-nez v3, :cond_178

    .line 688
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasTileEvent()Z

    move-result v3

    if-eqz v3, :cond_178

    .line 689
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2ab

    .line 690
    const-string v3, "EsConversationsData"

    const-string v4, "Got TileEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2ab
    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v24

    .line 693
    .local v24, tileEvent:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/16 v26, 0x1

    move-object/from16 v19, v2

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move/from16 v25, v12

    move-object/from16 v27, p3

    invoke-static/range {v19 .. v27}, Lcom/google/android/apps/plus/content/EsConversationsData;->processTileEvent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$TileEvent;IZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    goto/16 :goto_178

    .line 698
    .end local v12           #messageState:I
    .end local v24           #tileEvent:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .end local v36           #event:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .end local v48           #timestamp:J
    :cond_2c4
    const/16 v45, 0x0

    .line 699
    .local v45, newEarliestEventTimestamp:Ljava/lang/Long;
    const/16 v28, 0x0

    .line 700
    .local v28, clearIsAwaitingOlder:Z
    cmp-long v3, v34, v38

    if-gez v3, :cond_3c8

    .line 707
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2dc

    .line 708
    const-string v3, "EsConversationsData"

    const-string v4, "newer messages with gap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_2dc
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v0, v38

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->removeOlderMessages(Landroid/database/sqlite/SQLiteDatabase;JJ)I

    move-result v47

    .line 712
    .local v47, removed:I
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_327

    .line 713
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Latest current event "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " earliest in eventStream "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " deleted "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " older messages"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_327
    if-lez v47, :cond_32b

    .line 718
    const/16 v28, 0x1

    .line 720
    :cond_32b
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    .line 757
    .end local v47           #removed:I
    :cond_32f
    :goto_32f
    if-eqz v28, :cond_34d

    .line 758
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_341

    .line 759
    const-string v3, "EsConversationsData"

    const-string v4, "clearing is_awaiting_older_events"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_341
    const-string v3, "is_awaiting_older_events"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    :cond_34d
    if-eqz v45, :cond_37b

    .line 764
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_372

    .line 765
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating earliest event timestamp "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_372
    const-string v3, "earliest_event_timestamp"

    move-object/from16 v0, v50

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 771
    :cond_37b
    cmp-long v3, v40, v34

    if-lez v3, :cond_38a

    .line 772
    const-string v3, "latest_event_timestamp"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 777
    .end local v28           #clearIsAwaitingOlder:Z
    .end local v38           #eventStreamEarliest:J
    .end local v40           #eventStreamLatest:J
    .end local v42           #i$:Ljava/util/Iterator;
    .end local v45           #newEarliestEventTimestamp:Ljava/lang/Long;
    :cond_38a
    invoke-virtual/range {v50 .. v50}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_3a3

    .line 778
    const-string v3, "conversations"

    const-string v4, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, v50

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 783
    :cond_3a3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a6
    .catchall {:try_start_170 .. :try_end_3a6} :catchall_16b

    .line 785
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 787
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 788
    if-eqz v44, :cond_3b9

    .line 789
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 791
    :cond_3b9
    if-eqz v46, :cond_12b

    .line 792
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    goto/16 :goto_12b

    .line 721
    .restart local v28       #clearIsAwaitingOlder:Z
    .restart local v38       #eventStreamEarliest:J
    .restart local v40       #eventStreamLatest:J
    .restart local v42       #i$:Ljava/util/Iterator;
    .restart local v45       #newEarliestEventTimestamp:Ljava/lang/Long;
    :cond_3c8
    cmp-long v3, v38, v32

    if-lez v3, :cond_42d

    const-wide/16 v3, 0x0

    cmp-long v3, v32, v3

    if-eqz v3, :cond_42d

    .line 730
    :try_start_3d2
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e2

    .line 731
    const-string v3, "EsConversationsData"

    const-string v4, "newer messages with overlap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_3e2
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_32f

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v31

    if-eq v0, v3, :cond_32f

    .line 736
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->removeExcessMessages(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v47

    .line 737
    .restart local v47       #removed:I
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_41b

    .line 738
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trim excess messages removed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_41b
    if-lez v47, :cond_41f

    .line 741
    const/16 v28, 0x1

    .line 743
    :cond_41f
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryOldestMessageTimestamp(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    .line 744
    goto/16 :goto_32f

    .line 749
    .end local v47           #removed:I
    :cond_42d
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_43d

    .line 750
    const-string v3, "EsConversationsData"

    const-string v4, "older messages"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_43d
    const/16 v28, 0x1

    .line 753
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_442
    .catchall {:try_start_3d2 .. :try_end_442} :catchall_16b

    move-result-object v45

    goto/16 :goto_32f
.end method

.method private static processGroupConversationRename(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;ZIZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 36
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "rename"
    .parameter "shouldUpdateName"
    .parameter "messageState"
    .parameter "sendReceipts"
    .parameter "operationState"

    .prologue
    .line 2231
    const-string v5, "EsConversationsData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2232
    const-string v5, "EsConversationsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processGroupConversationRename conversationId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    :cond_25
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->hasNewDisplayName()Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 2237
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getNewDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 2238
    .local v10, newName:Ljava/lang/String;
    if-eqz p6, :cond_3c

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    .line 2239
    invoke-static/range {v5 .. v10}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateConversationName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)V

    .line 2242
    :cond_3c
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getTimestamp()J

    move-result-wide v21

    .line 2243
    .local v21, timestamp:J
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateLatestEventTimestamp(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 2245
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2246
    .local v25, actorName:Ljava/lang/String;
    if-eqz v25, :cond_dd

    .line 2247
    const v5, 0x7f08024c

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<i>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</i>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 2252
    .local v16, text:Ljava/lang/String;
    const/16 v18, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-wide/from16 v14, p3

    move/from16 v17, p7

    move/from16 v23, p8

    move-object/from16 v24, p9

    invoke-static/range {v11 .. v24}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;IZLjava/lang/String;IJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    .line 2257
    invoke-virtual/range {p9 .. p9}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_c6

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, p3

    if-eqz v5, :cond_dc

    :cond_c6
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dc

    const/4 v5, 0x5

    move/from16 v0, p7

    if-eq v0, v5, :cond_dc

    .line 2261
    invoke-virtual/range {p9 .. p9}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setShouldTriggerNotifications()V

    .line 2269
    .end local v10           #newName:Ljava/lang/String;
    .end local v16           #text:Ljava/lang/String;
    .end local v21           #timestamp:J
    .end local v25           #actorName:Ljava/lang/String;
    :cond_dc
    :goto_dc
    return-void

    .line 2264
    .restart local v10       #newName:Ljava/lang/String;
    .restart local v21       #timestamp:J
    .restart local v25       #actorName:Ljava/lang/String;
    :cond_dd
    const-string v5, "EsConversationsData"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 2265
    const-string v5, "EsConversationsData"

    const-string v6, "Participant who changed conversation name could not be found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc
.end method

.method private static processHangoutTile(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;JIZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 27
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "tileEvent"
    .parameter "conversationRowId"
    .parameter "messageState"
    .parameter "sendReceipts"
    .parameter "operationState"

    .prologue
    .line 2319
    const/4 v9, 0x0

    .line 2320
    .local v9, authorId:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;

    .line 2321
    .local v17, pair:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUTHOR_PROFILE_ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2322
    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    .line 2324
    :cond_26
    const-string v1, "EsConversationsData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2325
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unexpected data in join hangout tile event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/realtimechat/proto/Data$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2330
    .end local v17           #pair:Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
    :cond_5a
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFirstName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2331
    .local v15, actorName:Ljava/lang/String;
    if-eqz v15, :cond_ad

    .line 2332
    const v1, 0x7f08024d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2336
    .local v6, text:Ljava/lang/String;
    const/4 v8, 0x1

    const/4 v10, 0x6

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTimestamp()J

    move-result-wide v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v7, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v1 .. v14}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;IZLjava/lang/String;IJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    .line 2341
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_9a

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-eqz v1, :cond_ac

    :cond_9a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    const/4 v1, 0x5

    move/from16 v0, p6

    if-eq v0, v1, :cond_ac

    .line 2345
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setShouldTriggerNotifications()V

    .line 2352
    .end local v6           #text:Ljava/lang/String;
    :cond_ac
    :goto_ac
    return-void

    .line 2348
    :cond_ad
    const-string v1, "EsConversationsData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 2349
    const-string v1, "EsConversationsData"

    const-string v2, "Participant who joined hangout could not be found locally"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac
.end method

.method private static processInvalidateLocalCache(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 14
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "response"
    .parameter "operationState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x5

    .line 1159
    const-string v3, "EsConversationsData"

    invoke-static {v3, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1160
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processInvalidateLocalCache version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_27
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->hasVersion()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 1164
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryDatastoreVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, dbVersion:Ljava/lang/String;
    const/4 v2, -0x1

    .line 1166
    .local v2, localVersion:I
    if-eqz v0, :cond_38

    .line 1168
    :try_start_34
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_83

    move-result v2

    .line 1176
    :cond_38
    :goto_38
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v3

    if-ge v2, v3, :cond_95

    .line 1177
    const-string v3, "EsConversationsData"

    invoke-static {v3, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1178
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing local storage. New storage version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_62
    const-string v3, "conversations"

    invoke-virtual {p0, v3, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1183
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->setDatastoreVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v3

    invoke-virtual {p4, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setClientVersion(I)V

    .line 1185
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationList(J)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 1197
    .end local v0           #dbVersion:Ljava/lang/String;
    .end local v2           #localVersion:I
    :cond_82
    :goto_82
    return-void

    .line 1169
    .restart local v0       #dbVersion:Ljava/lang/String;
    .restart local v2       #localVersion:I
    :catch_83
    move-exception v1

    .line 1170
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "EsConversationsData"

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1171
    const-string v3, "EsConversationsData"

    const-string v4, "Failed to parse database version"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_93
    const/4 v2, -0x1

    goto :goto_38

    .line 1186
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_95
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v3

    if-le v2, v3, :cond_82

    .line 1187
    const-string v3, "EsConversationsData"

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 1188
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring InvalidateLocalCache message! Local version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Server version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 1193
    .end local v0           #dbVersion:Ljava/lang/String;
    .end local v2           #localVersion:I
    :cond_ca
    const-string v3, "EsConversationsData"

    invoke-static {v3, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 1194
    const-string v3, "EsConversationsData"

    const-string v4, "Ignoring InvalidateLocalCache message without version number."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82
.end method

.method public static processInviteResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 20
    .parameter "context"
    .parameter "account"
    .parameter "inviteResponse"
    .parameter "request"
    .parameter "operationState"

    .prologue
    .line 978
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 979
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processInviteResponse participantErrorCount: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getParticipantErrorCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " requestError: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getRequestError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_33
    const/4 v12, 0x0

    .line 984
    .local v12, conversationRowId:Ljava/lang/Long;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 986
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 988
    :try_start_3f
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 989
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v14

    .line 990
    .local v14, inviteRequest:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    invoke-virtual {v14}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getConversationId()Ljava/lang/String;

    move-result-object v11

    .line 991
    .local v11, conversationId:Ljava/lang/String;
    invoke-static {v1, v11}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    .line 992
    if-nez v12, :cond_87

    .line 993
    const-string v2, "EsConversationsData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 994
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attempt to process invite response for a nonexistant conversation id ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_7a
    invoke-static {v11}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_83
    .catchall {:try_start_3f .. :try_end_83} :catchall_b1

    .line 1013
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1015
    .end local v11           #conversationId:Ljava/lang/String;
    .end local v14           #inviteRequest:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    :goto_86
    return-void

    .line 1003
    .restart local v11       #conversationId:Ljava/lang/String;
    .restart local v14       #inviteRequest:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    :cond_87
    :try_start_87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    mul-long v7, v2, v5

    .line 1004
    .local v7, timestamp:J
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getParticipantErrorList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_97
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    .line 1005
    .local v4, error:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v9, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p4

    invoke-static/range {v1 .. v10}, Lcom/google/android/apps/plus/content/EsConversationsData;->processParticipantError(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;JJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    :try_end_b0
    .catchall {:try_start_87 .. :try_end_b0} :catchall_b1

    goto :goto_97

    .line 1013
    .end local v4           #error:Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .end local v7           #timestamp:J
    .end local v11           #conversationId:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #inviteRequest:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    :catchall_b1
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1008
    .restart local v7       #timestamp:J
    .restart local v11       #conversationId:Ljava/lang/String;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v14       #inviteRequest:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    :cond_b6
    :try_start_b6
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyParticipantsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1009
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1011
    .end local v7           #timestamp:J
    .end local v11           #conversationId:Ljava/lang/String;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #inviteRequest:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    :cond_bc
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_b1

    .line 1013
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_86
.end method

.method public static processLeaveConversationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "response"
    .parameter "request"

    .prologue
    .line 1057
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1058
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processLeaveConversationResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_29
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1063
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1065
    :try_start_34
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasLeaveConversationRequest()Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 1066
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getConversationId()Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_b6

    move-result-object v8

    .line 1067
    .local v8, conversationId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1068
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1069
    .local v9, conversationRowId:Ljava/lang/Long;
    const/4 v11, 0x0

    .line 1071
    .local v11, pendingLeave:Z
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

    aput-object v8, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1077
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1078
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1079
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_76
    .catchall {:try_start_45 .. :try_end_76} :catchall_af

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ad

    const/4 v11, 0x1

    .line 1082
    :cond_7b
    :goto_7b
    if-eqz v10, :cond_80

    .line 1083
    :try_start_7d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1086
    :cond_80
    if-nez v9, :cond_bb

    .line 1087
    const-string v1, "EsConversationsData"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 1088
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempt to process presence for a nonexistant conversation id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_7d .. :try_end_a9} :catchall_b6

    .line 1103
    :cond_a9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1106
    .end local v8           #conversationId:Ljava/lang/String;
    .end local v9           #conversationRowId:Ljava/lang/Long;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #pendingLeave:Z
    :goto_ac
    return-void

    .line 1079
    .restart local v8       #conversationId:Ljava/lang/String;
    .restart local v9       #conversationRowId:Ljava/lang/Long;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #pendingLeave:Z
    :cond_ad
    const/4 v11, 0x0

    goto :goto_7b

    .line 1082
    :catchall_af
    move-exception v1

    if-eqz v10, :cond_b5

    .line 1083
    :try_start_b2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b5
    throw v1
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_b6

    .line 1103
    .end local v8           #conversationId:Ljava/lang/String;
    .end local v9           #conversationRowId:Ljava/lang/Long;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #pendingLeave:Z
    :catchall_b6
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1092
    .restart local v8       #conversationId:Ljava/lang/String;
    .restart local v9       #conversationRowId:Ljava/lang/Long;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #pendingLeave:Z
    :cond_bb
    if-eqz v11, :cond_ce

    .line 1093
    :try_start_bd
    const-string v1, "conversations"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1101
    .end local v8           #conversationId:Ljava/lang/String;
    .end local v9           #conversationRowId:Ljava/lang/Long;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #pendingLeave:Z
    :cond_ce
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d1
    .catchall {:try_start_bd .. :try_end_d1} :catchall_b6

    .line 1103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1105
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_ac
.end method

.method public static processMembershipChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$MembershipChange;IZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 53
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "change"
    .parameter "messageState"
    .parameter "sendReceipts"
    .parameter "operationState"

    .prologue
    .line 2063
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2064
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMembershipChange conversationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_33
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getTimestamp()J

    move-result-wide v18

    .line 2070
    .local v18, timestamp:J
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getParticipantList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, i$:Ljava/util/Iterator;
    :cond_3f
    :goto_3f
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_167

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 2071
    .local v7, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasParticipantId()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2074
    sget-object v2, Lcom/google/android/apps/plus/content/EsConversationsData$4;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$MembershipChange$Type:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_316

    .line 2116
    const-string v2, "EsConversationsData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2117
    const-string v2, "EsConversationsData"

    const-string v3, "Ignoring unsupported membership change event"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :pswitch_71
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 2076
    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertParticipant(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Data$Participant;)V

    .line 2079
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2081
    .local v28, actorName:Ljava/lang/String;
    const v2, 0x7f08024e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2086
    .local v13, text:Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    move/from16 v14, p6

    move/from16 v20, p7

    move-object/from16 v21, p8

    invoke-static/range {v8 .. v21}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;IZLjava/lang/String;IJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    .line 2091
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_fa

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-eqz v2, :cond_3f

    :cond_fa
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const/4 v2, 0x5

    move/from16 v0, p6

    if-eq v0, v2, :cond_3f

    .line 2095
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setShouldTriggerNotifications()V

    goto/16 :goto_3f

    .line 2101
    .end local v13           #text:Ljava/lang/String;
    .end local v28           #actorName:Ljava/lang/String;
    :pswitch_112
    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-wide/from16 v23, p3

    invoke-static/range {v20 .. v25}, Lcom/google/android/apps/plus/content/EsConversationsData;->markParticipantInactive(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)V

    .line 2103
    const v2, 0x7f08024f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2108
    .restart local v13       #text:Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getSenderId()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x7

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    move/from16 v14, p6

    move/from16 v20, p7

    move-object/from16 v21, p8

    invoke-static/range {v8 .. v21}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;IZLjava/lang/String;IJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    goto/16 :goto_3f

    .line 2124
    .end local v7           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v13           #text:Ljava/lang/String;
    :cond_167
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 2125
    const-string v2, "EsConversationsData"

    const-string v3, "renaming conversation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_177
    const/16 v29, 0x0

    .line 2129
    .local v29, conversationCursor:Landroid/database/Cursor;
    const/16 v35, 0x0

    .line 2130
    .local v35, isAwaitingEventStream:Z
    const-wide/16 v37, 0x0

    .line 2132
    .local v37, latestEventTimestamp:J
    :try_start_17d
    const-string v21, "conversations"

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    const-string v3, "is_awaiting_event_stream"

    aput-object v3, v22, v2

    const/4 v2, 0x1

    const-string v3, "latest_event_timestamp"

    aput-object v3, v22, v2

    const/4 v2, 0x2

    const-string v3, "is_muted"

    aput-object v3, v22, v2

    const-string v23, "_id=?"

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v24, v2

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 2139
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 2140
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_265

    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_265

    const/16 v35, 0x1

    .line 2142
    :goto_1c7
    const/4 v2, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1cd
    .catchall {:try_start_17d .. :try_end_1cd} :catchall_269

    move-result-wide v37

    .line 2145
    :cond_1ce
    if-eqz v29, :cond_1d3

    .line 2146
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 2150
    :cond_1d3
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 2151
    .local v33, generatedNameBuilder:Ljava/lang/StringBuilder;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    .line 2152
    .local v41, packedParticipantsBuilder:Ljava/lang/StringBuilder;
    const/16 v31, 0x0

    .line 2154
    .local v31, cursor:Landroid/database/Cursor;
    :try_start_1df
    const-string v21, "participants_view"

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    const-string v3, "participant_id"

    aput-object v3, v22, v2

    const/4 v2, 0x1

    const-string v3, "first_name"

    aput-object v3, v22, v2

    const-string v23, "conversation_id=? AND active=1"

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v24, v2

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "sequence ASC"

    move-object/from16 v20, p0

    invoke-virtual/range {v20 .. v27}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 2161
    const/16 v36, 0x1

    .line 2162
    .local v36, isFirst:Z
    const/16 v30, 0x0

    .line 2163
    .local v30, count:I
    :cond_20e
    :goto_20e
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_270

    .line 2164
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 2165
    .local v42, participantId:Ljava/lang/String;
    const/4 v2, 0x5

    move/from16 v0, v30

    if-ge v0, v2, :cond_22e

    .line 2166
    if-lez v30, :cond_229

    .line 2167
    const/16 v2, 0x7c

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2169
    :cond_229
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    add-int/lit8 v30, v30, 0x1

    .line 2172
    :cond_22e
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20e

    .line 2174
    if-nez v36, :cond_243

    .line 2175
    const-string v2, ", "

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2177
    :cond_243
    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 2178
    .local v39, name:Ljava/lang/String;
    if-eqz v39, :cond_20e

    const-string v2, ""

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20e

    .line 2179
    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_262
    .catchall {:try_start_1df .. :try_end_262} :catchall_30f

    .line 2180
    const/16 v36, 0x0

    goto :goto_20e

    .line 2140
    .end local v30           #count:I
    .end local v31           #cursor:Landroid/database/Cursor;
    .end local v33           #generatedNameBuilder:Ljava/lang/StringBuilder;
    .end local v36           #isFirst:Z
    .end local v39           #name:Ljava/lang/String;
    .end local v41           #packedParticipantsBuilder:Ljava/lang/StringBuilder;
    .end local v42           #participantId:Ljava/lang/String;
    :cond_265
    const/16 v35, 0x0

    goto/16 :goto_1c7

    .line 2145
    :catchall_269
    move-exception v2

    if-eqz v29, :cond_26f

    .line 2146
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_26f
    throw v2

    .line 2185
    .restart local v30       #count:I
    .restart local v31       #cursor:Landroid/database/Cursor;
    .restart local v33       #generatedNameBuilder:Ljava/lang/StringBuilder;
    .restart local v36       #isFirst:Z
    .restart local v41       #packedParticipantsBuilder:Ljava/lang/StringBuilder;
    :cond_270
    if-eqz v31, :cond_275

    .line 2186
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2189
    :cond_275
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 2190
    .local v32, generatedName:Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 2191
    .local v40, packedParticipants:Ljava/lang/String;
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a0

    .line 2192
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generated name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_2a0
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c3

    .line 2195
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packed participants "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :cond_2c3
    new-instance v43, Landroid/content/ContentValues;

    invoke-direct/range {v43 .. v43}, Landroid/content/ContentValues;-><init>()V

    .line 2199
    .local v43, values:Landroid/content/ContentValues;
    const-string v2, "generated_name"

    move-object/from16 v0, v43

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    const-string v2, "packed_participants"

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->hasTimestamp()Z

    move-result v2

    if-eqz v2, :cond_2f9

    .line 2203
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getTimestamp()J

    move-result-wide v2

    cmp-long v2, v2, v37

    if-lez v2, :cond_2f9

    if-nez v35, :cond_2f9

    .line 2205
    const-string v2, "latest_event_timestamp"

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2209
    :cond_2f9
    const-string v2, "conversations"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2212
    return-void

    .line 2185
    .end local v30           #count:I
    .end local v32           #generatedName:Ljava/lang/String;
    .end local v36           #isFirst:Z
    .end local v40           #packedParticipants:Ljava/lang/String;
    .end local v43           #values:Landroid/content/ContentValues;
    :catchall_30f
    move-exception v2

    if-eqz v31, :cond_315

    .line 2186
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_315
    throw v2

    .line 2074
    :pswitch_data_316
    .packed-switch 0x1
        :pswitch_71
        :pswitch_112
    .end packed-switch
.end method

.method private static processMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 38
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "message"
    .parameter "conversationId"
    .parameter "conversationRowId"
    .parameter "sendReceipts"
    .parameter "operationState"

    .prologue
    .line 1267
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContentCount()I

    move-result v4

    if-lez v4, :cond_105

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getText()Ljava/lang/String;

    move-result-object v25

    .line 1269
    .local v25, text:Ljava/lang/String;
    :goto_11
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)I

    move-result v24

    .line 1270
    .local v24, state:I
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1271
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessage conversationId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_52
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v26

    .line 1276
    .local v26, timestamp:J
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasMessageClientId()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 1277
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientId()Ljava/lang/String;

    move-result-object v13

    .line 1278
    .local v13, clientMessageId:Ljava/lang/String;
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 1279
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new message timestamp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_8d
    if-eqz v13, :cond_98

    .line 1283
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-wide/from16 v2, v26

    invoke-static {v0, v13, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateMessageTimestamp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1288
    .end local v13           #clientMessageId:Ljava/lang/String;
    :cond_98
    const/16 v23, 0x0

    .line 1290
    .local v23, participantCursor:Landroid/database/Cursor;
    :try_start_9a
    const-string v5, "participants"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const-string v7, "participant_id=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 1295
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_109

    .line 1296
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 1297
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attempt to insert a message timestamp ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for nonexistant participant id ["

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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_f8
    invoke-static/range {p4 .. p4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationListForConversation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    :try_end_101
    .catchall {:try_start_9a .. :try_end_101} :catchall_33c

    .line 1308
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1455
    :cond_104
    :goto_104
    return-void

    .line 1267
    .end local v23           #participantCursor:Landroid/database/Cursor;
    .end local v24           #state:I
    .end local v25           #text:Ljava/lang/String;
    .end local v26           #timestamp:J
    :cond_105
    const-string v25, ""

    goto/16 :goto_11

    .line 1308
    .restart local v23       #participantCursor:Landroid/database/Cursor;
    .restart local v24       #state:I
    .restart local v25       #text:Ljava/lang/String;
    .restart local v26       #timestamp:J
    :cond_109
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1311
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 1312
    .local v28, values:Landroid/content/ContentValues;
    const/16 v17, 0x0

    .line 1313
    .local v17, imageUrl:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasPhotoMetadata()Z

    move-result v4

    if-eqz v4, :cond_138

    .line 1314
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getUrl()Ljava/lang/String;

    move-result-object v17

    .line 1315
    const-string v4, "image_url"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_138
    const-string v4, "conversation_id"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1318
    const-string v4, "author_id"

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v4, "text"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const-string v4, "status"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1321
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1322
    const-string v4, "timestamp"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1324
    const/16 v22, 0x0

    .line 1325
    .local v22, messageRowId:Ljava/lang/Long;
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->hasTimestamp()Z

    move-result v4

    if-eqz v4, :cond_18d

    .line 1326
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryMessageRowId(Landroid/database/sqlite/SQLiteDatabase;JJ)Ljava/lang/Long;

    move-result-object v22

    .line 1328
    :cond_18d
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1bc

    .line 1329
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

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_1bc
    const/4 v12, 0x1

    .line 1333
    .local v12, allowUnhide:Z
    if-eqz v22, :cond_341

    .line 1334
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1cf

    .line 1335
    const-string v4, "EsConversationsData"

    const-string v5, "updating message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_1cf
    const-string v4, "messages"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1340
    const/4 v12, 0x0

    .line 1379
    :goto_1e5
    const-wide/16 v20, 0x0

    .line 1380
    .local v20, latestMessageTimestamp:J
    const-wide/16 v15, 0x0

    .line 1381
    .local v15, earliestEventTimestamp:J
    const/16 v18, 0x0

    .line 1382
    .local v18, isAwaitingEventStream:Z
    const/16 v19, 0x0

    .line 1383
    .local v19, isMuted:Z
    const/4 v14, 0x0

    .line 1385
    .local v14, conversationCursor:Landroid/database/Cursor;
    :try_start_1ee
    const-string v5, "conversations"

    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "is_awaiting_event_stream"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "latest_message_timestamp"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "earliest_event_timestamp"

    aput-object v7, v6, v4

    const/4 v4, 0x3

    const-string v7, "is_muted"

    aput-object v7, v6, v4

    const-string v7, "_id=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1393
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_24c

    .line 1394
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3fb

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3fb

    const/16 v18, 0x1

    .line 1396
    :goto_232
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1397
    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1398
    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3ff

    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_247
    .catchall {:try_start_1ee .. :try_end_247} :catchall_403

    move-result v4

    if-eqz v4, :cond_3ff

    const/16 v19, 0x1

    .line 1402
    :cond_24c
    :goto_24c
    if-eqz v14, :cond_251

    .line 1403
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1407
    :cond_251
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_280

    .line 1408
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new message timestamp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " conversation latest "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_280
    cmp-long v4, v26, v20

    if-ltz v4, :cond_104

    .line 1413
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_294

    .line 1414
    const-string v4, "EsConversationsData"

    const-string v5, "updating latest message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_294
    invoke-virtual/range {v28 .. v28}, Landroid/content/ContentValues;->clear()V

    .line 1417
    if-eqz v12, :cond_2a5

    .line 1418
    const-string v4, "is_visible"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1420
    :cond_2a5
    const-string v4, "latest_message_text"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v4, "latest_message_image_url"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v4, "latest_message_author_id"

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v4, "latest_message_timestamp"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1424
    const-string v4, "latest_message_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1426
    if-nez v18, :cond_40a

    .line 1427
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2eb

    .line 1428
    const-string v4, "EsConversationsData"

    const-string v5, "updating latest event timestamp"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_2eb
    const-string v4, "latest_event_timestamp"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1442
    :cond_2f6
    :goto_2f6
    const-string v4, "conversations"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1446
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_104

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_32b

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p5, v4

    if-eqz v4, :cond_104

    :cond_32b
    if-nez v19, :cond_104

    const/4 v4, 0x4

    move/from16 v0, v24

    if-eq v0, v4, :cond_337

    const/4 v4, 0x3

    move/from16 v0, v24

    if-ne v0, v4, :cond_104

    .line 1452
    :cond_337
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->setShouldTriggerNotifications()V

    goto/16 :goto_104

    .line 1308
    .end local v12           #allowUnhide:Z
    .end local v14           #conversationCursor:Landroid/database/Cursor;
    .end local v15           #earliestEventTimestamp:J
    .end local v17           #imageUrl:Ljava/lang/String;
    .end local v18           #isAwaitingEventStream:Z
    .end local v19           #isMuted:Z
    .end local v20           #latestMessageTimestamp:J
    .end local v22           #messageRowId:Ljava/lang/Long;
    .end local v28           #values:Landroid/content/ContentValues;
    :catchall_33c
    move-exception v4

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1342
    .restart local v12       #allowUnhide:Z
    .restart local v17       #imageUrl:Ljava/lang/String;
    .restart local v22       #messageRowId:Ljava/lang/Long;
    .restart local v28       #values:Landroid/content/ContentValues;
    :cond_341
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_351

    .line 1343
    const-string v4, "EsConversationsData"

    const-string v5, "inserting message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_351
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_363

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p5, v4

    if-eqz v4, :cond_376

    :cond_363
    const/4 v4, 0x5

    move/from16 v0, v24

    if-eq v0, v4, :cond_376

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3ee

    .line 1349
    :cond_376
    const-string v4, "notification_seen"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1354
    :goto_382
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3cb

    if-eqz p7, :cond_3cb

    const/4 v4, 0x3

    move/from16 v0, v24

    if-ne v0, v4, :cond_3cb

    .line 1356
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v4

    sget-object v6, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->DELIVERED:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReceipt(Ljava/lang/String;JLcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 1358
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_3cb

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p5

    if-nez v4, :cond_3cb

    .line 1360
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v4

    sget-object v6, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->READ:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5, v6}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendReceipt(Ljava/lang/String;JLcom/google/wireless/realtimechat/proto/Client$Receipt$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 1365
    :cond_3cb
    sget-object v4, Lcom/google/android/apps/plus/content/EsConversationsData;->sHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/apps/plus/content/EsConversationsData$2;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData$2;-><init>(Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1377
    const-string v4, "messages"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    goto/16 :goto_1e5

    .line 1351
    :cond_3ee
    const-string v4, "notification_seen"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_382

    .line 1394
    .restart local v14       #conversationCursor:Landroid/database/Cursor;
    .restart local v15       #earliestEventTimestamp:J
    .restart local v18       #isAwaitingEventStream:Z
    .restart local v19       #isMuted:Z
    .restart local v20       #latestMessageTimestamp:J
    :cond_3fb
    const/16 v18, 0x0

    goto/16 :goto_232

    .line 1398
    :cond_3ff
    const/16 v19, 0x0

    goto/16 :goto_24c

    .line 1402
    :catchall_403
    move-exception v4

    if-eqz v14, :cond_409

    .line 1403
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_409
    throw v4

    .line 1431
    :cond_40a
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-nez v4, :cond_2f6

    .line 1435
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_433

    .line 1436
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating earliest and latest event timestamp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_433
    const-string v4, "latest_event_timestamp"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1439
    const-string v4, "earliest_event_timestamp"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2f6
.end method

.method private static processMigration(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$Migration;)V
    .registers 15
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "migration"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1531
    const-string v6, "EsConversationsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1532
    const-string v6, "EsConversationsData"

    const-string v7, "processMigration"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_12
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getOldId()Ljava/lang/String;

    move-result-object v4

    .line 1536
    .local v4, oldUserId:Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getNewId()Ljava/lang/String;

    move-result-object v3

    .line 1537
    .local v3, newUserId:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1538
    .local v0, conversationValues:Landroid/content/ContentValues;
    const-string v6, "participant_id"

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const-string v6, "conversation_participants"

    const-string v7, "participant_id=?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-virtual {p0, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1542
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1543
    .local v2, messageValues:Landroid/content/ContentValues;
    const-string v6, "author_id"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const-string v6, "messages"

    const-string v7, "author_id=?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-virtual {p0, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1547
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1548
    .local v5, snippetValues:Landroid/content/ContentValues;
    const-string v6, "latest_message_author_id"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string v6, "conversations"

    const-string v7, "latest_message_author_id=?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-virtual {p0, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1552
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1553
    .local v1, inviterValues:Landroid/content/ContentValues;
    const-string v6, "inviter_id"

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    const-string v6, "conversations"

    const-string v7, "inviter_id=?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-virtual {p0, v6, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1556
    return-void
.end method

.method private static processNewConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$NewConversation;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J
    .registers 15
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "newConversation"
    .parameter "operationState"

    .prologue
    .line 1122
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1123
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNewConversation  conversationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_29
    const/4 v7, 0x0

    .line 1127
    .local v7, conversationRowId:Ljava/lang/Long;
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v6

    .line 1129
    .local v6, conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    invoke-static {p0, p1, p2, v6, p4}, Lcom/google/android/apps/plus/content/EsConversationsData;->processConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1132
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1133
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "is_awaiting_event_stream"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1134
    const-string v0, "conversations"

    const-string v1, "conversation_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v9, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1138
    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/16 v5, 0x14

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getEventStream(Ljava/lang/String;JJI)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v8

    .line 1141
    .local v8, request:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-virtual {p4, v8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 1142
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1143
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requesting 20 events since 0 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_8c
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static processParticipantError(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;JJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 29
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "error"
    .parameter "conversationRowId"
    .parameter "timestamp"
    .parameter "sendReceipts"
    .parameter "operationState"

    .prologue
    .line 1573
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1574
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processParticipantError status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_29
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->hasFullName()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->hasStatus()Z

    move-result v2

    if-nez v2, :cond_46

    .line 1579
    :cond_35
    const-string v2, "EsConversationsData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1580
    const-string v2, "EsConversationsData"

    const-string v3, "Participant error with no name or status"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_45
    :goto_45
    return-void

    .line 1584
    :cond_46
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getFullName()Ljava/lang/String;

    move-result-object v16

    .line 1585
    .local v16, participantName:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v18

    .line 1587
    .local v18, status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    sget-object v2, Lcom/google/android/apps/plus/content/EsConversationsData$4;->$SwitchMap$com$google$wireless$realtimechat$proto$Data$ResponseStatus:[I

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ae

    .line 1601
    const v17, 0x7f080259

    .line 1603
    .local v17, resourceId:I
    :goto_5c
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1605
    .local v7, text:Ljava/lang/String;
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p4

    move-wide/from16 v12, p6

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-static/range {v2 .. v15}, Lcom/google/android/apps/plus/content/EsConversationsData;->insertSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;IZLjava/lang/String;IJZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J

    goto :goto_45

    .line 1589
    .end local v7           #text:Ljava/lang/String;
    .end local v17           #resourceId:I
    :pswitch_9e
    const v17, 0x7f080255

    .line 1590
    .restart local v17       #resourceId:I
    goto :goto_5c

    .line 1592
    .end local v17           #resourceId:I
    :pswitch_a2
    const v17, 0x7f080256

    .line 1593
    .restart local v17       #resourceId:I
    goto :goto_5c

    .line 1595
    .end local v17           #resourceId:I
    :pswitch_a6
    const v17, 0x7f080257

    .line 1596
    .restart local v17       #resourceId:I
    goto :goto_5c

    .line 1598
    .end local v17           #resourceId:I
    :pswitch_aa
    const v17, 0x7f080258

    .line 1599
    .restart local v17       #resourceId:I
    goto :goto_5c

    .line 1587
    :pswitch_data_ae
    .packed-switch 0x5
        :pswitch_9e
        :pswitch_a2
        :pswitch_a6
        :pswitch_aa
    .end packed-switch
.end method

.method private static processPresence(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Presence;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 15
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "presence"
    .parameter "operationState"

    .prologue
    .line 1468
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1469
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPresence conversationId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_25
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->hasConversationId()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1473
    const-string v4, "EsConversationsData"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1474
    const-string v4, "EsConversationsData"

    const-string v5, "Received a Presence message without conversation id"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_3b
    :goto_3b
    return-void

    .line 1478
    :cond_3c
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getConversationId()Ljava/lang/String;

    move-result-object v3

    .line 1480
    .local v3, targetConversationId:Ljava/lang/String;
    invoke-virtual {p6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v1

    .line 1481
    .local v1, currentConversationRowId:Ljava/lang/Long;
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->hasReciprocate()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getReciprocate()Z

    move-result v4

    if-eqz v4, :cond_77

    if-eqz v1, :cond_77

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_77

    .line 1483
    invoke-virtual {p6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, currentConversationId:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1486
    .local v2, isPresent:Z
    if-eqz v2, :cond_77

    .line 1487
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->presenceRequest(Ljava/lang/String;ZZ)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    invoke-virtual {p6, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 1494
    .end local v0           #currentConversationId:Ljava/lang/String;
    .end local v2           #isPresent:Z
    :cond_77
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1495
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getSenderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getType()Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    move-result-object v4

    sget-object v6, Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;->FOCUS:Lcom/google/wireless/realtimechat/proto/Client$Presence$Type;

    if-ne v4, v6, :cond_96

    const/4 v4, 0x1

    :goto_92
    invoke-static {p3, p4, v5, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->notifyUserPresenceChanged(JLjava/lang/String;Z)V

    goto :goto_3b

    :cond_96
    const/4 v4, 0x0

    goto :goto_92
.end method

.method private static processPreviewMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 19
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "message"
    .parameter "conversationId"
    .parameter "conversationRowId"
    .parameter "operationState"

    .prologue
    .line 1622
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContentCount()I

    move-result v6

    if-lez v6, :cond_a6

    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getText()Ljava/lang/String;

    move-result-object v2

    .line 1623
    .local v2, text:Ljava/lang/String;
    :goto_f
    invoke-static {p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)I

    move-result v1

    .line 1624
    .local v1, state:I
    const-string v6, "EsConversationsData"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1625
    const-string v6, "EsConversationsData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processPreviewMessage conversationId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_4c
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v3

    .line 1630
    .local v3, timestamp:J
    const/4 v0, 0x0

    .line 1631
    .local v0, imageUrl:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Data$Content;->hasPhotoMetadata()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1632
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1635
    :cond_69
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1636
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "latest_message_text"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    const-string v6, "latest_message_image_url"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string v6, "latest_message_author_id"

    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string v6, "latest_message_timestamp"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1640
    const-string v6, "latest_message_type"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1643
    const-string v6, "conversations"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1645
    return-void

    .line 1622
    .end local v0           #imageUrl:Ljava/lang/String;
    .end local v1           #state:I
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #timestamp:J
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_a6
    const-string v2, ""

    goto/16 :goto_f
.end method

.method public static processReceipt(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Receipt;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 24
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "receipt"
    .parameter "operationState"

    .prologue
    .line 1762
    const/4 v10, 0x0

    .line 1763
    .local v10, clientMessageId:Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->hasMessageClientId()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1764
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageClientId()Ljava/lang/String;

    move-result-object v10

    .line 1766
    :cond_b
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1767
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processReceipt Conversation row id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_54
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1774
    .local v16, values:Landroid/content/ContentValues;
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getMessageTimestamp()J

    move-result-wide v14

    .line 1776
    .local v14, timestamp:J
    const/4 v12, 0x0

    .line 1777
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v11, 0x3

    .line 1778
    .local v11, currentStatus:I
    const/4 v13, 0x0

    .line 1780
    .local v13, messageRowId:Ljava/lang/Long;
    :try_start_60
    const-string v3, "messages"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "status"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "conversation_id=? AND timestamp=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1787
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 1788
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1789
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_9e
    .catchall {:try_start_60 .. :try_end_9e} :catchall_117

    move-result-object v13

    .line 1808
    :cond_9f
    :goto_9f
    if-eqz v12, :cond_a4

    .line 1809
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1813
    :cond_a4
    sget-object v2, Lcom/google/android/apps/plus/content/EsConversationsData$4;->$SwitchMap$com$google$wireless$realtimechat$proto$Client$Receipt$Type:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_150

    .line 1836
    :cond_b3
    :goto_b3
    if-eqz v13, :cond_d8

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_d8

    .line 1837
    const-string v2, "messages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1857
    :cond_d8
    return-void

    .line 1790
    :cond_d9
    if-eqz v10, :cond_9f

    .line 1794
    :try_start_db
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1795
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

    aput-object v10, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1802
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 1803
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1804
    const-string v2, "timestamp"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_116
    .catchall {:try_start_db .. :try_end_116} :catchall_117

    goto :goto_9f

    .line 1808
    :catchall_117
    move-exception v2

    if-eqz v12, :cond_11d

    .line 1809
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_11d
    throw v2

    .line 1817
    :pswitch_11e
    const/4 v2, 0x4

    if-eq v11, v2, :cond_b3

    const/4 v2, 0x5

    if-eq v11, v2, :cond_b3

    .line 1819
    const-string v2, "status"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b3

    .line 1825
    :pswitch_131
    const/4 v2, 0x5

    if-eq v11, v2, :cond_b3

    .line 1826
    const-string v2, "status"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_b3

    .line 1831
    :pswitch_142
    const-string v2, "status"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_b3

    .line 1813
    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_11e
        :pswitch_131
        :pswitch_142
    .end packed-switch
.end method

.method private static processSingleMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$ChatMessage;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 21
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "message"
    .parameter "operationState"

    .prologue
    .line 1211
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1212
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSingleMessage messageClientId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getMessageClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " conversationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " receiverState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_4f
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getConversationId()Ljava/lang/String;

    move-result-object v10

    .line 1219
    .local v10, conversationId:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/google/android/apps/plus/content/EsConversationsData;->determineMessageState(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)I

    move-result v11

    .line 1222
    .local v11, state:I
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_d0

    :cond_69
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    const/4 v0, 0x3

    if-eq v11, v0, :cond_7d

    const/4 v0, 0x4

    if-ne v11, v0, :cond_d0

    .line 1227
    :cond_7d
    const/4 v9, 0x0

    .line 1228
    .local v9, c:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1230
    .local v12, unreadCount:I
    :try_start_7f
    const-string v1, "conversations"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "unread_count"

    aput-object v3, v2, v0

    const-string v3, "conversation_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1234
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1235
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_a3
    .catchall {:try_start_7f .. :try_end_a3} :catchall_e0

    move-result v12

    .line 1238
    :cond_a4
    if-eqz v9, :cond_a9

    .line 1239
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1242
    :cond_a9
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1243
    .local v13, values:Landroid/content/ContentValues;
    const-string v0, "unread_count"

    add-int/lit8 v1, v12, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1244
    const-string v0, "is_visible"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1245
    const-string v0, "conversations"

    const-string v1, "conversation_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-virtual {p0, v0, v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1250
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #unreadCount:I
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_d0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object v4, v10

    move-wide/from16 v5, p3

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->processMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;Ljava/lang/String;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 1252
    return-void

    .line 1238
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v12       #unreadCount:I
    :catchall_e0
    move-exception v0

    if-eqz v9, :cond_e6

    .line 1239
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e6
    throw v0
.end method

.method public static processSuggestionsResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "response"
    .parameter "request"
    .parameter "operationState"

    .prologue
    .line 119
    const-string v9, "EsConversationsData"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 120
    const-string v9, "EsConversationsData"

    const-string v10, "processSuggestionsResponse"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_10
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasSuggestionsRequest()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 124
    invoke-virtual {p3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getSuggestionsType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    move-result-object v9

    sget-object v10, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;->ONLY_NEW:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$SuggestionsType;

    if-eq v9, v10, :cond_33

    .line 126
    const-string v9, "EsConversationsData"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 127
    const-string v9, "EsConversationsData"

    const-string v10, "ignoring"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_32
    :goto_32
    return-void

    .line 132
    :cond_33
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 134
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 136
    :try_start_3e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v4, participantIds:Ljava/lang/StringBuilder;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v8, values:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 139
    .local v5, sequence:I
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getSuggestionList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    .line 140
    .local v7, suggestion:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    invoke-virtual {v7}, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;->getSuggestedUserList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v6, v5

    .end local v5           #sequence:I
    .local v6, sequence:I
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 141
    .local v3, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    if-lez v6, :cond_79

    .line 142
    const/16 v9, 0x2c

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    :cond_79
    const-string v9, "\'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 146
    const-string v9, "full_name"

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v9, "first_name"

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v9, "participant_id"

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v9, "sequence"

    add-int/lit8 v5, v6, 0x1

    .end local v6           #sequence:I
    .restart local v5       #sequence:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v9, "messenger_suggestions"

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v0, v9, v10, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move v6, v5

    .end local v5           #sequence:I
    .restart local v6       #sequence:I
    goto :goto_66

    .end local v3           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_be
    move v5, v6

    .end local v6           #sequence:I
    .restart local v5       #sequence:I
    goto :goto_51

    .line 156
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #suggestion:Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    :cond_c0
    const-string v9, "messenger_suggestions"

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

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e6
    .catchall {:try_start_3e .. :try_end_e6} :catchall_ee

    .line 162
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifySuggestionsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_32

    .line 162
    .end local v4           #participantIds:Ljava/lang/StringBuilder;
    .end local v5           #sequence:I
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_ee
    move-exception v9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9
.end method

.method private static processTileEvent(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$TileEvent;IZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 23
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "tileEvent"
    .parameter "messageState"
    .parameter "sendReceipts"
    .parameter "operationState"

    .prologue
    .line 2284
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getEventType()Ljava/lang/String;

    move-result-object v11

    .line 2285
    .local v11, eventType:Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTimestamp()J

    move-result-wide v12

    .line 2286
    .local v12, timestamp:J
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2287
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processTileEvent conversation id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Event Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Tile Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Tile Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTileVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Timestamp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_5d
    const-string v2, "JOIN_HANGOUT"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    .line 2294
    invoke-static/range {v2 .. v10}, Lcom/google/android/apps/plus/content/EsConversationsData;->processHangoutTile(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;JIZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V

    .line 2301
    :cond_76
    :goto_76
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getTimestamp()J

    move-result-wide v2

    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateLatestEventTimestamp(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 2302
    return-void

    .line 2297
    :cond_80
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2298
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processTileEvent for unexpected event type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76
.end method

.method private static processTyping(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing;)V
    .registers 10
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "typing"

    .prologue
    .line 1509
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1510
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processTyping conversationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_25
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 1515
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getType()Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    move-result-object v0

    sget-object v3, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->START:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    if-ne v0, v3, :cond_48

    const/4 v0, 0x1

    :goto_44
    invoke-static {p3, p4, v1, v2, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->notifyUserTypingStatusChanged(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 1518
    :cond_47
    return-void

    .line 1515
    :cond_48
    const/4 v0, 0x0

    goto :goto_44
.end method

.method public static processUserCreationResponse(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "response"
    .parameter "operationState"

    .prologue
    const/4 v5, 0x3

    .line 175
    const-string v4, "EsConversationsData"

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 176
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processUserCreationResponse participantId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getParticipantId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_25
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 182
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 184
    :try_start_30
    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryLoadConversationsSince(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v1

    .line 188
    .local v1, latestEventTimestamp:J
    const-string v4, "EsConversationsData"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 189
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requesting conversations changed since "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_55
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getConversationList(J)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 192
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getParticipantId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getUserInfo(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 193
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getOOBSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 199
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "key"

    const-string v5, "requested_conversations_since"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v4, "value"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v4, "realtimechat_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 205
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8d
    .catchall {:try_start_30 .. :try_end_8d} :catchall_91

    .line 207
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 209
    return-void

    .line 207
    .end local v1           #latestEventTimestamp:J
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_91
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public static queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .registers 7
    .parameter "db"
    .parameter "conversationRowId"

    .prologue
    .line 3897
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3898
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

    .line 3900
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

    .line 3869
    const/4 v8, 0x0

    .line 3871
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

    .line 3876
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3877
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_34

    .line 3878
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_3b

    move-result-object v0

    .line 3881
    if-eqz v8, :cond_33

    .line 3882
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3885
    :cond_33
    :goto_33
    return-object v0

    .line 3881
    :cond_34
    if-eqz v8, :cond_39

    .line 3882
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_39
    move-object v0, v9

    .line 3885
    goto :goto_33

    .line 3881
    :catchall_3b
    move-exception v0

    if-eqz v8, :cond_41

    .line 3882
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v0
.end method

.method public static queryDatastoreVersion(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 3540
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3542
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3544
    :try_start_b
    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryDatastoreVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1

    .line 3545
    .local v1, version:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    .line 3548
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    .end local v1           #version:Ljava/lang/String;
    :catchall_16
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private static queryDatastoreVersion(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .registers 12
    .parameter "db"

    .prologue
    const/4 v10, 0x0

    .line 3556
    const/4 v9, 0x0

    .line 3558
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_2
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

    move-result-object v9

    .line 3563
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3564
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_37

    move-result-object v0

    .line 3567
    if-eqz v9, :cond_2f

    .line 3568
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3571
    :cond_2f
    :goto_2f
    return-object v0

    .line 3567
    :cond_30
    if-eqz v9, :cond_35

    .line 3568
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_35
    move-object v0, v10

    .line 3571
    goto :goto_2f

    .line 3567
    :catchall_37
    move-exception v0

    if-eqz v9, :cond_3d

    .line 3568
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3d
    throw v0
.end method

.method private static queryLoadConversationsSince(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 14
    .parameter "db"

    .prologue
    const-wide/16 v11, 0x0

    .line 3655
    const/4 v9, 0x0

    .line 3661
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_3
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

    move-result-object v9

    .line 3666
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_8d

    move-result v0

    if-eqz v0, :cond_62

    .line 3668
    const/4 v0, 0x0

    :try_start_27
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_32} :catch_39

    move-result-wide v0

    .line 3677
    if-eqz v9, :cond_38

    .line 3678
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3696
    :cond_38
    :goto_38
    return-wide v0

    .line 3669
    :catch_39
    move-exception v10

    .line 3670
    .local v10, ex:Ljava/lang/NumberFormatException;
    :try_start_3a
    const-string v0, "EsConversationsData"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3671
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid requested conversations since "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_3a .. :try_end_5b} :catchall_8d

    .line 3677
    :cond_5b
    if-eqz v9, :cond_60

    .line 3678
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_60
    move-wide v0, v11

    goto :goto_38

    .line 3677
    .end local v10           #ex:Ljava/lang/NumberFormatException;
    :cond_62
    if-eqz v9, :cond_67

    .line 3678
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3682
    :cond_67
    const/4 v9, 0x0

    .line 3684
    :try_start_68
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

    .line 3688
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 3689
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_86
    .catchall {:try_start_68 .. :try_end_86} :catchall_9b

    move-result-wide v0

    .line 3692
    if-eqz v9, :cond_38

    .line 3693
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 3677
    :catchall_8d
    move-exception v0

    if-eqz v9, :cond_93

    .line 3678
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_93
    throw v0

    .line 3692
    :cond_94
    if-eqz v9, :cond_99

    .line 3693
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_99
    move-wide v0, v11

    .line 3696
    goto :goto_38

    .line 3692
    :catchall_9b
    move-exception v0

    if-eqz v9, :cond_a1

    .line 3693
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a1
    throw v0
.end method

.method public static queryMessageRowId(Landroid/database/sqlite/SQLiteDatabase;JJ)Ljava/lang/Long;
    .registers 15
    .parameter "db"
    .parameter "conversationRowId"
    .parameter "timestamp"

    .prologue
    const/4 v9, 0x0

    .line 3919
    const/4 v8, 0x0

    .line 3921
    .local v8, c:Landroid/database/Cursor;
    :try_start_2
    const-string v1, "messages"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "conversation_id=? AND timestamp=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3928
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3929
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 3930
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_46

    move-result-object v0

    .line 3933
    if-eqz v8, :cond_3e

    .line 3934
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3937
    :cond_3e
    :goto_3e
    return-object v0

    .line 3933
    :cond_3f
    if-eqz v8, :cond_44

    .line 3934
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_44
    move-object v0, v9

    .line 3937
    goto :goto_3e

    .line 3933
    :catchall_46
    move-exception v0

    if-eqz v8, :cond_4c

    .line 3934
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v0
.end method

.method private static queryMessageStatus(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 12
    .parameter "db"
    .parameter "messageRowId"

    .prologue
    .line 3708
    const/4 v8, 0x0

    .line 3710
    .local v8, c:Landroid/database/Cursor;
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

    move-result-object v8

    .line 3715
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3716
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_31

    .line 3717
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_36

    move-result v0

    .line 3720
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3722
    :goto_30
    return v0

    .line 3720
    :cond_31
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3722
    const/4 v0, -0x1

    goto :goto_30

    .line 3720
    :catchall_36
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static queryOldestMessageTimestamp(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 12
    .parameter "db"
    .parameter "conversationRowId"

    .prologue
    .line 3581
    const/4 v8, 0x0

    .line 3583
    .local v8, cursor:Landroid/database/Cursor;
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

    move-result-object v8

    .line 3588
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3589
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_38

    move-result-wide v0

    .line 3592
    if-eqz v8, :cond_2f

    .line 3593
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3596
    :cond_2f
    :goto_2f
    return-wide v0

    .line 3592
    :cond_30
    if-eqz v8, :cond_35

    .line 3593
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3596
    :cond_35
    const-wide/16 v0, 0x0

    goto :goto_2f

    .line 3592
    :catchall_38
    move-exception v0

    if-eqz v8, :cond_3e

    .line 3593
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0
.end method

.method public static queryOneToOneConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Long;
    .registers 8
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "participantId"

    .prologue
    .line 4006
    const/4 v0, 0x0

    .line 4008
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "conversations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "conversations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "conversations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "conversation_participants"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "conversation_participants"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "conversation_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "conversations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_group"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "participant_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4033
    .local v1, query:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4034
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 4035
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_b4
    .catchall {:try_start_1 .. :try_end_b4} :catchall_c2

    move-result-object v2

    .line 4038
    if-eqz v0, :cond_ba

    .line 4039
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4042
    :cond_ba
    :goto_ba
    return-object v2

    .line 4038
    :cond_bb
    if-eqz v0, :cond_c0

    .line 4039
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4042
    :cond_c0
    const/4 v2, 0x0

    goto :goto_ba

    .line 4038
    .end local v1           #query:Ljava/lang/String;
    :catchall_c2
    move-exception v2

    if-eqz v0, :cond_c8

    .line 4039
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_c8
    throw v2
.end method

.method public static queryParticipantFirstName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "db"
    .parameter "participantId"

    .prologue
    const/4 v9, 0x0

    .line 3975
    if-nez p1, :cond_5

    move-object v0, v9

    .line 3992
    :cond_4
    :goto_4
    return-object v0

    .line 3978
    :cond_5
    const/4 v8, 0x0

    .line 3980
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_6
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

    move-result-object v8

    .line 3984
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3985
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_38

    move-result-object v0

    .line 3988
    if-eqz v8, :cond_4

    .line 3989
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 3988
    :cond_31
    if-eqz v8, :cond_36

    .line 3989
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_36
    move-object v0, v9

    .line 3992
    goto :goto_4

    .line 3988
    :catchall_38
    move-exception v0

    if-eqz v8, :cond_3e

    .line 3989
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0
.end method

.method public static queryParticipantFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "db"
    .parameter "participantId"

    .prologue
    const/4 v9, 0x0

    .line 3949
    const/4 v8, 0x0

    .line 3951
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_2
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

    move-result-object v8

    .line 3955
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3956
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_34

    move-result-object v0

    .line 3959
    if-eqz v8, :cond_2c

    .line 3960
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3963
    :cond_2c
    :goto_2c
    return-object v0

    .line 3959
    :cond_2d
    if-eqz v8, :cond_32

    .line 3960
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_32
    move-object v0, v9

    .line 3963
    goto :goto_2c

    .line 3959
    :catchall_34
    move-exception v0

    if-eqz v8, :cond_3a

    .line 3960
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3a
    throw v0
.end method

.method public static queryPendingMessages(Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "db"
    .parameter "conversationRowId"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 3760
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

    move-result-object v9

    .line 3766
    .local v9, cursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public static removeAllConversationsFromInviterLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "inviterId"
    .parameter "operationState"

    .prologue
    .line 3137
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3138
    const-string v1, "EsConversationsData"

    const-string v2, "removeAllConversationsFromInviterLocally"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    :cond_10
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3142
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3144
    :try_start_1b
    const-string v1, "conversations"

    const-string v2, "inviter_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3146
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_32

    .line 3148
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3150
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3151
    return-void

    .line 3148
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static removeExcessMessages(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 15
    .parameter "db"
    .parameter "conversationRowId"

    .prologue
    .line 4632
    const-wide/16 v10, 0x0

    .line 4633
    .local v10, timestamp:J
    const/4 v9, 0x0

    .line 4635
    .local v9, cursor:Landroid/database/Cursor;
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

    move-result-object v9

    .line 4641
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4642
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_4c

    move-result-wide v10

    .line 4645
    :cond_2f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4647
    const-string v0, "messages"

    const-string v1, "conversation_id=? AND timestamp<?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 4645
    :catchall_4c
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static removeLeftConversations(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter "db"
    .parameter "context"
    .parameter "account"

    .prologue
    .line 4662
    const-string v1, "conversations"

    const-string v2, "is_pending_leave=1"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4665
    .local v0, count:I
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 4666
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoveLeftConversations "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    :cond_2a
    return-void
.end method

.method public static removeMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"

    .prologue
    .line 3204
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3205
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMessageLocally  messageRowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3210
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 3211
    .local v8, conversationRowId:Ljava/lang/Long;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3213
    const/4 v9, 0x0

    .line 3215
    .local v9, cursor:Landroid/database/Cursor;
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

    move-result-object v9

    .line 3219
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 3220
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_65
    .catchall {:try_start_2e .. :try_end_65} :catchall_14f

    move-result-object v8

    .line 3223
    :cond_66
    if-eqz v9, :cond_6b

    .line 3224
    :try_start_68
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3228
    :cond_6b
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
    :try_end_88
    .catchall {:try_start_68 .. :try_end_88} :catchall_156

    .line 3235
    :try_start_88
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

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3241
    :cond_c2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 3242
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 3243
    .local v10, messageType:I
    const/4 v1, 0x2

    if-eq v10, v1, :cond_d9

    const/4 v1, 0x1

    if-eq v10, v1, :cond_d9

    const/4 v1, 0x6

    if-eq v10, v1, :cond_d9

    const/4 v1, 0x3

    if-ne v10, v1, :cond_c2

    .line 3251
    .end local v10           #messageType:I
    :cond_d9
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3252
    .local v11, values:Landroid/content/ContentValues;
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_15b

    .line 3253
    const-string v1, "latest_message_text"

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    const-string v1, "latest_message_image_url"

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3257
    const-string v1, "latest_message_timestamp"

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3258
    const-string v1, "latest_message_type"

    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3259
    const-string v1, "latest_message_author_id"

    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    :goto_11e
    const-string v1, "conversations"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_88 .. :try_end_137} :catchall_17e

    .line 3269
    if-eqz v9, :cond_13c

    .line 3270
    :try_start_139
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3274
    :cond_13c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13f
    .catchall {:try_start_139 .. :try_end_13f} :catchall_156

    .line 3276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3278
    if-eqz v8, :cond_14b

    .line 3279
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 3281
    :cond_14b
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3282
    return-void

    .line 3223
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_14f
    move-exception v1

    if-eqz v9, :cond_155

    .line 3224
    :try_start_152
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_155
    throw v1
    :try_end_156
    .catchall {:try_start_152 .. :try_end_156} :catchall_156

    .line 3276
    :catchall_156
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 3261
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_15b
    :try_start_15b
    const-string v2, "latest_message_text"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3262
    const-string v2, "latest_message_image_url"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    const-string v1, "latest_message_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3264
    const-string v2, "latest_message_author_id"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17d
    .catchall {:try_start_15b .. :try_end_17d} :catchall_17e

    goto :goto_11e

    .line 3269
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_17e
    move-exception v1

    if-eqz v9, :cond_184

    .line 3270
    :try_start_181
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_184
    throw v1
    :try_end_185
    .catchall {:try_start_181 .. :try_end_185} :catchall_156
.end method

.method private static removeOlderMessages(Landroid/database/sqlite/SQLiteDatabase;JJ)I
    .registers 10
    .parameter "db"
    .parameter "conversationRowId"
    .parameter "timestamp"

    .prologue
    .line 4616
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
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "operationState"

    .prologue
    .line 3088
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3090
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3092
    const/4 v9, 0x0

    .line 3094
    .local v9, cursor:Landroid/database/Cursor;
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

    move-result-object v9

    .line 3099
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 3100
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 3101
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requesting events since "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conversation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    :cond_75
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sget v6, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->MAX_EVENTS_PER_REQUEST:I

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getEventStream(Ljava/lang/String;JJI)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v8

    .line 3108
    .local v8, command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-virtual {p4, v8}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 3110
    .end local v8           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    :cond_8a
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 3111
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "is_awaiting_older_events"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3112
    const-string v1, "conversations"

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

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_c .. :try_end_b6} :catchall_c2

    .line 3116
    if-eqz v9, :cond_bb

    .line 3117
    :try_start_b8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3120
    :cond_bb
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_c9

    .line 3122
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3124
    return-void

    .line 3116
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_c2
    move-exception v1

    if-eqz v9, :cond_c8

    .line 3117
    :try_start_c5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_c8
    throw v1
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_c9

    .line 3122
    :catchall_c9
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public static resendMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"
    .parameter "connected"
    .parameter "operationState"

    .prologue
    .line 2705
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2706
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resendMessageLocally messageRowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_21
    const/4 v8, 0x0

    .line 2710
    .local v8, conversationRowId:Ljava/lang/Long;
    const/4 v10, 0x0

    .line 2711
    .local v10, result:Landroid/os/Bundle;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2713
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2715
    const/4 v9, 0x0

    .line 2717
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_2f
    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

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

    move-result-object v9

    .line 2721
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 2722
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_66
    .catchall {:try_start_2f .. :try_end_66} :catchall_87

    move-result-object v8

    .line 2725
    :cond_67
    if-eqz v9, :cond_6c

    .line 2726
    :try_start_69
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2730
    :cond_6c
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsConversationsData;->sendMessageInDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;

    move-result-object v10

    .line 2732
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_8e

    .line 2734
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2736
    if-eqz v8, :cond_86

    .line 2737
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2739
    :cond_86
    return-object v10

    .line 2725
    :catchall_87
    move-exception v1

    if-eqz v9, :cond_8d

    .line 2726
    :try_start_8a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8d
    throw v1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_8e

    .line 2734
    :catchall_8e
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static sendMessageInDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;
    .registers 40
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"
    .parameter "retry"
    .parameter "manual"
    .parameter "operationState"

    .prologue
    .line 4158
    const/16 v16, 0x0

    .line 4159
    .local v16, conversationRowId:Ljava/lang/Long;
    const/16 v23, 0x0

    .line 4160
    .local v23, messageId:Ljava/lang/String;
    const/16 v28, 0x0

    .line 4161
    .local v28, text:Ljava/lang/String;
    const/16 v20, 0x0

    .line 4162
    .local v20, imageUri:Ljava/lang/String;
    new-instance v26, Landroid/os/Bundle;

    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    .line 4164
    .local v26, result:Landroid/os/Bundle;
    const/16 v17, 0x0

    .line 4166
    .local v17, cursor:Landroid/database/Cursor;
    :try_start_f
    const-string v5, "messages"

    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "conversation_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "message_id"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "text"

    aput-object v7, v6, v4

    const/4 v4, 0x3

    const-string v7, "image_url"

    aput-object v7, v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 4173
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 4174
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 4175
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 4176
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 4177
    const/4 v4, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_f .. :try_end_6e} :catchall_1d1

    move-result-object v20

    .line 4180
    :cond_6f
    if-eqz v17, :cond_74

    .line 4181
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 4184
    :cond_74
    if-nez v16, :cond_99

    .line 4185
    const-string v4, "EsConversationsData"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 4186
    const-string v4, "EsConversationsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    :cond_99
    const/4 v14, 0x0

    .line 4193
    .local v14, conversationId:Ljava/lang/String;
    const/4 v15, 0x0

    .line 4194
    .local v15, conversationName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v21, v4, v6

    .line 4195
    .local v21, latestEventTimestamp:J
    const/16 v17, 0x0

    .line 4197
    :try_start_a5
    const-string v5, "conversations"

    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "conversation_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "name"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "generated_name"

    aput-object v7, v6, v4

    const/4 v4, 0x3

    const-string v7, "latest_message_timestamp"

    aput-object v7, v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 4204
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_107

    .line 4205
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4206
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4207
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 4208
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4210
    :cond_100
    const/4 v4, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_106
    .catchall {:try_start_a5 .. :try_end_106} :catchall_1d8

    move-result-wide v21

    .line 4213
    :cond_107
    if-eqz v17, :cond_10c

    .line 4214
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 4218
    :cond_10c
    const-string v4, "conversation_id"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    const-string v4, "conversation_name"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4220
    const-string v4, "message_row_id"

    move-object/from16 v0, v26

    move-wide/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4221
    const-string v4, "local_uri"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4223
    if-eqz v20, :cond_1df

    const-string v4, "content://"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1df

    .line 4279
    :goto_138
    const-wide/16 v4, 0x1

    add-long v29, v21, v4

    .line 4280
    .local v29, timestamp:J
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 4281
    .local v31, values:Landroid/content/ContentValues;
    if-eqz p6, :cond_18c

    .line 4282
    const-string v4, "latest_message_text"

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4283
    const-string v4, "latest_message_image_url"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4284
    const-string v4, "latest_message_author_id"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4286
    const-string v4, "latest_message_timestamp"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4287
    const-string v4, "latest_message_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4289
    const-string v4, "conversations"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4293
    :cond_18c
    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentValues;->clear()V

    .line 4294
    if-eqz p5, :cond_2c1

    const/16 v27, 0x7

    .line 4296
    .local v27, status:I
    :goto_193
    const-string v4, "status"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4297
    if-eqz p6, :cond_1ab

    .line 4298
    const-string v4, "timestamp"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4300
    :cond_1ab
    const-string v4, "messages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 p3, v0

    .line 4303
    return-object v26

    .line 4180
    .end local v14           #conversationId:Ljava/lang/String;
    .end local v15           #conversationName:Ljava/lang/String;
    .end local v21           #latestEventTimestamp:J
    .end local v27           #status:I
    .end local v29           #timestamp:J
    .end local v31           #values:Landroid/content/ContentValues;
    :catchall_1d1
    move-exception v4

    if-eqz v17, :cond_1d7

    .line 4181
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1d7
    throw v4

    .line 4213
    .restart local v14       #conversationId:Ljava/lang/String;
    .restart local v15       #conversationName:Ljava/lang/String;
    .restart local v21       #latestEventTimestamp:J
    :catchall_1d8
    move-exception v4

    if-eqz v17, :cond_1de

    .line 4214
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1de
    throw v4

    .line 4228
    :cond_1df
    if-eqz v14, :cond_2ae

    const-string v4, "c:"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2ae

    .line 4232
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v12

    .line 4233
    .local v12, builder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    invoke-virtual {v12, v14}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 4234
    const/16 v25, 0x0

    .line 4236
    .local v25, participantCursor:Landroid/database/Cursor;
    :try_start_1f2
    const-string v5, "participants_view"

    const/4 v4, 0x4

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "participant_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "first_name"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "full_name"

    aput-object v7, v6, v4

    const/4 v4, 0x3

    const-string v7, "type"

    aput-object v7, v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conversation_id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 4243
    :goto_22c
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_281

    .line 4244
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v24

    .line 4245
    .local v24, participantBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 4246
    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4247
    .local v18, firstName:Ljava/lang/String;
    if-eqz v18, :cond_252

    .line 4248
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 4250
    :cond_252
    const/4 v4, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 4251
    .local v19, fullName:Ljava/lang/String;
    if-eqz v19, :cond_262

    .line 4252
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 4254
    :cond_262
    const/4 v4, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(I)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 4256
    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    :try_end_279
    .catchall {:try_start_1f2 .. :try_end_279} :catchall_27a

    goto :goto_22c

    .line 4265
    .end local v18           #firstName:Ljava/lang/String;
    .end local v19           #fullName:Ljava/lang/String;
    .end local v24           #participantBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    :catchall_27a
    move-exception v4

    if-eqz v25, :cond_280

    .line 4266
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_280
    throw v4

    .line 4258
    :cond_281
    :try_start_281
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2a8

    .line 4259
    sget-object v4, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->GROUP:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    invoke-virtual {v12, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    :try_end_28d
    .catchall {:try_start_281 .. :try_end_28d} :catchall_27a

    .line 4265
    :goto_28d
    if-eqz v25, :cond_292

    .line 4266
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 4269
    :cond_292
    invoke-virtual {v12}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v13

    .line 4271
    .local v13, conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, p5

    invoke-static {v13, v0, v1, v4, v2}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    goto/16 :goto_138

    .line 4261
    .end local v13           #conversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    :cond_2a8
    :try_start_2a8
    sget-object v4, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    invoke-virtual {v12, v4}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    :try_end_2ad
    .catchall {:try_start_2a8 .. :try_end_2ad} :catchall_27a

    goto :goto_28d

    .line 4275
    .end local v12           #builder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    .end local v25           #participantCursor:Landroid/database/Cursor;
    :cond_2ae
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    move/from16 v3, p5

    invoke-static {v14, v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    goto/16 :goto_138

    .line 4294
    .restart local v29       #timestamp:J
    .restart local v31       #values:Landroid/content/ContentValues;
    :cond_2c1
    const/16 v27, 0x1

    goto/16 :goto_193
.end method

.method public static sendMessageLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)J
    .registers 28
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "text"
    .parameter "uri"
    .parameter "connected"
    .parameter "operationState"

    .prologue
    .line 2520
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2521
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessageLocally conversationRowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_23
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2525
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2526
    const/4 v15, 0x0

    .line 2528
    .local v15, messageRowId:Ljava/lang/Long;
    :try_start_2f
    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v11

    .line 2529
    .local v11, conversationId:Ljava/lang/String;
    const/16 v16, 0x1

    .line 2530
    .local v16, status:I
    const-string v3, "c:"

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 2532
    const/16 v16, 0x0

    .line 2536
    :cond_41
    :goto_41
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
    :try_end_59
    .catchall {:try_start_2f .. :try_end_59} :catchall_18d

    move-result-object v10

    .line 2539
    .local v10, clientMessageId:Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 2540
    .local v13, latestMessageTimestamp:J
    const/4 v12, 0x0

    .line 2542
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_5d
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

    move-result-object v12

    .line 2546
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 2547
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_90
    .catchall {:try_start_5d .. :try_end_90} :catchall_186

    move-result-wide v13

    .line 2550
    :cond_91
    if-eqz v12, :cond_96

    .line 2551
    :try_start_93
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2554
    :cond_96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v17, v3, v5

    .line 2555
    .local v17, timestamp:J
    cmp-long v3, v17, v13

    if-gtz v3, :cond_a6

    .line 2556
    const-wide/16 v3, 0x1

    add-long v17, v13, v3

    .line 2563
    :cond_a6
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 2564
    .local v19, values:Landroid/content/ContentValues;
    const-string v3, "latest_message_text"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    const-string v3, "latest_message_image_url"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    const-string v3, "latest_message_author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    const-string v3, "latest_message_timestamp"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2569
    const-string v3, "latest_message_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2571
    const-string v3, "conversations"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2574
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 2575
    const-string v3, "message_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    const-string v3, "conversation_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2577
    const-string v3, "author_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    const-string v3, "text"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    const-string v3, "status"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2580
    const-string v3, "type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2581
    const-string v3, "timestamp"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2582
    const-string v3, "notification_seen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2583
    const-string v3, "image_url"

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    const-string v3, "messages"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 2586
    if-eqz p6, :cond_16f

    .line 2587
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v11, v10, v0, v1, v3}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 2591
    :cond_16f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_172
    .catchall {:try_start_93 .. :try_end_172} :catchall_18d

    .line 2593
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2595
    invoke-static/range {p0 .. p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2596
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2597
    if-nez v15, :cond_192

    const-wide/16 v3, -0x1

    :goto_17f
    return-wide v3

    .line 2533
    .end local v10           #clientMessageId:Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #latestMessageTimestamp:J
    .end local v17           #timestamp:J
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_180
    if-nez p6, :cond_41

    .line 2534
    const/16 v16, 0x2

    goto/16 :goto_41

    .line 2550
    .restart local v10       #clientMessageId:Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v13       #latestMessageTimestamp:J
    :catchall_186
    move-exception v3

    if-eqz v12, :cond_18c

    .line 2551
    :try_start_189
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_18c
    throw v3
    :try_end_18d
    .catchall {:try_start_189 .. :try_end_18d} :catchall_18d

    .line 2593
    .end local v10           #clientMessageId:Ljava/lang/String;
    .end local v11           #conversationId:Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #latestMessageTimestamp:J
    .end local v16           #status:I
    :catchall_18d
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 2597
    .restart local v10       #clientMessageId:Ljava/lang/String;
    .restart local v11       #conversationId:Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v13       #latestMessageTimestamp:J
    .restart local v16       #status:I
    .restart local v17       #timestamp:J
    .restart local v19       #values:Landroid/content/ContentValues;
    :cond_192
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_17f
.end method

.method public static sendPresenceRequestLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "isPresent"
    .parameter "reciprocate"
    .parameter "operationState"

    .prologue
    .line 3326
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3327
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPresenceRequestLocally  conversationRowId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPresent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    :cond_2b
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3333
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3335
    :try_start_36
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 3336
    .local v0, conversationId:Ljava/lang/String;
    invoke-static {v0, p4, p5}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->presenceRequest(Ljava/lang/String;ZZ)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v2

    invoke-virtual {p6, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 3338
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_48

    .line 3340
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3342
    return-void

    .line 3340
    .end local v0           #conversationId:Ljava/lang/String;
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public static sendTypingRequestLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing$Type;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "typingType"
    .parameter "operationState"

    .prologue
    .line 3295
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3296
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTypingRequestLocally  conversationRowId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " typingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    :cond_2f
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3302
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3304
    :try_start_3a
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 3305
    .local v0, conversationId:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->typingRequest(Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 3307
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_4c

    .line 3309
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3311
    return-void

    .line 3309
    .end local v0           #conversationId:Ljava/lang/String;
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public static setDatastoreVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "version"

    .prologue
    .line 4052
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4053
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "key"

    const-string v2, "datastore_version"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4055
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4057
    const-string v1, "realtimechat_metadata"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 4059
    return-void
.end method

.method public static setMessageStatusLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"
    .parameter "status"

    .prologue
    .line 3162
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3163
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMessageStatusLocally  messageRowId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    :cond_21
    const/4 v8, 0x0

    .line 3167
    .local v8, conversationRowId:Ljava/lang/Long;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3169
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3171
    const/4 v9, 0x0

    .line 3173
    .local v9, cursor:Landroid/database/Cursor;
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

    move-result-object v9

    .line 3177
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 3178
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_65
    .catchall {:try_start_2e .. :try_end_65} :catchall_82

    move-result-object v8

    .line 3181
    :cond_66
    if-eqz v9, :cond_6b

    .line 3182
    :try_start_68
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6b
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    .line 3185
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->updateMessageStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V

    .line 3186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_75
    .catchall {:try_start_68 .. :try_end_75} :catchall_89

    .line 3188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3190
    if-eqz v8, :cond_81

    .line 3191
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 3193
    :cond_81
    return-void

    .line 3181
    :catchall_82
    move-exception v1

    if-eqz v9, :cond_88

    .line 3182
    :try_start_85
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_88
    throw v1
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_89

    .line 3188
    :catchall_89
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static final syncParticipants(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/wireless/realtimechat/proto/Client$ClientConversation;)V
    .registers 24
    .parameter "db"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "isConversationGroup"
    .parameter "conversation"

    .prologue
    .line 4865
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 4866
    .local v12, values:Landroid/content/ContentValues;
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantList()Ljava/util/List;

    move-result-object v9

    .line 4868
    .local v9, participants:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-virtual/range {p5 .. p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getInactiveParticipantList()Ljava/util/List;

    move-result-object v6

    .line 4872
    .local v6, inactiveParticipants:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 4873
    .local v10, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4874
    .local v1, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 4875
    .local v2, count:I
    const-string v13, "conversation_id=?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4876
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4877
    const-string v13, " AND participant_id NOT IN ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4878
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4879
    .local v8, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasParticipantId()Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 4880
    add-int/lit8 v2, v2, 0x1

    .line 4881
    const-string v13, "?,"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4882
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 4885
    .end local v8           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_4e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4886
    const-string v13, ")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4887
    const-string v13, "active"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4888
    if-lez v2, :cond_7c

    .line 4889
    const-string v14, "conversation_participants"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v15, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4894
    :cond_7c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 4895
    .local v7, packedParticipantBuilder:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4896
    .local v4, generatedName:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 4897
    const/4 v3, 0x1

    .line 4898
    .local v3, firstParticipant:Z
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_191

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4899
    .restart local v8       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    const/4 v13, 0x5

    if-ge v2, v13, :cond_ca

    .line 4900
    if-lez v2, :cond_a2

    .line 4901
    const/16 v13, 0x7c

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4903
    :cond_a2
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4905
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c8

    .line 4907
    if-nez v3, :cond_be

    .line 4908
    const-string v13, ", "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4910
    :cond_be
    const/4 v3, 0x0

    .line 4911
    if-eqz p4, :cond_188

    .line 4912
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4917
    :cond_c8
    :goto_c8
    add-int/lit8 v2, v2, 0x1

    .line 4920
    :cond_ca
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 4921
    const-string v13, "participant_id"

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4922
    const-string v13, "full_name"

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4923
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_fa

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_fa

    .line 4924
    const-string v13, "first_name"

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4926
    :cond_fa
    const-string v13, "type"

    invoke-static {v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4927
    const-string v13, "participants"

    const-string v14, "participant_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 4930
    .local v11, updateCount:I
    const-string v13, "EsConversationsData"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_14b

    .line 4931
    const-string v13, "EsConversationsData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Update Participant "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4934
    :cond_14b
    if-nez v11, :cond_155

    .line 4935
    const-string v13, "participants"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4938
    :cond_155
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 4939
    const-string v13, "conversation_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4940
    const-string v13, "participant_id"

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4942
    const-string v13, "active"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4943
    const-string v13, "sequence"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4944
    const-string v13, "conversation_participants"

    const/4 v14, 0x0

    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v12, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_8c

    .line 4914
    .end local v11           #updateCount:I
    :cond_188
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c8

    .line 4948
    .end local v8           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_191
    if-eqz v6, :cond_258

    .line 4949
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_197
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_258

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 4950
    .restart local v8       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 4951
    const-string v13, "participant_id"

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4952
    const-string v13, "full_name"

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4953
    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1d3

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1d3

    .line 4954
    const-string v13, "first_name"

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4956
    :cond_1d3
    const-string v13, "type"

    invoke-static {v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4957
    const-string v13, "participants"

    const-string v14, "participant_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 4960
    .restart local v11       #updateCount:I
    const-string v13, "EsConversationsData"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_224

    .line 4961
    const-string v13, "EsConversationsData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Update Participant "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4963
    :cond_224
    if-nez v11, :cond_22e

    .line 4964
    const-string v13, "participants"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4967
    :cond_22e
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 4968
    const-string v13, "conversation_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4969
    const-string v13, "participant_id"

    invoke-virtual {v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4971
    const-string v13, "active"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4972
    const-string v13, "conversation_participants"

    const/4 v14, 0x0

    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v12, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_197

    .line 4977
    .end local v8           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v11           #updateCount:I
    :cond_258
    const-string v13, "EsConversationsData"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_27d

    .line 4978
    const-string v13, "EsConversationsData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generatedName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    :cond_27d
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 4981
    const-string v13, "generated_name"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4982
    const-string v13, "packed_participants"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4984
    const-string v13, "conversations"

    const-string v14, "_id=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4987
    return-void
.end method

.method private static updateConversation(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$ClientConversation;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 16
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "conversation"
    .parameter "operationState"

    .prologue
    .line 4746
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 4747
    const-string v1, "EsConversationsData"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConversation Conversation id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Muted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getMuted()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", UnreadCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getUnreadCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasName()Z

    move-result v0

    if-eqz v0, :cond_12d

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4753
    :cond_55
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 4754
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "is_muted"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getMuted()Z

    move-result v0

    if-eqz v0, :cond_131

    const/4 v0, 0x1

    :goto_63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4756
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasId()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 4757
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 4761
    .local v4, isGroup:Z
    :goto_7a
    const-string v0, "is_group"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4762
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasName()Z

    move-result v0

    if-eqz v0, :cond_144

    .line 4763
    const-string v0, "name"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    :goto_92
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getUnreadCount()J

    move-result-wide v6

    .line 4768
    .local v6, unreadCount:J
    invoke-virtual {p6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-virtual {p6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getCurrentConversationRowId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-nez v0, :cond_aa

    .line 4770
    const-wide/16 v6, 0x0

    .line 4772
    :cond_aa
    const-string v0, "unread_count"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4773
    const-string v0, "conversation_id"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4774
    const-string v1, "is_visible"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasHidden()Z

    move-result v0

    if-eqz v0, :cond_14b

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getHidden()Z

    move-result v0

    if-eqz v0, :cond_14b

    const/4 v0, 0x0

    :goto_cb
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4776
    const-string v0, "is_awaiting_event_stream"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4777
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->hasFirstEventTimestamp()Z

    move-result v0

    if-eqz v0, :cond_114

    .line 4778
    const-string v0, "EsConversationsData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 4779
    const-string v0, "EsConversationsData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting first event timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getFirstEventTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4782
    :cond_107
    const-string v0, "first_event_timestamp"

    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getFirstEventTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4786
    :cond_114
    const-string v0, "conversations"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v0, v8, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v5, p5

    .line 4790
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->syncParticipants(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/wireless/realtimechat/proto/Client$ClientConversation;)V

    .line 4791
    return-void

    .line 4747
    .end local v4           #isGroup:Z
    .end local v6           #unreadCount:J
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_12d
    const-string v0, ""

    goto/16 :goto_4a

    .line 4754
    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_131
    const/4 v0, 0x0

    goto/16 :goto_63

    .line 4759
    :cond_134
    invoke-virtual {p5}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->getParticipantList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_142

    const/4 v4, 0x1

    .restart local v4       #isGroup:Z
    :goto_140
    goto/16 :goto_7a

    .end local v4           #isGroup:Z
    :cond_142
    const/4 v4, 0x0

    goto :goto_140

    .line 4765
    .restart local v4       #isGroup:Z
    :cond_144
    const-string v0, "name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_92

    .line 4774
    .restart local v6       #unreadCount:J
    :cond_14b
    const/4 v0, 0x1

    goto/16 :goto_cb
.end method

.method private static updateConversationErrorType(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;I)V
    .registers 11
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "clientId"
    .parameter "fatalErrorType"

    .prologue
    .line 4567
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 4568
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConversationErrorType Conversation client Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", FatalErrorType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    :cond_2b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4573
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "fatal_error_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4575
    const-string v1, "conversations"

    const-string v2, "conversation_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4578
    return-void
.end method

.method private static final updateConversationId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .parameter "db"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 4802
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 4803
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "conversations"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const-string v4, "conversation_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4808
    .local v14, toCursor:Landroid/database/Cursor;
    :try_start_20
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 4809
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 4810
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already have a conversation Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    :cond_49
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 4813
    .local v12, oldConversationRowId:J
    const-string v2, "conversations"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const-string v4, "conversation_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_68
    .catchall {:try_start_20 .. :try_end_68} :catchall_e7

    move-result-object v9

    .line 4818
    .local v9, fromCursor:Landroid/database/Cursor;
    :try_start_69
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 4819
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4822
    .local v10, newConversationRowId:J
    const-string v1, "conversation_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4823
    const-string v1, "messages"

    const-string v2, "conversation_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4827
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 4828
    const-string v1, "conversation_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4830
    const-string v1, "conversation_participants"

    const-string v2, "conversation_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4835
    const-string v1, "conversations"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_69 .. :try_end_c2} :catchall_e2

    .line 4840
    .end local v10           #newConversationRowId:J
    :cond_c2
    :try_start_c2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_e7

    .line 4844
    .end local v9           #fromCursor:Landroid/database/Cursor;
    .end local v12           #oldConversationRowId:J
    :cond_c5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4846
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 4847
    const-string v1, "conversation_id"

    move-object/from16 v0, p2

    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4848
    const-string v1, "conversations"

    const-string v2, "conversation_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4851
    return-void

    .line 4840
    .restart local v9       #fromCursor:Landroid/database/Cursor;
    .restart local v12       #oldConversationRowId:J
    :catchall_e2
    move-exception v1

    :try_start_e3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_e7
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_e7

    .line 4844
    .end local v9           #fromCursor:Landroid/database/Cursor;
    .end local v12           #oldConversationRowId:J
    :catchall_e7
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static updateConversationMutedLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "muted"
    .parameter "operationState"

    .prologue
    .line 3009
    const-string v3, "EsConversationsData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3010
    const-string v3, "EsConversationsData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConversationMutedLocally conversationRowId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " muted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_2b
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3017
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3019
    :try_start_36
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3020
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "is_muted"

    if-eqz p4, :cond_79

    const/4 v3, 0x1

    :goto_40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3021
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

    .line 3025
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 3026
    .local v0, conversationId:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->setConversationMuted(Ljava/lang/String;Z)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v3

    invoke-virtual {p5, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 3028
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_72
    .catchall {:try_start_36 .. :try_end_72} :catchall_7b

    .line 3030
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3032
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 3033
    return-void

    .line 3020
    .end local v0           #conversationId:Ljava/lang/String;
    :cond_79
    const/4 v3, 0x0

    goto :goto_40

    .line 3030
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_7b
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public static updateConversationName(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)V
    .registers 12
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "name"

    .prologue
    .line 4072
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4073
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConversationName Conversation Row id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    :cond_21
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4077
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4079
    const-string v1, "conversations"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4083
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 4084
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
    .line 2979
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2980
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

    .line 2983
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2985
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2987
    :try_start_2c
    invoke-static {v1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationId(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 2988
    .local v0, conversationId:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->setConversationName(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V

    .line 2990
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_41

    .line 2992
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2994
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyConversationsChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2995
    return-void

    .line 2992
    .end local v0           #conversationId:Ljava/lang/String;
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private static updateLatestEventTimestamp(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .registers 25
    .parameter "db"
    .parameter "conversationRowId"
    .parameter "timestamp"

    .prologue
    .line 4998
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4999
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

    .line 5003
    :cond_2f
    const-wide/16 v17, 0x0

    .line 5004
    .local v17, oldTimestamp:J
    const-wide/16 v15, 0x0

    .line 5005
    .local v15, oldLatestMessage:J
    const/4 v13, 0x0

    .line 5006
    .local v13, isAwaitingEventStream:Z
    const/4 v12, 0x0

    .line 5007
    .local v12, isAwaitingConversationList:Z
    const/4 v14, 0x0

    .line 5009
    .local v14, metadataCursor:Landroid/database/Cursor;
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

    move-result-object v14

    .line 5014
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 5015
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5e
    .catchall {:try_start_36 .. :try_end_5e} :catchall_ff

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_63

    .line 5016
    const/4 v12, 0x1

    .line 5020
    :cond_63
    if-eqz v14, :cond_68

    .line 5021
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 5025
    :cond_68
    const/4 v11, 0x0

    .line 5027
    .local v11, conversationCursor:Landroid/database/Cursor;
    :try_start_69
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

    move-result-object v11

    .line 5034
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 5035
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_106

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_106

    const/4 v13, 0x1

    .line 5037
    :goto_a7
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 5038
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_b0
    .catchall {:try_start_69 .. :try_end_b0} :catchall_108

    move-result-wide v15

    .line 5041
    :cond_b1
    if-eqz v11, :cond_b6

    .line 5042
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5046
    :cond_b6
    cmp-long v2, p3, v17

    if-lez v2, :cond_fe

    .line 5047
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 5048
    .local v19, values:Landroid/content/ContentValues;
    if-nez v13, :cond_ce

    if-nez v12, :cond_ce

    .line 5049
    const-string v2, "latest_event_timestamp"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5051
    :cond_ce
    const-wide/16 v2, 0x0

    cmp-long v2, v17, v2

    if-lez v2, :cond_e3

    cmp-long v2, v15, p3

    if-lez v2, :cond_e3

    .line 5058
    const-string v2, "latest_message_timestamp"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5060
    :cond_e3
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_fe

    .line 5061
    const-string v2, "conversations"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5066
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_fe
    return-void

    .line 5020
    .end local v11           #conversationCursor:Landroid/database/Cursor;
    :catchall_ff
    move-exception v2

    if-eqz v14, :cond_105

    .line 5021
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_105
    throw v2

    .line 5035
    .restart local v11       #conversationCursor:Landroid/database/Cursor;
    :cond_106
    const/4 v13, 0x0

    goto :goto_a7

    .line 5041
    :catchall_108
    move-exception v2

    if-eqz v11, :cond_10e

    .line 5042
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_10e
    throw v2
.end method

.method private static updateMessageStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V
    .registers 12
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"
    .parameter "status"

    .prologue
    .line 4549
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4550
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4551
    const-string v1, "messages"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4554
    return-void
.end method

.method public static final updateMessageTimestamp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .parameter "db"
    .parameter "messageClientId"
    .parameter "conversationId"
    .parameter "timestamp"

    .prologue
    .line 4126
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4127
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4128
    invoke-static {p0, p2}, Lcom/google/android/apps/plus/content/EsConversationsData;->queryConversationRowId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 4129
    .local v0, conversationRowId:Ljava/lang/Long;
    if-nez v0, :cond_46

    .line 4130
    const-string v2, "EsConversationsData"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4131
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt to update a message timestamp ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] for nonexistant conversation id ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    :cond_45
    :goto_45
    return-void

    .line 4137
    :cond_46
    const-string v2, "messages"

    const-string v3, "message_id=? AND conversation_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_45
.end method

.method public static updateMessageUriAndSendLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJZLjava/lang/String;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)V
    .registers 19
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "messageRowId"
    .parameter "connected"
    .parameter "newUri"
    .parameter "operationState"

    .prologue
    .line 2758
    const-string v2, "EsConversationsData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2759
    const-string v2, "EsConversationsData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMessageUriAndSendLocally messageRowId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    :cond_21
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2763
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2765
    :try_start_2c
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2766
    .local v9, values:Landroid/content/ContentValues;
    const-string v2, "image_url"

    move-object/from16 v0, p7

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
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

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2771
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p4

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/content/EsConversationsData;->sendMessageInDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;

    .line 2774
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_62
    .catchall {:try_start_2c .. :try_end_62} :catchall_69

    .line 2776
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2778
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/content/EsConversationsData;->notifyMessagesChanged(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 2779
    return-void

    .line 2776
    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_69
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private static updatePreviewSystemMessage(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;IJ)V
    .registers 16
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "text"
    .parameter "senderId"
    .parameter "messageType"
    .parameter "timestamp"

    .prologue
    const/4 v4, 0x1

    .line 4518
    const-string v1, "EsConversationsData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 4519
    const-string v1, "EsConversationsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreviewSystemMessage  messageType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " senderId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8, p9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4524
    :cond_36
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4525
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4526
    const-string v1, "latest_message_timestamp"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4527
    const-string v1, "latest_message_author_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4528
    const-string v1, "latest_message_text"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4529
    const-string v2, "latest_message_image_url"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4530
    const-string v1, "latest_message_type"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4531
    const-string v1, "conversations"

    const-string v2, "_id=?"

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4534
    return-void
.end method
