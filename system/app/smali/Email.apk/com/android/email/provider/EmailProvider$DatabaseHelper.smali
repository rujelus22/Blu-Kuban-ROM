.class Lcom/android/email/provider/EmailProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    .line 1722
    const/4 v0, 0x0

    const/16 v1, 0x7d9

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1723
    iput-object p2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 1724
    return-void
.end method

.method private addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "db"
    .parameter "col_name"
    .parameter "col_type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " add column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1774
    .local v1, tmp:Ljava/lang/String;
    :try_start_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alter table Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/database/SQLException; {:try_start_23 .. :try_end_39} :catch_66

    .line 1780
    :goto_39
    :try_start_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alter table Message_Updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/database/SQLException; {:try_start_39 .. :try_end_4f} :catch_80

    .line 1786
    :goto_4f
    :try_start_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alter table Message_Deletes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/database/SQLException; {:try_start_4f .. :try_end_65} :catch_9a

    .line 1790
    :goto_65
    return-void

    .line 1775
    :catch_66
    move-exception v0

    .line 1776
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception adding - Message.TABLE_NAME. tmp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 1781
    .end local v0           #e:Landroid/database/SQLException;
    :catch_80
    move-exception v0

    .line 1782
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception adding - Message.UPDATED_TABLE_NAME. tmp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 1787
    .end local v0           #e:Landroid/database/SQLException;
    :catch_9a
    move-exception v0

    .line 1788
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception adding - Message.DELETED_TABLE_NAME. tmp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65
.end method

