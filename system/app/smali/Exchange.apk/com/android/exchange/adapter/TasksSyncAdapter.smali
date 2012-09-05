.class public Lcom/android/exchange/adapter/TasksSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "TasksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/TasksSyncAdapter$1;,
        Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;,
        Lcom/android/exchange/adapter/TasksSyncAdapter$RowBuilder;,
        Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;,
        Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;
    }
.end annotation


# static fields
.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

.field private static final TASKS_SYNC_STATE_URI:Landroid/net/Uri;

.field static count:I


# instance fields
.field private final SIMPlannerTaskAuthrity:Ljava/lang/String;

.field private final Task_AccountName:Ljava/lang/String;

.field private final Task_AccountType:Ljava/lang/String;

.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailAddress:Ljava/lang/String;

.field mInsertedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTasksAccountId:J

.field private mTasksAccountIdArgument:[Ljava/lang/String;

.field private mTasksAccountIdString:Ljava/lang/String;

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/TasksSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 112
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/TasksSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    .line 116
    sput v2, Lcom/android/exchange/adapter/TasksSyncAdapter;->count:I

    .line 871
    const-string v0, "content://syncstate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "state"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/TasksSyncAdapter;->TASKS_SYNC_STATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .registers 13
    .parameter "mailbox"
    .parameter "service"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x7f07

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mInsertedIdList:Ljava/util/ArrayList;

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J

    .line 127
    const-string v0, "com.android.calendar"

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->SIMPlannerTaskAuthrity:Ljava/lang/String;

    .line 128
    const-string v0, "account_name"

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->Task_AccountName:Ljava/lang/String;

    .line 129
    const-string v0, "account_type"

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->Task_AccountType:Ljava/lang/String;

    .line 182
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Task SyncAdapter for MailBox Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mEmailAddress:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v8, :cond_76

    .line 190
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Tasks$TasksAccounts;->Q1_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_sync_account_key"

    aput-object v3, v2, v9

    const-string v3, "_sync_account=?"

    new-array v4, v8, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mEmailAddress:Ljava/lang/String;

    aput-object v7, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    .local v6, c:Landroid/database/Cursor;
    :goto_73
    if-nez v6, :cond_8f

    .line 231
    :goto_75
    return-void

    .line 199
    .end local v6           #c:Landroid/database/Cursor;
    :cond_76
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Tasks$TasksAccounts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_sync_account_key"

    aput-object v3, v2, v9

    const-string v3, "_sync_account=?"

    new-array v4, v8, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mEmailAddress:Ljava/lang/String;

    aput-object v7, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_73

    .line 209
    :cond_8f
    :try_start_8f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 210
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J

    .line 222
    :goto_9c
    iget-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountIdString:Ljava/lang/String;

    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountIdString:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountIdArgument:[Ljava/lang/String;
    :try_end_ae
    .catchall {:try_start_8f .. :try_end_ae} :catchall_d4

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 230
    const-string v0, "ExchTasksSyncAdapter"

    const-string v1, "Created "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 212
    :cond_b9
    :try_start_b9
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v8, :cond_d9

    .line 213
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->createTasksAccount_Q1(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J
    :try_end_d3
    .catchall {:try_start_b9 .. :try_end_d3} :catchall_d4

    goto :goto_9c

    .line 227
    :catchall_d4
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 218
    :cond_d9
    :try_start_d9
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->createTasksAccount(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J
    :try_end_e5
    .catchall {:try_start_d9 .. :try_end_e5} :catchall_d4

    goto :goto_9c
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 12
    .parameter "service"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x7f07

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mInsertedIdList:Ljava/util/ArrayList;

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J

    .line 127
    const-string v0, "com.android.calendar"

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->SIMPlannerTaskAuthrity:Ljava/lang/String;

    .line 128
    const-string v0, "account_name"

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->Task_AccountName:Ljava/lang/String;

    .line 129
    const-string v0, "account_type"

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->Task_AccountType:Ljava/lang/String;

    .line 136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Task SyncAdapter for MailBox Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mEmailAddress:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v8, :cond_76

    .line 142
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Tasks$TasksAccounts;->Q1_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_sync_account_key"

    aput-object v3, v2, v9

    const-string v3, "_sync_account=?"

    new-array v4, v8, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mEmailAddress:Ljava/lang/String;

    aput-object v7, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    .local v6, c:Landroid/database/Cursor;
    :goto_73
    if-nez v6, :cond_8f

    .line 177
    :goto_75
    return-void

    .line 149
    .end local v6           #c:Landroid/database/Cursor;
    :cond_76
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Tasks$TasksAccounts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_sync_account_key"

    aput-object v3, v2, v9

    const-string v3, "_sync_account=?"

    new-array v4, v8, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mEmailAddress:Ljava/lang/String;

    aput-object v7, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_73

    .line 158
    :cond_8f
    :try_start_8f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 159
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J

    .line 168
    :goto_9c
    iget-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountIdString:Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountIdString:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountIdArgument:[Ljava/lang/String;
    :try_end_ae
    .catchall {:try_start_8f .. :try_end_ae} :catchall_d4

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    const-string v0, "ExchTasksSyncAdapter"

    const-string v1, "Created "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 161
    :cond_b9
    :try_start_b9
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v8, :cond_d9

    .line 162
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->createTasksAccount_Q1(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J
    :try_end_d3
    .catchall {:try_start_b9 .. :try_end_d3} :catchall_d4

    goto :goto_9c

    .line 173
    :catchall_d4
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 165
    :cond_d9
    :try_start_d9
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->createTasksAccount(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mTasksAccountId:J
    :try_end_e5
    .catchall {:try_start_d9 .. :try_end_e5} :catchall_d4

    goto :goto_9c
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/exchange/adapter/TasksSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/ContentProviderOperation;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/exchange/adapter/TasksSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    return-object v0
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createTasksAccount(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)J
    .registers 10
    .parameter "service"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    const/4 v6, 0x1

    .line 237
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "displayName"

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v3, "_sync_account"

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "_sync_account_key"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 242
    const-string v3, "_sync_account_type"

    const-string v4, "com.android.exchange"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v3, "selected"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Tasks$TasksAccounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 250
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_4a

    .line 251
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    .local v1, stringId:Ljava/lang/String;
    iput-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 253
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 255
    .end local v1           #stringId:Ljava/lang/String;
    :goto_49
    return-wide v3

    :cond_4a
    const-wide/16 v3, -0x1

    goto :goto_49
.end method

.method public static createTasksAccount_Q1(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)J
    .registers 10
    .parameter "service"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    const/4 v6, 0x1

    .line 260
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "displayName"

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v3, "_sync_account"

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v3, "_sync_account_key"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    const-string v3, "_sync_account_type"

    const-string v4, "com.android.exchange"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v3, "selected"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/Tasks$TasksAccounts;->Q1_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 273
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_4a

    .line 274
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 275
    .local v1, stringId:Ljava/lang/String;
    iput-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 276
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 278
    .end local v1           #stringId:Ljava/lang/String;
    :goto_49
    return-wide v3

    :cond_4a
    const-wide/16 v3, -0x1

    goto :goto_49
.end method

.method private getClientId(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "c"
    .parameter "column_name"

    .prologue
    .line 501
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 502
    .local v0, column_idx:I
    const/4 v1, 0x0

    .line 504
    .local v1, tasks_client_id:Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 505
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 506
    :cond_f
    return-object v1
.end method

.method private sendData(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V
    .registers 7
    .parameter "s"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const-string v0, "The sending task data  "

    const-string v1, " tasks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_18

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_base_body(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V

    .line 436
    :cond_18
    const-string v0, "The sending task categories  "

    const-string v1, " tasks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_categories(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V

    .line 439
    const-string v0, "subject"

    const/16 v1, 0x260

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 440
    const-string v0, "importance"

    const/16 v1, 0x24e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 441
    const-string v0, "utc_due_date"

    const/16 v1, 0x24d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 442
    const-string v0, "utc_start_date"

    const/16 v1, 0x25f

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 443
    const-string v0, "start_date"

    const/16 v1, 0x25e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 444
    const-string v0, "complete"

    const/16 v1, 0x24a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 445
    const-string v0, "date_completed"

    const/16 v1, 0x24b

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 446
    const-string v0, "sensitivity"

    const/16 v1, 0x25d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 447
    const-string v0, "reminder_set"

    const/16 v1, 0x25b

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 450
    const-string v0, "reminder_time"

    const/16 v1, 0x25c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 451
    const-string v0, "due_date"

    const/16 v1, 0x24c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_recurrence(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V

    .line 454
    return-void
.end method

.method private send_tasks_base_body(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V
    .registers 8
    .parameter "s"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    const-string v1, "body_size"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, column_idx:I
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3a

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3a

    .line 365
    const/16 v1, 0x44a

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 366
    const-string v1, "bodyType"

    const/16 v2, 0x446

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 367
    const-string v1, "body_size"

    const/16 v2, 0x44c

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 368
    const-string v1, "body_truncated"

    const/16 v2, 0x44d

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 373
    const-string v1, "body"

    const/16 v2, 0x44b

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 374
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 376
    :cond_3a
    return-void
.end method

.method private send_tasks_categories(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V
    .registers 5
    .parameter "s"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x249

    .line 379
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->tasks_has_category(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 380
    const/16 v0, 0x248

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 381
    const-string v0, "category1"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 382
    const-string v0, "category2"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 383
    const-string v0, "category3"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 384
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 386
    :cond_1f
    return-void
.end method

.method private send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V
    .registers 8
    .parameter "s"
    .parameter "c"
    .parameter "column_name"
    .parameter "tag_name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, column_idx:I
    const/4 v1, 0x0

    .line 353
    .local v1, tasks_item_value:Ljava/lang/String;
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 354
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {p1, p4, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 357
    :cond_12
    return-void
.end method

.method private send_tasks_recurrence(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V
    .registers 5
    .parameter "s"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    const-string v0, "recurrence_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 410
    :goto_c
    return-void

    .line 392
    :cond_d
    const/16 v0, 0x24f

    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 394
    const-string v0, "recurrence_regenerate"

    const/16 v1, 0x259

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 395
    const-string v0, "recurrence_dead_occur"

    const/16 v1, 0x25a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 396
    const-string v0, "recurrence_type"

    const/16 v1, 0x250

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 397
    const-string v0, "recurrence_start"

    const/16 v1, 0x251

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 398
    const-string v0, "recurrence_until"

    const/16 v1, 0x252

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 402
    const-string v0, "recurrence_interval"

    const/16 v1, 0x254

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 403
    const-string v0, "recurrence_day_of_month"

    const/16 v1, 0x255

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 404
    const-string v0, "recurrence_day_of_week"

    const/16 v1, 0x256

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 405
    const-string v0, "recurrence_week_of_month"

    const/16 v1, 0x257

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 406
    const-string v0, "recurrence_month_of_year"

    const/16 v1, 0x258

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 407
    const-string v0, "recurrence_occurrences"

    const/16 v1, 0x253

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->send_tasks_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V

    .line 409
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_c
.end method

.method private send_tasks_time_item(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;Ljava/lang/String;I)V
    .registers 9
    .parameter "s"
    .parameter "c"
    .parameter "column_name"
    .parameter "tag_name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 415
    .local v0, column_idx:I
    const-wide/16 v1, 0x0

    .line 417
    .local v1, time_value:J
    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 418
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 419
    invoke-direct {p0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->setTimeInMillis(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p4, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 421
    :cond_17
    return-void
.end method

.method private setTimeInMillis(J)Ljava/lang/String;
    .registers 6
    .parameter "millis"

    .prologue
    .line 293
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 295
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 296
    .local v0, calendar:Ljava/util/Calendar;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 297
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 299
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private syncDeletedTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V
    .registers 13
    .parameter "s"
    .parameter "retVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 637
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 638
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 640
    .local v6, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f07

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v9, :cond_38

    .line 641
    sget-object v1, Lcom/android/emailcommon/provider/Tasks;->Q1_DELETED_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 650
    :goto_35
    if-nez v6, :cond_58

    .line 675
    :cond_37
    :goto_37
    return-void

    .line 645
    :cond_38
    sget-object v1, Lcom/android/emailcommon/provider/Tasks;->DELETED_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_35

    .line 652
    :cond_58
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 655
    :cond_5e
    invoke-virtual {p2}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->getVal()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 656
    const/16 v1, 0x16

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 657
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "Sending Tasks changes to the server"

    aput-object v2, v1, v8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2, v8}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->setVal(Z)V

    .line 660
    :cond_75
    const-string v1, "sourceid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, sourceId:Ljava/lang/String;
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 665
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 667
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 672
    .end local v7           #sourceId:Ljava/lang/String;
    :cond_a6
    if-eqz v6, :cond_37

    .line 673
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_37
.end method

.method private syncNewTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V
    .registers 14
    .parameter "s"
    .parameter "retVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 512
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v3, v10, :cond_41

    .line 513
    sget-object v3, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->Q1_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 518
    .local v1, taskSyncUri:Landroid/net/Uri;
    :goto_17
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v3, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 519
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 525
    .local v6, c:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_sync_dirty= 1 AND accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 529
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 531
    .local v7, cidValues:Landroid/content/ContentValues;
    if-nez v6, :cond_48

    .line 554
    :cond_40
    :goto_40
    return-void

    .line 516
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #taskSyncUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #cidValues:Landroid/content/ContentValues;
    :cond_41
    sget-object v3, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #taskSyncUri:Landroid/net/Uri;
    goto :goto_17

    .line 533
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #cidValues:Landroid/content/ContentValues;
    :cond_48
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 535
    :cond_4e
    invoke-virtual {p2}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->getVal()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 536
    const/16 v2, 0x16

    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 537
    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "Sending Tasks changes to the server"

    aput-object v3, v2, v9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2, v9}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->setVal(Z)V

    .line 540
    :cond_65
    const-string v2, "clientId"

    invoke-direct {p0, v6, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter;->getClientId(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, clientId:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 542
    const/16 v2, 0x1d

    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 544
    invoke-direct {p0, p1, v6}, Lcom/android/exchange/adapter/TasksSyncAdapter;->sendData(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V

    .line 545
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 546
    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mInsertedIdList:Ljava/util/ArrayList;

    const-string v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 551
    .end local v8           #clientId:Ljava/lang/String;
    :cond_9d
    if-eqz v6, :cond_40

    .line 552
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_40
.end method

.method private syncUpdatedTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V
    .registers 16
    .parameter "s"
    .parameter "retVal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v12, 0x7f07

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 557
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 558
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 559
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 560
    .local v9, updatedcursor:Landroid/database/Cursor;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncUpdatedTask: Mailbox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Account Key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v10, :cond_98

    .line 563
    sget-object v1, Lcom/android/emailcommon/provider/Tasks;->Q1_UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 571
    :goto_66
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncUpdatedTask: Count of updated cursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 575
    :try_start_87
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 576
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Exiting from SYncupdatedTask since no records updated"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_87 .. :try_end_94} :catchall_1ec

    .line 631
    :cond_94
    :goto_94
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 634
    return-void

    .line 568
    :cond_98
    sget-object v1, Lcom/android/emailcommon/provider/Tasks;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_66

    .line 581
    :cond_b8
    :try_start_b8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncUpdatedTask: Check if source id is null "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "sourceid"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1cb

    move v1, v10

    :goto_d2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    const-string v1, "sourceid"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c3

    .line 586
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 588
    .local v8, task_id:I
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v10, :cond_1ce

    .line 589
    sget-object v1, Lcom/android/emailcommon/provider/Tasks;->Q1_TASK_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 596
    :goto_11d
    if-eqz v6, :cond_94

    .line 598
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncUpdatedTask: Count of inside cursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 602
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Serilaizing the data in SyncUpdatedTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "subject"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->getVal()Z

    move-result v1

    if-eqz v1, :cond_187

    .line 606
    const/16 v1, 0x16

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 607
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Sending Tasks changes to the server"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 608
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->setVal(Z)V

    .line 610
    :cond_187
    const-string v1, "sourceid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 611
    .local v7, sourceId:Ljava/lang/String;
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 612
    const/16 v1, 0x1d

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 614
    invoke-direct {p0, p1, v6}, Lcom/android/exchange/adapter/TasksSyncAdapter;->sendData(Lcom/android/exchange/adapter/Serializer;Landroid/database/Cursor;)V

    .line 615
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 617
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    .end local v7           #sourceId:Ljava/lang/String;
    :cond_1be
    if-eqz v6, :cond_1c3

    .line 623
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 627
    .end local v8           #task_id:I
    :cond_1c3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_b8

    goto/16 :goto_94

    :cond_1cb
    move v1, v11

    .line 581
    goto/16 :goto_d2

    .line 592
    .restart local v8       #task_id:I
    :cond_1ce
    sget-object v1, Lcom/android/emailcommon/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e9
    .catchall {:try_start_b8 .. :try_end_1e9} :catchall_1ec

    move-result-object v6

    goto/16 :goto_11d

    .line 631
    .end local v8           #task_id:I
    :catchall_1ec
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private tasks_has_category(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 342
    const-string v0, "category1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "category2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "category3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter "uri"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 904
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 911
    :goto_31
    return-object v0

    :cond_32
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_sync_account_type"

    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_31
.end method


# virtual methods
.method public cleanup()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x7f07

    const/4 v6, 0x1

    .line 740
    new-instance v2, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/TasksSyncAdapter$1;)V

    .line 748
    .local v2, ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mInsertedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 752
    .local v1, id:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v3, v6, :cond_48

    .line 753
    sget-object v3, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->Q1_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_sync_dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_10

    .line 761
    :cond_48
    sget-object v3, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "_sync_dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_10

    .line 770
    .end local v1           #id:Ljava/lang/Long;
    :cond_68
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 773
    .restart local v1       #id:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v3, v6, :cond_a4

    .line 774
    sget-object v3, Lcom/android/emailcommon/provider/Tasks;->Q1_DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_6e

    .line 781
    :cond_a4
    sget-object v3, Lcom/android/emailcommon/provider/Tasks;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_6e

    .line 789
    .end local v1           #id:Ljava/lang/Long;
    :cond_c2
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 792
    .restart local v1       #id:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v3, v6, :cond_fe

    .line 793
    sget-object v3, Lcom/android/emailcommon/provider/Tasks;->Q1_UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_c8

    .line 800
    :cond_fe
    sget-object v3, Lcom/android/emailcommon/provider/Tasks;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_c8

    .line 810
    .end local v1           #id:Ljava/lang/Long;
    :cond_11c
    invoke-virtual {v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->execute()V

    .line 811
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mInsertedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 812
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 813
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 815
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    const-string v0, "Tasks"

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    const-string v0, "0"

    .line 881
    .local v0, syncKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 882
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 883
    :cond_c
    const-string v1, "ExchTasksSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSyncKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-object v0
.end method

.method public isSyncable()Z
    .registers 3

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "tasks"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 9
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 848
    const/4 v1, 0x0

    .line 850
    .local v1, p:Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;
    :try_start_1
    new-instance v2, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;

    invoke-direct {v2, p0, p1, p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/TasksSyncAdapter;)V
    :try_end_6
    .catch Lcom/android/exchange/adapter/Parser$EofException; {:try_start_1 .. :try_end_6} :catch_c

    .line 861
    .end local v1           #p:Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;
    .local v2, p:Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;
    invoke-virtual {v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->parse()Z

    move-result v3

    move-object v1, v2

    .end local v2           #p:Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;
    .restart local v1       #p:Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;
    :goto_b
    return v3

    .line 851
    :catch_c
    move-exception v0

    .line 853
    .local v0, e:Lcom/android/exchange/adapter/Parser$EofException;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x4028333333333333L

    cmpl-double v3, v3, v5

    if-nez v3, :cond_23

    .line 854
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->setIntervalPing()V

    .line 855
    const/4 v3, 0x0

    goto :goto_b

    .line 857
    :cond_23
    throw v0
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 6
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 693
    const/4 v2, 0x0

    .line 719
    :goto_d
    return v2

    .line 696
    :cond_e
    new-instance v1, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;)V

    .line 703
    .local v1, retVal:Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;
    :try_start_13
    invoke-direct {p0, p1, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->syncNewTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V

    .line 706
    invoke-direct {p0, p1, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->syncUpdatedTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V

    .line 709
    invoke-direct {p0, p1, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->syncDeletedTasks(Lcom/android/exchange/adapter/Serializer;Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;)V

    .line 711
    invoke-virtual {v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$ReturnVal;->getVal()Z

    move-result v2

    if-nez v2, :cond_25

    .line 712
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_25} :catch_27

    .line 719
    :cond_25
    :goto_25
    const/4 v2, 0x1

    goto :goto_d

    .line 716
    :catch_27
    move-exception v0

    .line 717
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 894
    const-string v0, "ExchTasksSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSyncKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return-void
.end method

.method public wipe()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 820
    const-string v4, "ExchTasksSyncAdapter"

    const-string v5, "Inside wipe..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, select:Ljava/lang/String;
    const-string v4, "ExchTasksSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Select value..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f07

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8f

    .line 824
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->Q1_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 832
    :goto_53
    const-string v4, "ExchTasksSyncAdapter"

    const-string v5, "TASKS BAD SYNC KEY"

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 835
    .local v0, cvx:Landroid/content/ContentValues;
    const-string v4, "syncKey"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 837
    .local v1, mMailboxUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 838
    .local v2, mailboxCount:I
    const-string v4, "ExchTasksSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating Tasks mailbox with sync key 0. Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void

    .line 827
    .end local v0           #cvx:Landroid/content/ContentValues;
    .end local v1           #mMailboxUri:Landroid/net/Uri;
    .end local v2           #mailboxCount:I
    :cond_8f
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_53
.end method
