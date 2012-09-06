.class public Lcom/google/android/apps/plus/service/ContactsStatsSync;
.super Ljava/lang/Object;
.source "ContactsStatsSync.java"


# static fields
.field private static final PROJECTION_FOR_ICS_AND_LATER:[Ljava/lang/String;

.field private static final PROJECTION_FOR_PRE_ICS:[Ljava/lang/String;


# instance fields
.field private isFirstStatsSync:Z

.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MobileContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

.field private maxLastContacted:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "times_contacted"

    aput-object v1, v0, v2

    const-string v1, "last_time_contacted"

    aput-object v1, v0, v3

    const-string v1, "sourceid"

    aput-object v1, v0, v4

    const-string v1, "data_set"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->PROJECTION_FOR_ICS_AND_LATER:[Ljava/lang/String;

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "times_contacted"

    aput-object v1, v0, v2

    const-string v1, "last_time_contacted"

    aput-object v1, v0, v3

    const-string v1, "sourceid"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->PROJECTION_FOR_PRE_ICS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->maxLastContacted:J

    .line 113
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContacts:Ljava/util/List;

    .line 116
    iput-object p3, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 117
    return-void
.end method

.method private collect()V
    .registers 21

    .prologue
    .line 120
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "account_name"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "account_type"

    const-string v6, "com.google"

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 127
    .local v2, rawContactUri:Landroid/net/Uri;
    const-string v4, "times_contacted > 0"

    .line 130
    .local v4, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->queryLastContactedTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v15

    .line 133
    .local v15, previousLastContacted:J
    const-wide/16 v5, 0x0

    cmp-long v1, v15, v5

    if-gtz v1, :cond_e3

    const/4 v1, 0x1

    :goto_35
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->isFirstStatsSync:Z

    .line 136
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v1, v5, :cond_e6

    sget-object v3, Lcom/google/android/apps/plus/service/ContactsStatsSync;->PROJECTION_FOR_PRE_ICS:[Ljava/lang/String;

    .line 139
    .local v3, projection:[Ljava/lang/String;
    :goto_41
    :try_start_41
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const-string v6, "last_time_contacted"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_4f} :catch_ea

    move-result-object v8

    .line 146
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 151
    .local v13, now:J
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->isFirstStatsSync:Z

    if-eqz v1, :cond_104

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v18, 0x2

    div-long v5, v5, v18

    sub-long v10, v13, v5

    .line 154
    .local v10, implicitLastTimeContacted:J
    :goto_64
    :try_start_64
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 155
    new-instance v7, Lcom/google/api/services/plusi/model/MobileContact;

    invoke-direct {v7}, Lcom/google/api/services/plusi/model/MobileContact;-><init>()V

    .line 156
    .local v7, contact:Lcom/google/api/services/plusi/model/MobileContact;
    new-instance v1, Lcom/google/api/services/plusi/model/DataCircleMemberId;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/DataCircleMemberId;-><init>()V

    iput-object v1, v7, Lcom/google/api/services/plusi/model/MobileContact;->id:Lcom/google/api/services/plusi/model/DataCircleMemberId;

    .line 157
    new-instance v1, Lcom/google/api/services/plusi/model/MobileContactAffinity;

    invoke-direct {v1}, Lcom/google/api/services/plusi/model/MobileContactAffinity;-><init>()V

    iput-object v1, v7, Lcom/google/api/services/plusi/model/MobileContact;->affinity:Lcom/google/api/services/plusi/model/MobileContactAffinity;

    .line 160
    iget-object v1, v7, Lcom/google/api/services/plusi/model/MobileContact;->affinity:Lcom/google/api/services/plusi/model/MobileContactAffinity;

    const/4 v5, 0x0

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lcom/google/api/services/plusi/model/MobileContactAffinity;->outgoingPhoneCallCount:Ljava/lang/Integer;

    .line 164
    iget-object v1, v7, Lcom/google/api/services/plusi/model/MobileContact;->affinity:Lcom/google/api/services/plusi/model/MobileContactAffinity;

    const/4 v5, 0x1

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Lcom/google/api/services/plusi/model/MobileContactAffinity;->lastOutgoingPhoneCallPosixTimestamp:Ljava/lang/Long;

    .line 167
    iget-object v1, v7, Lcom/google/api/services/plusi/model/MobileContact;->affinity:Lcom/google/api/services/plusi/model/MobileContactAffinity;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/MobileContactAffinity;->lastOutgoingPhoneCallPosixTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v18, 0x0

    cmp-long v1, v5, v18

    if-gtz v1, :cond_107

    .line 168
    iget-object v1, v7, Lcom/google/api/services/plusi/model/MobileContact;->affinity:Lcom/google/api/services/plusi/model/MobileContactAffinity;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Lcom/google/api/services/plusi/model/MobileContactAffinity;->lastOutgoingPhoneCallPosixTimestamp:Ljava/lang/Long;

    .line 176
    :cond_ad
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 180
    .local v17, sourceId:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v5, 0x3

    if-le v1, v5, :cond_115

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_115

    const-string v1, "plus"

    const/4 v5, 0x3

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    const/4 v12, 0x1

    .line 183
    .local v12, isDataSetSupported:Z
    :goto_ce
    if-eqz v12, :cond_117

    .line 184
    iget-object v1, v7, Lcom/google/api/services/plusi/model/MobileContact;->id:Lcom/google/api/services/plusi/model/DataCircleMemberId;

    move-object/from16 v0, v17

    iput-object v0, v1, Lcom/google/api/services/plusi/model/DataCircleMemberId;->obfuscatedGaiaId:Ljava/lang/String;

    .line 189
    :goto_d6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContacts:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_dd
    .catchall {:try_start_64 .. :try_end_dd} :catchall_de

    goto :goto_64

    .line 192
    .end local v7           #contact:Lcom/google/api/services/plusi/model/MobileContact;
    .end local v12           #isDataSetSupported:Z
    .end local v17           #sourceId:Ljava/lang/String;
    :catchall_de
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 133
    .end local v3           #projection:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #implicitLastTimeContacted:J
    .end local v13           #now:J
    :cond_e3
    const/4 v1, 0x0

    goto/16 :goto_35

    .line 136
    :cond_e6
    sget-object v3, Lcom/google/android/apps/plus/service/ContactsStatsSync;->PROJECTION_FOR_ICS_AND_LATER:[Ljava/lang/String;

    goto/16 :goto_41

    .line 141
    .restart local v3       #projection:[Ljava/lang/String;
    :catch_ea
    move-exception v9

    .line 142
    .local v9, exception:Ljava/lang/RuntimeException;
    const-string v1, "ContactsStatsSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query on RawContacts failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v9           #exception:Ljava/lang/RuntimeException;
    :goto_103
    return-void

    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v13       #now:J
    :cond_104
    move-wide v10, v13

    .line 151
    goto/16 :goto_64

    .line 170
    .restart local v7       #contact:Lcom/google/api/services/plusi/model/MobileContact;
    .restart local v10       #implicitLastTimeContacted:J
    :cond_107
    :try_start_107
    iget-object v1, v7, Lcom/google/api/services/plusi/model/MobileContact;->affinity:Lcom/google/api/services/plusi/model/MobileContactAffinity;

    iget-object v1, v1, Lcom/google/api/services/plusi/model/MobileContactAffinity;->lastOutgoingPhoneCallPosixTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v15

    if-gtz v1, :cond_ad

    goto/16 :goto_64

    .line 180
    .restart local v17       #sourceId:Ljava/lang/String;
    :cond_115
    const/4 v12, 0x0

    goto :goto_ce

    .line 186
    .restart local v12       #isDataSetSupported:Z
    :cond_117
    iget-object v1, v7, Lcom/google/api/services/plusi/model/MobileContact;->id:Lcom/google/api/services/plusi/model/DataCircleMemberId;

    move-object/from16 v0, v17

    iput-object v0, v1, Lcom/google/api/services/plusi/model/DataCircleMemberId;->contactId:Ljava/lang/String;
    :try_end_11d
    .catchall {:try_start_107 .. :try_end_11d} :catchall_de

    goto :goto_d6

    .line 192
    .end local v7           #contact:Lcom/google/api/services/plusi/model/MobileContact;
    .end local v12           #isDataSetSupported:Z
    .end local v17           #sourceId:Ljava/lang/String;
    :cond_11e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_103
.end method

.method private getContactsForUpload()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MobileContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->maxLastContacted:J

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, contactsForUpload:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/MobileContact;>;"
    :cond_9
    :goto_9
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_3e

    .line 201
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContacts:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plusi/model/MobileContact;

    .line 202
    .local v0, contact:Lcom/google/api/services/plusi/model/MobileContact;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-wide v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->maxLastContacted:J

    iget-object v4, v0, Lcom/google/api/services/plusi/model/MobileContact;->affinity:Lcom/google/api/services/plusi/model/MobileContactAffinity;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/MobileContactAffinity;->lastOutgoingPhoneCallPosixTimestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_9

    .line 206
    iget-object v2, v0, Lcom/google/api/services/plusi/model/MobileContact;->affinity:Lcom/google/api/services/plusi/model/MobileContactAffinity;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/MobileContactAffinity;->lastOutgoingPhoneCallPosixTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->maxLastContacted:J

    goto :goto_9

    .line 209
    .end local v0           #contact:Lcom/google/api/services/plusi/model/MobileContact;
    :cond_3e
    return-object v1
.end method

.method private onUploadPartialSuccess()V
    .registers 7

    .prologue
    .line 239
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveLastStatsSyncTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 242
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->queryLastContactedTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)J

    move-result-wide v0

    .line 247
    .local v0, previousLastContacted:J
    iget-wide v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->maxLastContacted:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2a

    iget-boolean v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->isFirstStatsSync:Z

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 249
    :cond_21
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v4, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->maxLastContacted:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveLastContactedTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 253
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ContactsStatsSync;->upload()V

    .line 254
    return-void
.end method

.method public static sync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    const/4 v3, 0x3

    .line 75
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 89
    :cond_7
    :goto_7
    return-void

    .line 78
    :cond_8
    const-string v1, "ContactsStatsSync"

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 79
    const-string v1, "ContactsStatsSync"

    const-string v2, "Contacts stats sync operation started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_17
    new-instance v0, Lcom/google/android/apps/plus/service/ContactsStatsSync;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/plus/service/ContactsStatsSync;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 83
    .local v0, sync:Lcom/google/android/apps/plus/service/ContactsStatsSync;
    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ContactsStatsSync;->collect()V

    .line 84
    invoke-direct {v0}, Lcom/google/android/apps/plus/service/ContactsStatsSync;->upload()V

    .line 86
    const-string v1, "ContactsStatsSync"

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    const-string v1, "ContactsStatsSync"

    const-string v2, "Contacts stats sync operation complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private upload()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 214
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ContactsStatsSync;->getContactsForUpload()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/service/ContactsStatsSync;->uploadPartial(Ljava/util/List;)V

    .line 216
    :cond_f
    return-void
.end method

.method private uploadPartial(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/plusi/model/MobileContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/services/plusi/model/MobileContact;>;"
    const/4 v6, 0x0

    .line 219
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    const-string v2, "ContactsStatsSync:PartialUpload"

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/apps/plus/util/AndroidUtils;->getAndroidId(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FULL"

    move-object v4, p1

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 228
    .local v0, op:Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    new-instance v2, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 229
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ContactsStatsSync;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish()V

    .line 230
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->hasError()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 231
    const-string v1, "ContactsStatsSync"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->logError(Ljava/lang/String;)V

    .line 235
    :goto_39
    return-void

    .line 233
    :cond_3a
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ContactsStatsSync;->onUploadPartialSuccess()V

    goto :goto_39
.end method

.method public static wipeout(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "opListener"

    .prologue
    const/4 v8, 0x3

    .line 93
    const-string v1, "ContactsStatsSync"

    invoke-static {v1, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 94
    const-string v1, "ContactsStatsSync"

    const-string v2, "Contacts stats wipeout operation started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_10
    new-instance v0, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;

    invoke-static {p0}, Lcom/google/android/apps/plus/util/AndroidUtils;->getAndroidId(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "WIPEOUT"

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 105
    .local v0, op:Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/SyncMobileContactsOperation;->startThreaded()V

    .line 107
    const-string v1, "ContactsStatsSync"

    invoke-static {v1, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 108
    const-string v1, "ContactsStatsSync"

    const-string v2, "Contacts stats wipeout operation complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_36
    return-void
.end method