.method private onUpdgradeMailboxInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 15
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v3, 0x0

    .line 3208
    const-string v8, "_id=? AND ( type =? OR type =? OR type =? OR type =? OR type =? OR type =? OR type =?)"

    .line 3212
    const-string v1, "Account"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "peakSchedule"

    aput-object v0, v2, v12

    const/4 v0, 0x2

    const-string v4, "offPeakSchedule"

    aput-object v4, v2, v0

    const-string v0, "syncInterval"

    aput-object v0, v2, v11

    const-string v0, "syncLookback"

    aput-object v0, v2, v9

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3213
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    .line 3215
    :goto_2e
    if-eqz v0, :cond_102

    .line 3216
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3217
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3218
    const-string v4, "peakSyncSchedule"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3219
    const-string v4, "offpeakSyncSchedule"

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3220
    const-string v4, "syncInterval"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3221
    const-string v4, "SyncIntervalReference"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3222
    const-string v4, "syncLookback"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3224
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3225
    const-string v5, "syncInterval"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3226
    const-string v5, "SyncIntervalReference"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3227
    const-string v5, "syncLookback"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3228
    const-string v5, "Mailbox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3230
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    const/4 v0, 0x2

    const/16 v5, 0x42

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x41

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    const/16 v0, 0x43

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x5

    const/16 v5, 0x45

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x7

    const/16 v5, 0x44

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 3234
    const-string v0, "Mailbox"

    invoke-virtual {p1, v0, v2, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3235
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto/16 :goto_2e

    .line 3237
    :cond_102
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1728
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProvider database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1731
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1732
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1733
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1734
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1735
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1736
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1738
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1739
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1740
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1741
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1743
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1747
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1751
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createDocumentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1755
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHistoryAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1757
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createIRMTemplateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1761
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1765
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1766
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 3243
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/16 v4, 0x7d0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1801
    :try_start_6
    const-string v0, "select count(*) from sqlite_master where type=\'table\' and name=\'EmailAddressCache\'"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1805
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1808
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1810
    if-nez v5, :cond_1d

    .line 1811
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1815
    :cond_1d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_20} :catch_3f

    .line 1824
    :goto_20
    if-ge p2, v7, :cond_66

    .line 1825
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.android.exchange"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1827
    array-length v1, v0

    :goto_2f
    if-ge v3, v1, :cond_48

    aget-object v4, v0, v3

    .line 1828
    iget-object v5, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1827
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1817
    :catch_3f
    move-exception v0

    .line 1820
    const-string v5, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db adding recent-address-cache"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 1830
    :cond_48
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1831
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1832
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1833
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1834
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1837
    :try_start_57
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    #calls: Lcom/android/email/provider/EmailProvider;->resetEmailAddressCacheTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->access$000(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_5c
    .catch Landroid/database/SQLException; {:try_start_57 .. :try_end_5c} :catch_5d

    .line 3198
    :goto_5c
    return-void

    .line 1838
    :catch_5d
    move-exception v0

    .line 1841
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from under v5"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c

    .line 1846
    :cond_66
    if-ne p2, v7, :cond_100e

    .line 1849
    :try_start_68
    const-string v0, "alter table Message add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1851
    const-string v0, "alter table Message_Updates add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1853
    const-string v0, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_77
    .catch Landroid/database/SQLException; {:try_start_68 .. :try_end_77} :catch_67d

    .line 1860
    :goto_77
    const/4 v0, 0x6

    .line 1862
    :goto_78
    const/4 v5, 0x6

    if-ne v0, v5, :cond_86

    .line 1864
    const-string v0, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1865
    const-string v0, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1866
    const/4 v0, 0x7

    .line 1868
    :cond_86
    const/4 v5, 0x7

    if-ne v0, v5, :cond_90

    .line 1871
    :try_start_89
    const-string v0, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8e
    .catch Landroid/database/SQLException; {:try_start_89 .. :try_end_8e} :catch_687

    .line 1878
    :goto_8e
    const/16 v0, 0x8

    .line 1880
    :cond_90
    const/16 v5, 0x8

    if-ne v0, v5, :cond_a0

    .line 1883
    :try_start_94
    const-string v0, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1885
    const-string v0, "alter table Account add column signature text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9e
    .catch Landroid/database/SQLException; {:try_start_94 .. :try_end_9e} :catch_6a2

    .line 1892
    :goto_9e
    const/16 v0, 0x9

    .line 1894
    :cond_a0
    const/16 v5, 0x9

    if-ne v0, v5, :cond_b5

    .line 1897
    :try_start_a4
    const-string v0, "alter table Message add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1899
    const-string v0, "alter table Message_Updates add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1901
    const-string v0, "alter table Message_Deletes add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b3
    .catch Landroid/database/SQLException; {:try_start_a4 .. :try_end_b3} :catch_6bd

    .line 1908
    :goto_b3
    const/16 v0, 0xa

    .line 1910
    :cond_b5
    const/16 v5, 0xa

    if-ne v0, v5, :cond_c5

    .line 1913
    :try_start_b9
    const-string v0, "alter table Attachment add column content text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1915
    const-string v0, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c3
    .catch Landroid/database/SQLException; {:try_start_b9 .. :try_end_c3} :catch_6d8

    .line 1922
    :goto_c3
    const/16 v0, 0xb

    .line 1924
    :cond_c5
    const/16 v5, 0xb

    if-ne v0, v5, :cond_d0

    .line 1927
    :try_start_c9
    const-string v0, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_ce
    .catch Landroid/database/SQLException; {:try_start_c9 .. :try_end_ce} :catch_6f3

    .line 1934
    :goto_ce
    const/16 v0, 0xc

    .line 1936
    :cond_d0
    const/16 v5, 0xc

    if-ne v0, v5, :cond_de

    .line 1938
    :try_start_d4
    const-string v0, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1940
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_dc
    .catch Landroid/database/SQLException; {:try_start_d4 .. :try_end_dc} :catch_70e

    .line 1946
    :goto_dc
    const/16 v0, 0xd

    .line 1949
    :cond_de
    const/16 v5, 0xd

    if-ne v0, v5, :cond_e9

    .line 1951
    :try_start_e2
    const-string v0, "alter table Message add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e7
    .catch Landroid/database/SQLException; {:try_start_e2 .. :try_end_e7} :catch_729

    .line 1959
    :goto_e7
    const/16 v0, 0xe

    .line 1961
    :cond_e9
    const/16 v5, 0xe

    if-ne v0, v5, :cond_f9

    .line 1963
    :try_start_ed
    const-string v0, "alter table Message_Deletes add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1965
    const-string v0, "alter table Message_Updates add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f7
    .catch Landroid/database/SQLException; {:try_start_ed .. :try_end_f7} :catch_744

    .line 1972
    :goto_f7
    const/16 v0, 0xf

    .line 1974
    :cond_f9
    const/16 v5, 0xf

    if-ne v0, v5, :cond_109

    .line 1976
    :try_start_fd
    const-string v0, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1980
    const-string v0, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_107
    .catch Landroid/database/SQLException; {:try_start_fd .. :try_end_107} :catch_75f

    .line 1990
    :goto_107
    const/16 v0, 0x10

    .line 1992
    :cond_109
    const/16 v5, 0x10

    if-ne v0, v5, :cond_114

    .line 1994
    :try_start_10d
    const-string v0, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_112
    .catch Landroid/database/SQLException; {:try_start_10d .. :try_end_112} :catch_77a

    .line 2001
    :goto_112
    const/16 v0, 0x11

    .line 2004
    :cond_114
    const/16 v5, 0x11

    if-ne v0, v5, :cond_1a2

    .line 2006
    :try_start_118
    const-string v0, "alter table Message add column threadId integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2008
    const-string v0, "alter table Message_Updates add column threadId integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2010
    const-string v0, "alter table Message_Deletes add column threadId integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2013
    const-string v0, "alter table Message add column threadName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2015
    const-string v0, "alter table Message_Updates add column threadName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2017
    const-string v0, "alter table Message_Deletes add column threadName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2021
    const-string v0, "importance"

    const-string v5, "integer default 1"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    const-string v0, "istruncated"

    const-string v5, "integer default 0"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    const-string v0, "flagMoved"

    const-string v5, "integer default 0"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    const-string v0, "dstMailboxKey"

    const-string v5, "integer default -1"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    const-string v0, "flagStatus"

    const-string v5, "integer default 0"

    invoke-direct {p0, p1, v0, v5}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    const-string v0, "alter table Account add column emailsize integer default 6;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2030
    const-string v0, "alter table Account add column policyKey integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2032
    const-string v0, "alter table Account add column peakDays integer default 62;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2034
    const-string v0, "alter table Account add column peakStartMinute integer default 480;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2036
    const-string v0, "alter table Account add column peakEndMinute integer default 1020;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2038
    const-string v0, "alter table Account add column peakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2040
    const-string v0, "alter table Account add column offPeakSchedule integer default 60;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2043
    const-string v0, "alter table Account add column roamingSchedule integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2045
    const-string v0, "alter table Account add column calendarSyncLookback integer default 4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2049
    const-string v0, "alter table Mailbox add column flagChanged integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2051
    const-string v0, "alter table Mailbox add column dstMailboxId text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2053
    const-string v0, "alter table Mailbox add column newDisplayName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2057
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2058
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    #calls: Lcom/android/email/provider/EmailProvider;->populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/email/provider/EmailProvider;->access$100(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2061
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1a0
    .catch Landroid/database/SQLException; {:try_start_118 .. :try_end_1a0} :catch_795

    .line 2066
    :goto_1a0
    const/16 v0, 0x12

    .line 2073
    :cond_1a2
    :try_start_1a2
    const-string v5, "select name from sqlite_master where type=\'table\' and name = \'Account_CB\'"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2077
    if-eqz v2, :cond_100b

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1ae
    .catchall {:try_start_1a2 .. :try_end_1ae} :catchall_7b9
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1ae} :catch_7b0

    move-result v5

    if-lez v5, :cond_100b

    move v5, v1

    .line 2081
    :goto_1b2
    if-eqz v2, :cond_1008

    .line 2082
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v5

    .line 2085
    :goto_1b8
    const/16 v5, 0x3e8

    if-gt v0, v5, :cond_1000

    .line 2087
    if-nez v2, :cond_1cd

    .line 2088
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2089
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2090
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2091
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    move v2, v1

    .line 2096
    :cond_1cd
    :try_start_1cd
    const-string v0, "EmailProvider"

    const-string v5, "onUpgrade insert cb table"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const-string v0, "delete from account where _id in (select accountKey from account_cb where typeMsg = 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2098
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2099
    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2100
    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1e8} :catch_7c0

    .line 2105
    :goto_1e8
    const/16 v0, 0x3e9

    move v9, v2

    move v2, v0

    move v0, v9

    .line 2107
    :goto_1ed
    const/16 v5, 0x3e9

    if-ne v2, v5, :cond_1ff

    .line 2109
    :try_start_1f1
    const-string v2, "EmailProvider"

    const-string v5, "alter table mailbox_cb"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const-string v2, "alter table Mailbox_CB add column syncFlag integer;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_1fd} :catch_7cc

    .line 2116
    :goto_1fd
    const/16 v2, 0x3ea

    .line 2118
    :cond_1ff
    const/16 v5, 0x3ea

    if-ne v2, v5, :cond_225

    .line 2120
    if-eqz v0, :cond_7d8

    .line 2121
    :try_start_205
    const-string v5, "EmailProvider"

    const-string v6, "oldVersion == 1002"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const-string v5, " create table account_temp as select * from account_cb "

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2123
    invoke-static {p1, v2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2124
    const-string v2, " insert into Account_CB (_id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit)select _id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit from account_temp "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2128
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/EmailProvider;->resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2129
    const-string v2, "drop table account_temp"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_223} :catch_81f

    .line 2150
    :goto_223
    const/16 v2, 0x3eb

    .line 2152
    :cond_225
    const/16 v5, 0x3eb

    if-ne v2, v5, :cond_ffd

    .line 2153
    const-string v5, "EmailProvider"

    const-string v6, "oldVersion == 1003"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    if-eqz v0, :cond_83e

    .line 2164
    :try_start_232
    const-string v5, " create table account_temp as select * from account_cb "

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2165
    invoke-static {p1, v2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2167
    const-string v2, " insert into Account_CB (_id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit)select _id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit from account_temp "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2172
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/EmailProvider;->resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2173
    const-string v2, "drop table account_temp"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_249
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_249} :catch_885

    .line 2195
    :goto_249
    const/16 v2, 0x3ec

    move v5, v0

    .line 2198
    :goto_24c
    const/16 v0, 0x3ec

    if-ne v2, v0, :cond_2d1

    .line 2200
    :try_start_250
    const-string v0, "isMimeLoaded"

    const-string v2, "integer default 0"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_257
    .catch Landroid/database/SQLException; {:try_start_250 .. :try_end_257} :catch_8a4

    .line 2206
    :goto_257
    :try_start_257
    const-string v0, "smimeFlags"

    const-string v2, "integer default 0"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    const-string v0, "encryptionAlgorithm"

    const-string v2, "text"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    const-string v0, "lastVerb"

    const-string v2, "integer default 0"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    const-string v0, "lastVerbTime"

    const-string v2, "integer default 0"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const-string v0, "umCallerId"

    const-string v2, "text"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    const-string v0, "umUserNotes"

    const-string v2, "text"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    const-string v0, "conversationId"

    const-string v2, "text"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    const-string v0, "conversationIndex"

    const-string v2, "blob"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    const-string v0, "followupflag"

    const-string v2, "blob"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    const-string v0, "messageType"

    const-string v2, "integer default 0"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    const-string v0, "messageDirty"

    const-string v2, "integer default 0"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    const-string v0, "alter table Account add column smimeOwnCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2221
    const-string v0, "alter table Account add column smimeOptionsFlags integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2224
    const-string v0, "alter table Account add column smimeSignAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2228
    const-string v0, "alter table Account add column smimeEncryptionAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2232
    const-string v0, "alter table Account add column conversationMode integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2235
    const-string v0, "alter table Account add column textPreview integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2238
    const-string v0, "alter table Attachment add column vmAttOrder integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2241
    const-string v0, "alter table Attachment add column vmAttDuration integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2244
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2cf
    .catch Landroid/database/SQLException; {:try_start_257 .. :try_end_2cf} :catch_8ae

    .line 2251
    :goto_2cf
    const/16 v2, 0x3ed

    .line 2254
    :cond_2d1
    const/16 v0, 0x3ed

    if-ne v2, v0, :cond_2e1

    .line 2256
    :try_start_2d5
    const-string v0, "alter table Account add column deviceInfoSent integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2da
    .catch Landroid/database/SQLException; {:try_start_2d5 .. :try_end_2da} :catch_8c9

    .line 2264
    :goto_2da
    :try_start_2da
    const-string v0, "alter table Account add column deviceBlockedType integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2df
    .catch Landroid/database/SQLException; {:try_start_2da .. :try_end_2df} :catch_8e4

    .line 2271
    :goto_2df
    const/16 v2, 0x3ee

    .line 2273
    :cond_2e1
    const/16 v0, 0x3ee

    if-ne v2, v0, :cond_30c

    .line 2275
    :try_start_2e5
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2e8
    .catch Landroid/database/SQLException; {:try_start_2e5 .. :try_end_2e8} :catch_8ff

    .line 2281
    :goto_2e8
    :try_start_2e8
    const-string v0, "accountSchema"

    const-string v2, "text"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    const-string v0, "update Message set accountSchema= (SELECT HostAuth.protocol from HostAuth where HostAuth.accountKey = Message.accountKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2288
    const-string v0, "mailboxType"

    const-string v2, "integer default -1"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    const-string v0, "update Message set mailboxType= (SELECT Mailbox.type from Mailbox where Mailbox._id = Message.mailboxKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_300
    .catch Landroid/database/SQLException; {:try_start_2e8 .. :try_end_300} :catch_91a

    .line 2301
    :goto_300
    :try_start_300
    const-string v0, "alter table Account add column conflict integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2303
    const-string v0, "update Account set conflict= 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_30a
    .catch Landroid/database/SQLException; {:try_start_300 .. :try_end_30a} :catch_935

    .line 2348
    :goto_30a
    const/16 v2, 0x3ef

    .line 2351
    :cond_30c
    const/16 v0, 0x3ef

    if-ne v2, v0, :cond_317

    .line 2355
    :try_start_310
    const-string v0, "alter table Attachment add column isInline integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_315
    .catch Landroid/database/SQLException; {:try_start_310 .. :try_end_315} :catch_950

    .line 2363
    :goto_315
    const/16 v2, 0x3f0

    .line 2366
    :cond_317
    const/16 v0, 0x3f0

    if-ne v2, v0, :cond_34c

    .line 2368
    :try_start_31b
    const-string v0, "alter table Account add column IRMTemplateTimeStamp text ;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_320
    .catch Landroid/database/SQLException; {:try_start_31b .. :try_end_320} :catch_95a

    .line 2375
    :goto_320
    :try_start_320
    const-string v0, "IRMTemplateId"

    const-string v2, "text"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_327
    .catch Landroid/database/SQLException; {:try_start_320 .. :try_end_327} :catch_964

    .line 2380
    :goto_327
    :try_start_327
    const-string v0, "IRMContentExpiryDate"

    const-string v2, "text"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32e
    .catch Landroid/database/SQLException; {:try_start_327 .. :try_end_32e} :catch_96e

    .line 2385
    :goto_32e
    :try_start_32e
    const-string v0, "IRMContentOwner"

    const-string v2, "text"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_335
    .catch Landroid/database/SQLException; {:try_start_32e .. :try_end_335} :catch_978

    .line 2390
    :goto_335
    :try_start_335
    const-string v0, "IRMLicenseFlag"

    const-string v2, "integer default -1"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33c
    .catch Landroid/database/SQLException; {:try_start_335 .. :try_end_33c} :catch_982

    .line 2395
    :goto_33c
    :try_start_33c
    const-string v0, "IRMOwner"

    const-string v2, "integer default 0"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_343
    .catch Landroid/database/SQLException; {:try_start_33c .. :try_end_343} :catch_98c

    .line 2400
    :goto_343
    :try_start_343
    const-string v0, "IRMRemovalFlag"

    const-string v2, "integer default 0"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34a
    .catch Landroid/database/SQLException; {:try_start_343 .. :try_end_34a} :catch_996

    .line 2404
    :goto_34a
    const/16 v2, 0x3f1

    .line 2409
    :cond_34c
    const/16 v0, 0x3f1

    if-ne v2, v0, :cond_357

    .line 2411
    :try_start_350
    const-string v0, "alter table Account add column cbaCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_355
    .catch Landroid/database/SQLException; {:try_start_350 .. :try_end_355} :catch_9a0

    .line 2418
    :goto_355
    const/16 v2, 0x3f2

    .line 2423
    :cond_357
    const/16 v0, 0x3f2

    if-ne v2, v0, :cond_362

    .line 2425
    :try_start_35b
    const-string v0, "alter table Account add column messageFormat integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_360
    .catch Landroid/database/SQLException; {:try_start_35b .. :try_end_360} :catch_9bb

    .line 2432
    :goto_360
    const/16 v2, 0x3f3

    .line 2434
    :cond_362
    const/16 v0, 0x3f3

    if-ne v2, v0, :cond_36d

    .line 2436
    :try_start_366
    const-string v0, "alter table Account add column accountType integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_36b
    .catch Landroid/database/SQLException; {:try_start_366 .. :try_end_36b} :catch_9d6

    .line 2443
    :goto_36b
    const/16 v2, 0x3f4

    .line 2445
    :cond_36d
    const/16 v0, 0x3f4

    if-ne v2, v0, :cond_381

    .line 2446
    const-string v0, "IRMTemplateName"

    const-string v2, "text"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    const-string v0, "IRMTemplateDescription"

    const-string v2, "text"

    invoke-direct {p0, p1, v0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    const/16 v2, 0x3f5

    .line 2452
    :cond_381
    if-ge v2, v4, :cond_ffa

    .line 2455
    :try_start_383
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHistoryAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_386
    .catch Landroid/database/SQLException; {:try_start_383 .. :try_end_386} :catch_9f1

    .line 2463
    :goto_386
    :try_start_386
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_389
    .catch Landroid/database/SQLException; {:try_start_386 .. :try_end_389} :catch_9fb

    .line 2471
    :goto_389
    :try_start_389
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2472
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    #calls: Lcom/android/email/provider/EmailProvider;->populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/email/provider/EmailProvider;->access$100(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_391
    .catch Landroid/database/SQLException; {:try_start_389 .. :try_end_391} :catch_a16

    .line 2481
    :goto_391
    :try_start_391
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->updatePasswordModeFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_394
    .catch Landroid/database/SQLException; {:try_start_391 .. :try_end_394} :catch_a31

    .line 2488
    :goto_394
    :try_start_394
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_397
    .catch Landroid/database/SQLException; {:try_start_394 .. :try_end_397} :catch_a3e

    .line 2496
    :goto_397
    :try_start_397
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createRecipientInformationTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_39a
    .catch Landroid/database/SQLException; {:try_start_397 .. :try_end_39a} :catch_a48

    .line 2505
    :goto_39a
    :try_start_39a
    const-string v0, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2506
    const-string v0, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3a4
    .catch Landroid/database/SQLException; {:try_start_39a .. :try_end_3a4} :catch_a52

    .line 2515
    :goto_3a4
    :try_start_3a4
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->convertAccountFlagsFromGB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3a7
    .catch Landroid/database/SQLException; {:try_start_3a4 .. :try_end_3a7} :catch_a6d

    .line 2524
    :goto_3a7
    :try_start_3a7
    const-string v0, "create trigger account_delete_policy before delete on Account begin delete from Policies where account_id=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3ac
    .catch Landroid/database/SQLException; {:try_start_3a7 .. :try_end_3ac} :catch_a77

    .line 2537
    :goto_3ac
    :try_start_3ac
    const-string v0, "alter table Account add column signature text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3b1
    .catch Landroid/database/SQLException; {:try_start_3ac .. :try_end_3b1} :catch_a92

    .line 2546
    :goto_3b1
    :try_start_3b1
    const-string v0, "alter table Account add column textPreview integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3b6
    .catch Landroid/database/SQLException; {:try_start_3b1 .. :try_end_3b6} :catch_aad

    .line 2555
    :goto_3b6
    :try_start_3b6
    const-string v0, "alter table Account add column emailsize integer default 3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3bb
    .catch Landroid/database/SQLException; {:try_start_3b6 .. :try_end_3bb} :catch_ac8

    .line 2564
    :goto_3bb
    :try_start_3bb
    const-string v0, "alter table Account add column conflict integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2566
    const-string v0, "update Account set conflict= 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3c5
    .catch Landroid/database/SQLException; {:try_start_3bb .. :try_end_3c5} :catch_ae3

    .line 2575
    :goto_3c5
    :try_start_3c5
    const-string v0, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3ca
    .catch Landroid/database/SQLException; {:try_start_3c5 .. :try_end_3ca} :catch_afe

    .line 2584
    :goto_3ca
    :try_start_3ca
    const-string v0, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3cf
    .catch Landroid/database/SQLException; {:try_start_3ca .. :try_end_3cf} :catch_b19

    .line 2593
    :goto_3cf
    :try_start_3cf
    const-string v0, "alter table Account add column calendarSyncLookback integer default 4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3d4
    .catch Landroid/database/SQLException; {:try_start_3cf .. :try_end_3d4} :catch_b34

    .line 2602
    :goto_3d4
    :try_start_3d4
    const-string v0, "alter table Account add column peakDays integer default 62;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3d9
    .catch Landroid/database/SQLException; {:try_start_3d4 .. :try_end_3d9} :catch_b3e

    .line 2611
    :goto_3d9
    :try_start_3d9
    const-string v0, "alter table Account add column peakStartMinute integer default 480;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3de
    .catch Landroid/database/SQLException; {:try_start_3d9 .. :try_end_3de} :catch_b59

    .line 2620
    :goto_3de
    :try_start_3de
    const-string v0, "alter table Account add column peakEndMinute integer default 1020;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3e3
    .catch Landroid/database/SQLException; {:try_start_3de .. :try_end_3e3} :catch_b74

    .line 2629
    :goto_3e3
    :try_start_3e3
    const-string v0, "alter table Account add column peakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3e8
    .catch Landroid/database/SQLException; {:try_start_3e3 .. :try_end_3e8} :catch_b8f

    .line 2638
    :goto_3e8
    :try_start_3e8
    const-string v0, "alter table Account add column offPeakSchedule integer default -2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3ed
    .catch Landroid/database/SQLException; {:try_start_3e8 .. :try_end_3ed} :catch_baa

    .line 2647
    :goto_3ed
    :try_start_3ed
    const-string v0, "alter table Account add column roamingSchedule integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3f2
    .catch Landroid/database/SQLException; {:try_start_3ed .. :try_end_3f2} :catch_bc5

    .line 2656
    :goto_3f2
    :try_start_3f2
    const-string v0, "alter table Account add column smimeOwnCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3f7
    .catch Landroid/database/SQLException; {:try_start_3f2 .. :try_end_3f7} :catch_be0

    .line 2665
    :goto_3f7
    :try_start_3f7
    const-string v0, "alter table Account add column smimeOptionsFlags integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3fc
    .catch Landroid/database/SQLException; {:try_start_3f7 .. :try_end_3fc} :catch_bfb

    .line 2674
    :goto_3fc
    :try_start_3fc
    const-string v0, "alter table Account add column smimeSignAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_401
    .catch Landroid/database/SQLException; {:try_start_3fc .. :try_end_401} :catch_c16

    .line 2684
    :goto_401
    :try_start_401
    const-string v0, "alter table Account add column smimeEncryptionAlgorithm integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_406
    .catch Landroid/database/SQLException; {:try_start_401 .. :try_end_406} :catch_c31

    .line 2694
    :goto_406
    :try_start_406
    const-string v0, "alter table Account add column conversationMode integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_40b
    .catch Landroid/database/SQLException; {:try_start_406 .. :try_end_40b} :catch_c4c

    .line 2703
    :goto_40b
    :try_start_40b
    const-string v0, "alter table Account add column deviceInfoSent integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_410
    .catch Landroid/database/SQLException; {:try_start_40b .. :try_end_410} :catch_c67

    .line 2712
    :goto_410
    :try_start_410
    const-string v0, "alter table Account add column deviceBlockedType integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_415
    .catch Landroid/database/SQLException; {:try_start_410 .. :try_end_415} :catch_c82

    .line 2721
    :goto_415
    :try_start_415
    const-string v0, "alter table Account add column policyKey integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_41a
    .catch Landroid/database/SQLException; {:try_start_415 .. :try_end_41a} :catch_c8c

    .line 2730
    :goto_41a
    :try_start_41a
    const-string v0, "alter table Account add column IRMTemplateTimeStamp text ;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_41f
    .catch Landroid/database/SQLException; {:try_start_41a .. :try_end_41f} :catch_ca7

    .line 2739
    :goto_41f
    :try_start_41f
    const-string v0, "alter table Account add column cbaCertificateAlias text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_424
    .catch Landroid/database/SQLException; {:try_start_41f .. :try_end_424} :catch_cb1

    .line 2748
    :goto_424
    :try_start_424
    const-string v0, "alter table Account add column easLocalChange integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_429
    .catch Landroid/database/SQLException; {:try_start_424 .. :try_end_429} :catch_ccc

    .line 2757
    :goto_429
    :try_start_429
    const-string v0, "alter table Account add column messageFormat integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_42e
    .catch Landroid/database/SQLException; {:try_start_429 .. :try_end_42e} :catch_ce7

    .line 2766
    :goto_42e
    :try_start_42e
    const-string v0, "alter table Account add column accountType integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_433
    .catch Landroid/database/SQLException; {:try_start_42e .. :try_end_433} :catch_d02

    .line 2775
    :goto_433
    :try_start_433
    const-string v0, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2777
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_43b
    .catch Landroid/database/SQLException; {:try_start_433 .. :try_end_43b} :catch_d1d

    .line 2785
    :goto_43b
    :try_start_43b
    const-string v0, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_440
    .catch Landroid/database/SQLException; {:try_start_43b .. :try_end_440} :catch_d38

    .line 2794
    :goto_440
    :try_start_440
    const-string v0, "alter table Mailbox add column flagChanged integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_445
    .catch Landroid/database/SQLException; {:try_start_440 .. :try_end_445} :catch_d53

    .line 2803
    :goto_445
    :try_start_445
    const-string v0, "alter table Mailbox add column newDisplayName text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_44a
    .catch Landroid/database/SQLException; {:try_start_445 .. :try_end_44a} :catch_d5d

    .line 2812
    :goto_44a
    :try_start_44a
    const-string v0, "alter table Mailbox add column flagNoSelect integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_44f
    .catch Landroid/database/SQLException; {:try_start_44a .. :try_end_44f} :catch_d78

    .line 2821
    :goto_44f
    :try_start_44f
    const-string v0, "alter table Mailbox add column lastTouchedTime integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_454
    .catch Landroid/database/SQLException; {:try_start_44f .. :try_end_454} :catch_d93

    .line 2830
    :goto_454
    :try_start_454
    const-string v0, "alter table Mailbox add column dstMailboxId text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_459
    .catch Landroid/database/SQLException; {:try_start_454 .. :try_end_459} :catch_dae

    .line 2839
    :goto_459
    :try_start_459
    const-string v0, "EmailProvider"

    const-string v6, "Adding new MessageColumns... "

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    const-string v0, "snippet"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    const-string v0, "EasLocalDeleteFlag"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    const-string v0, "EasLocalReadFlag"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    const-string v0, "importance"

    const-string v6, "integer default 1"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    const-string v0, "meetingInfo"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    const-string v0, "flagMoved"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    const-string v0, "dstMailboxKey"

    const-string v6, "integer default -1"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    const-string v0, "flagStatus"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    const-string v0, "istruncated"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    const-string v0, "isMimeLoaded"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    const-string v0, "smimeFlags"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    const-string v0, "encryptionAlgorithm"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    const-string v0, "lastVerb"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    const-string v0, "lastVerbTime"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    const-string v0, "umCallerId"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2865
    const-string v0, "umUserNotes"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    const-string v0, "conversationId"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    const-string v0, "conversationIndex"

    const-string v6, "blob"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    const-string v0, "followupflag"

    const-string v6, "blob"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    const-string v0, "messageType"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    const-string v0, "messageDirty"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    const-string v0, "threadId"

    const-string v6, "integer"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    const-string v0, "threadName"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    const-string v0, "IRMTemplateId"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    const-string v0, "IRMContentExpiryDate"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    const-string v0, "IRMContentOwner"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    const-string v0, "IRMLicenseFlag"

    const-string v6, "integer default -1"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    const-string v0, "IRMOwner"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    const-string v0, "IRMRemovalFlag"

    const-string v6, "integer default 0"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2883
    const-string v0, "IRMTemplateDescription"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    const-string v0, "IRMTemplateName"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2885
    const-string v0, "IRMTemplateDescription"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    const-string v0, "flagReply"

    const-string v6, "integer"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    const-string v0, "originalId"

    const-string v6, "integer"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54e
    .catch Landroid/database/SQLException; {:try_start_459 .. :try_end_54e} :catch_db8

    .line 2896
    :goto_54e
    :try_start_54e
    const-string v0, "accountSchema"

    const-string v6, "text"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    const-string v0, "update Message set accountSchema= (SELECT HostAuth.protocol from HostAuth where HostAuth.accountKey = Message.accountKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_55a
    .catch Landroid/database/SQLException; {:try_start_54e .. :try_end_55a} :catch_dd3

    .line 2910
    :goto_55a
    :try_start_55a
    const-string v0, "mailboxType"

    const-string v6, "integer default -1"

    invoke-direct {p0, p1, v0, v6}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    const-string v0, "update Message set mailboxType= (SELECT Mailbox.type from Mailbox where Mailbox._id = Message.mailboxKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_566
    .catch Landroid/database/SQLException; {:try_start_55a .. :try_end_566} :catch_dee

    .line 2924
    :goto_566
    :try_start_566
    const-string v0, "alter table Attachment add column content text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_56b
    .catch Landroid/database/SQLException; {:try_start_566 .. :try_end_56b} :catch_e09

    .line 2933
    :goto_56b
    :try_start_56b
    const-string v0, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_570
    .catch Landroid/database/SQLException; {:try_start_56b .. :try_end_570} :catch_e24

    .line 2942
    :goto_570
    :try_start_570
    const-string v0, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_575
    .catch Landroid/database/SQLException; {:try_start_570 .. :try_end_575} :catch_e3f

    .line 2951
    :goto_575
    :try_start_575
    const-string v0, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2954
    const-string v0, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_57f
    .catch Landroid/database/SQLException; {:try_start_575 .. :try_end_57f} :catch_e5a

    .line 2966
    :goto_57f
    :try_start_57f
    const-string v0, "alter table Attachment add column vmAttOrder integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_584
    .catch Landroid/database/SQLException; {:try_start_57f .. :try_end_584} :catch_e75

    .line 2975
    :goto_584
    :try_start_584
    const-string v0, "alter table Attachment add column vmAttDuration integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_589
    .catch Landroid/database/SQLException; {:try_start_584 .. :try_end_589} :catch_e7f

    .line 2984
    :goto_589
    :try_start_589
    const-string v0, "alter table Attachment add column isInline integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_58e
    .catch Landroid/database/SQLException; {:try_start_589 .. :try_end_58e} :catch_e89

    .line 2994
    :goto_58e
    if-eqz v5, :cond_eca

    .line 2996
    :try_start_590
    const-string v0, "EmailProvider"

    const-string v5, "oldVersion < 2000alter table mailbox_cb"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    const-string v0, "alter table Mailbox_CB add column syncFlag integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_59c
    .catch Ljava/lang/Exception; {:try_start_590 .. :try_end_59c} :catch_e93

    .line 3004
    :goto_59c
    :try_start_59c
    const-string v0, "EmailProvider"

    const-string v5, "oldVersion < 2000"

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    const-string v0, " create table account_temp as select * from account_cb "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5a8
    .catch Ljava/lang/Exception; {:try_start_59c .. :try_end_5a8} :catch_ebe

    .line 3009
    :goto_5a8
    :try_start_5a8
    invoke-static {p1, v2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 3010
    const-string v0, " insert into Account_CB (_id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit)select _id, accountKey, sevenAccountKey, typeMsg, timeLimit, sizeLimit from account_temp "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3014
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->resetSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3015
    const-string v0, "drop table account_temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5ba
    .catch Ljava/lang/Exception; {:try_start_5a8 .. :try_end_5ba} :catch_e9f

    :goto_5ba
    move v0, v4

    .line 3040
    :goto_5bb
    if-ne v0, v4, :cond_605

    .line 3043
    :try_start_5bd
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3045
    if-eqz v0, :cond_5ef

    .line 3047
    const-string v2, "forward_with_files"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3049
    if-ne v0, v1, :cond_f0f

    .line 3054
    :goto_5ce
    const-string v0, "alter table Account add column forwardWithFiles integer default 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update Account set forwardWithFiles="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5ef
    .catch Landroid/database/SQLException; {:try_start_5bd .. :try_end_5ef} :catch_f12

    .line 3067
    :cond_5ef
    :goto_5ef
    :try_start_5ef
    const-string v0, "alter table Account add column autoDownload integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5f4
    .catch Landroid/database/SQLException; {:try_start_5ef .. :try_end_5f4} :catch_f2d

    .line 3076
    :goto_5f4
    :try_start_5f4
    const-string v0, "alter table Account add column recentMessages integer default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5f9
    .catch Landroid/database/SQLException; {:try_start_5f4 .. :try_end_5f9} :catch_f48

    .line 3085
    :goto_5f9
    :try_start_5f9
    const-string v0, "alter table Account add column showImage integer default 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5fe
    .catch Landroid/database/SQLException; {:try_start_5f9 .. :try_end_5fe} :catch_f63

    .line 3094
    :goto_5fe
    :try_start_5fe
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->enableEmailSyncFromGB(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    :try_end_603
    .catch Landroid/database/SQLException; {:try_start_5fe .. :try_end_603} :catch_f7e

    .line 3098
    :goto_603
    const/16 v0, 0x7d1

    .line 3102
    :cond_605
    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_610

    .line 3104
    :try_start_609
    const-string v0, "alter table Account add column autoRetryTimes integer default 3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_60e
    .catch Landroid/database/SQLException; {:try_start_609 .. :try_end_60e} :catch_f99

    .line 3111
    :goto_60e
    const/16 v0, 0x7d2

    .line 3116
    :cond_610
    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_61d

    .line 3118
    :try_start_614
    const-string v0, "retrySendTimes"

    const-string v1, "integer default 0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61b
    .catch Landroid/database/SQLException; {:try_start_614 .. :try_end_61b} :catch_fb4

    .line 3122
    :goto_61b
    const/16 v0, 0x7d3

    .line 3126
    :cond_61d
    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_626

    .line 3128
    :try_start_621
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createDocumentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_624
    .catch Landroid/database/SQLException; {:try_start_621 .. :try_end_624} :catch_fbe

    .line 3134
    :goto_624
    const/16 v0, 0x7d4

    .line 3138
    :cond_626
    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_636

    .line 3140
    :try_start_62a
    const-string v0, "alter table Mailbox add column offpeakSyncSchedule integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3142
    const-string v0, "alter table Mailbox add column peakSyncSchedule integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_634
    .catch Landroid/database/SQLException; {:try_start_62a .. :try_end_634} :catch_fc8

    .line 3147
    :goto_634
    const/16 v0, 0x7d5

    .line 3151
    :cond_636
    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_644

    .line 3153
    :try_start_63a
    const-string v0, "alter table Mailbox add column SyncIntervalReference integer default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3156
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->onUpdgradeMailboxInit(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_642
    .catch Landroid/database/SQLException; {:try_start_63a .. :try_end_642} :catch_fd2

    .line 3160
    :goto_642
    const/16 v0, 0x7d6

    .line 3164
    :cond_644
    const/16 v1, 0x7d6

    if-ne v0, v1, :cond_64f

    .line 3166
    :try_start_648
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/email/provider/EmailProvider;->upgradeEmailAccountManagerDB(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    :try_end_64d
    .catch Landroid/database/SQLException; {:try_start_648 .. :try_end_64d} :catch_fdc

    .line 3170
    :goto_64d
    const/16 v0, 0x7d7

    .line 3176
    :cond_64f
    const/16 v1, 0x7d7

    if-ne v0, v1, :cond_65a

    .line 3178
    :try_start_653
    const-string v0, "alter table Mailbox add column keyWord text; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_658
    .catch Ljava/lang/Exception; {:try_start_653 .. :try_end_658} :catch_fe6

    .line 3183
    :goto_658
    const/16 v0, 0x7d8

    .line 3189
    :cond_65a
    const/16 v1, 0x7d8

    if-ne v0, v1, :cond_660

    .line 3193
    const/16 v0, 0x7d9

    .line 3196
    :cond_660
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade complete to new version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->setDefaultRingtoneToPostman(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_5c

    .line 1855
    :catch_67d
    move-exception v0

    .line 1858
    const-string v5, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v5 to v6"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_77

    .line 1873
    :catch_687
    move-exception v0

    .line 1876
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 7 to 8 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e

    .line 1887
    :catch_6a2
    move-exception v0

    .line 1890
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 8 to 9 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 1903
    :catch_6bd
    move-exception v0

    .line 1906
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 9 to 10 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b3

    .line 1917
    :catch_6d8
    move-exception v0

    .line 1920
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 10 to 11 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c3

    .line 1929
    :catch_6f3
    move-exception v0

    .line 1932
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 11 to 12 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ce

    .line 1941
    :catch_70e
    move-exception v0

    .line 1944
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 12 to 13 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_dc

    .line 1953
    :catch_729
    move-exception v0

    .line 1956
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 13 to 14 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 1967
    :catch_744
    move-exception v0

    .line 1970
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 14 to 15 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f7

    .line 1985
    :catch_75f
    move-exception v0

    .line 1988
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 15 to 16 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_107

    .line 1996
    :catch_77a
    move-exception v0

    .line 1999
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 16 to 17 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_112

    .line 2062
    :catch_795
    move-exception v0

    .line 2063
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 17 to 18 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a0

    .line 2079
    :catch_7b0
    move-exception v5

    .line 2081
    if-eqz v2, :cond_1005

    .line 2082
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v3

    goto/16 :goto_1b8

    .line 2081
    :catchall_7b9
    move-exception v0

    if-eqz v2, :cond_7bf

    .line 2082
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7bf
    throw v0

    .line 2101
    :catch_7c0
    move-exception v0

    .line 2102
    const-string v5, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e8

    .line 2113
    :catch_7cc
    move-exception v2

    .line 2114
    const-string v5, "EmailProvider"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1fd

    .line 2131
    :cond_7d8
    :try_start_7d8
    const-string v2, "EmailProvider"

    const-string v5, "oldVersion == 1002 create table cb"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2133
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2134
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2135
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_7ed
    .catch Ljava/lang/Exception; {:try_start_7d8 .. :try_end_7ed} :catch_81f

    .line 2139
    :try_start_7ed
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2140
    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2141
    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7fc
    .catch Ljava/lang/Exception; {:try_start_7ed .. :try_end_7fc} :catch_7ff

    move v0, v1

    .line 2144
    goto/16 :goto_223

    .line 2142
    :catch_7ff
    move-exception v0

    .line 2143
    :try_start_800
    const-string v2, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1002 e =>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81c
    .catch Ljava/lang/Exception; {:try_start_800 .. :try_end_81c} :catch_ff5

    move v0, v1

    goto/16 :goto_223

    .line 2146
    :catch_81f
    move-exception v2

    .line 2147
    :goto_820
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1002=>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_223

    .line 2175
    :cond_83e
    :try_start_83e
    const-string v2, "EmailProvider"

    const-string v5, "oldVersion == 1003 create table"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2177
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2178
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2179
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v2, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_853
    .catch Ljava/lang/Exception; {:try_start_83e .. :try_end_853} :catch_885

    .line 2183
    :try_start_853
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2184
    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2185
    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_862
    .catch Ljava/lang/Exception; {:try_start_853 .. :try_end_862} :catch_865

    move v0, v1

    .line 2188
    goto/16 :goto_249

    .line 2186
    :catch_865
    move-exception v0

    .line 2187
    :try_start_866
    const-string v2, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1003 e =>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_882
    .catch Ljava/lang/Exception; {:try_start_866 .. :try_end_882} :catch_ff0

    move v0, v1

    goto/16 :goto_249

    .line 2191
    :catch_885
    move-exception v2

    .line 2192
    :goto_886
    const-string v5, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1003=>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_249

    .line 2201
    :catch_8a4
    move-exception v0

    .line 2202
    const-string v2, "EmailProvider"

    const-string v6, "Maybe this field is already added at previous DB version. "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_257

    .line 2245
    :catch_8ae
    move-exception v0

    .line 2248
    const-string v2, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 1004 to 1005 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2cf

    .line 2258
    :catch_8c9
    move-exception v0

    .line 2261
    const-string v2, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 1005 to 1006 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2da

    .line 2266
    :catch_8e4
    move-exception v0

    .line 2269
    const-string v2, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 1005 to 1006 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2df

    .line 2276
    :catch_8ff
    move-exception v0

    .line 2277
    const-string v2, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 1006 to 1007 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e8

    .line 2294
    :catch_91a
    move-exception v0

    .line 2297
    const-string v2, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 1006 to 1007 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_300

    .line 2305
    :catch_935
    move-exception v0

    .line 2306
    const-string v2, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 1007 to 1008 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30a

    .line 2358
    :catch_950
    move-exception v0

    .line 2361
    const-string v2, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from 1007 to 1008 "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_315

    .line 2371
    :catch_95a
    move-exception v0

    .line 2372
    const-string v2, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_320

    .line 2376
    :catch_964
    move-exception v0

    .line 2377
    const-string v2, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_327

    .line 2381
    :catch_96e
    move-exception v0

    .line 2382
    const-string v2, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32e

    .line 2386
    :catch_978
    move-exception v0

    .line 2387
    const-string v2, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_335

    .line 2391
    :catch_982
    move-exception v0

    .line 2392
    const-string v2, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33c

    .line 2396
    :catch_98c
    move-exception v0

    .line 2397
    const-string v2, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_343

    .line 2401
    :catch_996
    move-exception v0

    .line 2402
    const-string v2, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from 1008 to 1009 "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34a

    .line 2413
    :catch_9a0
    move-exception v0

    .line 2416
    const-string v2, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 1009 to 1010 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_355

    .line 2427
    :catch_9bb
    move-exception v0

    .line 2430
    const-string v2, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 1010 to 1011 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_360

    .line 2438
    :catch_9d6
    move-exception v0

    .line 2441
    const-string v2, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 1011 to 1012 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36b

    .line 2456
    :catch_9f1
    move-exception v0

    .line 2457
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - createHistoryAccountTable(db) "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_386

    .line 2464
    :catch_9fb
    move-exception v0

    .line 2465
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - createQuickResponseTable(db) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_389

    .line 2473
    :catch_a16
    move-exception v0

    .line 2474
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - createFollowupFlagsTable(db)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_391

    .line 2482
    :catch_a31
    move-exception v0

    .line 2483
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version -  updatePasswordModeFromGB(db)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto/16 :goto_394

    .line 2489
    :catch_a3e
    move-exception v0

    .line 2490
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - createCertificateCacheTable(db)"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_397

    .line 2497
    :catch_a48
    move-exception v0

    .line 2498
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - createRecipientInformationTable(db)"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39a

    .line 2507
    :catch_a52
    move-exception v0

    .line 2508
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - TRIGGER_MAILBOX_DELETE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a4

    .line 2516
    :catch_a6d
    move-exception v0

    .line 2517
    const-string v0, "EmailProvider"

    const-string v6, "Caught exception upgrading EmailProvider.db to 2000 version -  convertAccountFlagsFromGB(db)"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a7

    .line 2529
    :catch_a77
    move-exception v0

    .line 2530
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - deleting policies"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3ac

    .line 2539
    :catch_a92
    move-exception v0

    .line 2540
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SIGNATURE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b1

    .line 2548
    :catch_aad
    move-exception v0

    .line 2549
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.TEXT_PREVIEW_SIZE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b6

    .line 2557
    :catch_ac8
    move-exception v0

    .line 2558
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.EMAIL_SIZE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3bb

    .line 2568
    :catch_ae3
    move-exception v0

    .line 2569
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - Account.CONFLICT_RESOLUTION "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c5

    .line 2577
    :catch_afe
    move-exception v0

    .line 2578
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SECURITY_FLAGS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3ca

    .line 2586
    :catch_b19
    move-exception v0

    .line 2587
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SECURITY_SYNC_KEY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3cf

    .line 2595
    :catch_b34
    move-exception v0

    .line 2596
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.CALENDAR_SYNC_LOOKBACK"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d4

    .line 2604
    :catch_b3e
    move-exception v0

    .line 2605
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_DAYS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d9

    .line 2613
    :catch_b59
    move-exception v0

    .line 2614
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_START_MINUTE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3de

    .line 2622
    :catch_b74
    move-exception v0

    .line 2623
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_END_MINUTE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e3

    .line 2631
    :catch_b8f
    move-exception v0

    .line 2632
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.PEAK_SCHEDULE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e8

    .line 2640
    :catch_baa
    move-exception v0

    .line 2641
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.OFF_PEAK_SCHEDULE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3ed

    .line 2649
    :catch_bc5
    move-exception v0

    .line 2650
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.ROAMING_SCHEDULE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f2

    .line 2658
    :catch_be0
    move-exception v0

    .line 2659
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OWN_CERTIFICATE_ALIAS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f7

    .line 2667
    :catch_bfb
    move-exception v0

    .line 2668
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OPTIONS_FLAGS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3fc

    .line 2677
    :catch_c16
    move-exception v0

    .line 2678
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OPTIONS_SIGN_ALGORITHM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_401

    .line 2687
    :catch_c31
    move-exception v0

    .line 2688
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.SMIME_OPTIONS_ENCRYPTION_ALGORITHM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_406

    .line 2696
    :catch_c4c
    move-exception v0

    .line 2697
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.CONVERSATION_MODE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40b

    .line 2705
    :catch_c67
    move-exception v0

    .line 2706
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.DEVICE_INFO_SENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_410

    .line 2714
    :catch_c82
    move-exception v0

    .line 2715
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.DEVICE_BLOCK_TYPE"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_415

    .line 2723
    :catch_c8c
    move-exception v0

    .line 2724
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.POLICY_KEY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41a

    .line 2732
    :catch_ca7
    move-exception v0

    .line 2733
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.IRM_TEMPLATE_TIME_STAMP "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41f

    .line 2741
    :catch_cb1
    move-exception v0

    .line 2742
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.CBA_CERTIFICATE_ALIAS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_424

    .line 2750
    :catch_ccc
    move-exception v0

    .line 2751
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.EAS_LOCAL_CHANGE_SETTING "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_429

    .line 2759
    :catch_ce7
    move-exception v0

    .line 2760
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.MESSAGE_FORMAT  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42e

    .line 2768
    :catch_d02
    move-exception v0

    .line 2769
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AccountColumns.ACCOUNT_TYPE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_433

    .line 2778
    :catch_d1d
    move-exception v0

    .line 2779
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - Mailbox.MESSAGE_COUNT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43b

    .line 2787
    :catch_d38
    move-exception v0

    .line 2788
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - Mailbox.PARENT_KEY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_440

    .line 2796
    :catch_d53
    move-exception v0

    .line 2797
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.FLAG_CHANGED "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_445

    .line 2805
    :catch_d5d
    move-exception v0

    .line 2806
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.NEW_DISPLAY_NAME "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44a

    .line 2814
    :catch_d78
    move-exception v0

    .line 2815
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.FLAG_NOSELECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44f

    .line 2823
    :catch_d93
    move-exception v0

    .line 2824
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.LAST_TOUCHED_TIME "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_454

    .line 2832
    :catch_dae
    move-exception v0

    .line 2833
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - MailboxColumns.DST_MAILBOX_ID "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_459

    .line 2889
    :catch_db8
    move-exception v0

    .line 2890
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - Adding new MessageColumns "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54e

    .line 2903
    :catch_dd3
    move-exception v0

    .line 2904
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - Message.ACCOUNT_SCHEMA "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55a

    .line 2917
    :catch_dee
    move-exception v0

    .line 2918
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - Message.MAILBOX_TYPE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_566

    .line 2926
    :catch_e09
    move-exception v0

    .line 2927
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.CONTENT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56b

    .line 2935
    :catch_e24
    move-exception v0

    .line 2936
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.FLAGS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_570

    .line 2944
    :catch_e3f
    move-exception v0

    .line 2945
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.CONTENT_BYTES "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_575

    .line 2959
    :catch_e5a
    move-exception v0

    .line 2960
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught exception upgrading EmailProvider.db to 2000 version - Attachment.ACCOUNT_KEY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57f

    .line 2968
    :catch_e75
    move-exception v0

    .line 2969
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.VOICEMAIL_ATT_ORDER"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_584

    .line 2977
    :catch_e7f
    move-exception v0

    .line 2978
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.VOICEMAIL_ATT_DURATION"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_589

    .line 2986
    :catch_e89
    move-exception v0

    .line 2987
    const-string v6, "EmailProvider"

    const-string v7, "Caught exception upgrading EmailProvider.db to 2000 version - AttachmentColumns.ISINLINE "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_58e

    .line 3000
    :catch_e93
    move-exception v0

    .line 3001
    :try_start_e94
    const-string v5, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9d
    .catch Ljava/lang/Exception; {:try_start_e94 .. :try_end_e9d} :catch_e9f

    goto/16 :goto_59c

    .line 3032
    :catch_e9f
    move-exception v0

    .line 3033
    const-string v2, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldVersion < 2000=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5ba

    .line 3006
    :catch_ebe
    move-exception v0

    .line 3007
    :try_start_ebf
    const-string v5, "EmailProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a8

    .line 3017
    :cond_eca
    const-string v0, "EmailProvider"

    const-string v2, "oldVersion < 2000 create table cb"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3019
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3020
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountCBTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3021
    iget-object v0, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/EmailProvider;->createSevenTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_edf
    .catch Ljava/lang/Exception; {:try_start_ebf .. :try_end_edf} :catch_e9f

    .line 3025
    :try_start_edf
    const-string v0, "insert into account_cb (accountKey, typeMsg) select _id, 0 from account where _id not in (select accountKey from account_cb)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3026
    const-string v0, "insert into mailbox_cb (mailboxKey, typeMsg) select _id, 0 from mailbox where _id not in (select mailboxKey from mailbox_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3027
    const-string v0, "insert into message_cb (messageKey, typeMsg) select _id, 0 from message where _id not in (select messageKey from message_cb) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_eee
    .catch Ljava/lang/Exception; {:try_start_edf .. :try_end_eee} :catch_ef0

    goto/16 :goto_5ba

    .line 3028
    :catch_ef0
    move-exception v0

    .line 3029
    :try_start_ef1
    const-string v2, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldVersion < 2000 e =>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0d
    .catch Ljava/lang/Exception; {:try_start_ef1 .. :try_end_f0d} :catch_e9f

    goto/16 :goto_5ba

    :cond_f0f
    move v1, v3

    .line 3052
    goto/16 :goto_5ce

    .line 3060
    :catch_f12
    move-exception v0

    .line 3063
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5ef

    .line 3069
    :catch_f2d
    move-exception v0

    .line 3072
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f4

    .line 3078
    :catch_f48
    move-exception v0

    .line 3081
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f9

    .line 3087
    :catch_f63
    move-exception v0

    .line 3090
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2000 to 2001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5fe

    .line 3095
    :catch_f7e
    move-exception v0

    .line 3096
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception enabling Sync Email from GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_603

    .line 3106
    :catch_f99
    move-exception v0

    .line 3109
    const-string v1, "EmailProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception upgrading EmailProvider.db from 2001 to 2002 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60e

    .line 3119
    :catch_fb4
    move-exception v0

    .line 3120
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2002 to 2003 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_61b

    .line 3129
    :catch_fbe
    move-exception v0

    .line 3132
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2003 to 2004 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_624

    .line 3144
    :catch_fc8
    move-exception v0

    .line 3145
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2004 to 2005 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_634

    .line 3157
    :catch_fd2
    move-exception v0

    .line 3158
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2004 to 2005 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_642

    .line 3167
    :catch_fdc
    move-exception v0

    .line 3168
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2006 to 2007 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_64d

    .line 3180
    :catch_fe6
    move-exception v0

    .line 3181
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProvider.db from 2007 to 2008 "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_658

    .line 2191
    :catch_ff0
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto/16 :goto_886

    .line 2146
    :catch_ff5
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto/16 :goto_820

    :cond_ffa
    move v0, v2

    goto/16 :goto_5bb

    :cond_ffd
    move v5, v0

    goto/16 :goto_24c

    :cond_1000
    move v9, v2

    move v2, v0

    move v0, v9

    goto/16 :goto_1ed

    :cond_1005
    move v2, v3

    goto/16 :goto_1b8

    :cond_1008
    move v2, v5

    goto/16 :goto_1b8

    :cond_100b
    move v5, v3

    goto/16 :goto_1b2

    :cond_100e
    move v0, p2

    goto/16 :goto_78
.end method
