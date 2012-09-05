.class public Lcom/android/email/mail/store/LocalStore$LocalFolder;
.super Lcom/android/emailcommon/mail/Folder;
.source "LocalStore.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalFolder"
.end annotation


# instance fields
.field private final POPULATE_MESSAGE_SELECT_COLUMNS:Ljava/lang/String;

.field private mFolderId:J

.field private final mName:Ljava/lang/String;

.field private mUnreadMessageCount:I

.field private mVisibleLimit:I

.field final synthetic this$0:Lcom/android/email/mail/store/LocalStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "name"

    .prologue
    const/4 v2, -0x1

    .line 587
    iput-object p1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 583
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 584
    iput v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    .line 585
    iput v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    .line 904
    const-string v0, "subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers"

    iput-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->POPULATE_MESSAGE_SELECT_COLUMNS:Ljava/lang/String;

    .line 588
    iput-object p2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    .line 589
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/mail/store/LocalStore$LocalFolder;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    return-void
.end method

.method private buildFlagPredicates(Ljava/lang/StringBuilder;[Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;)V
    .registers 11
    .parameter "sql"
    .parameter "setFlags"
    .parameter "clearFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1080
    if-eqz p2, :cond_56

    .line 1081
    move-object v0, p2

    .local v0, arr$:[Lcom/android/emailcommon/mail/Flag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_56

    aget-object v1, v0, v2

    .line 1082
    .local v1, flag:Lcom/android/emailcommon/mail/Flag;
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_15

    .line 1083
    const-string v4, "store_flag_1 = 1 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1084
    :cond_15
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_1f

    .line 1085
    const-string v4, "store_flag_2 = 1 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1086
    :cond_1f
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_29

    .line 1087
    const-string v4, "flag_downloaded_full = 1 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1088
    :cond_29
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_33

    .line 1089
    const-string v4, "flag_downloaded_partial = 1 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1090
    :cond_33
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_3d

    .line 1091
    const-string v4, "flag_deleted = 1 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 1093
    :cond_3d
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported flag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1097
    .end local v0           #arr$:[Lcom/android/emailcommon/mail/Flag;
    .end local v1           #flag:Lcom/android/emailcommon/mail/Flag;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_56
    if-eqz p3, :cond_ac

    .line 1098
    move-object v0, p3

    .restart local v0       #arr$:[Lcom/android/emailcommon/mail/Flag;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_5b
    if-ge v2, v3, :cond_ac

    aget-object v1, v0, v2

    .line 1099
    .restart local v1       #flag:Lcom/android/emailcommon/mail/Flag;
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_6b

    .line 1100
    const-string v4, "store_flag_1 = 0 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :goto_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 1101
    :cond_6b
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_75

    .line 1102
    const-string v4, "store_flag_2 = 0 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 1103
    :cond_75
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_7f

    .line 1104
    const-string v4, "flag_downloaded_full = 0 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 1105
    :cond_7f
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_89

    .line 1106
    const-string v4, "flag_downloaded_partial = 0 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 1107
    :cond_89
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_93

    .line 1108
    const-string v4, "flag_deleted = 0 AND "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 1110
    :cond_93
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported flag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1114
    .end local v0           #arr$:[Lcom/android/emailcommon/mail/Flag;
    .end local v1           #flag:Lcom/android/emailcommon/mail/Flag;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_ac
    return-void
.end method

.method private deleteAttachments(Ljava/lang/String;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1472
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1475
    :try_start_6
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "folder_id = ? AND uid = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_9e

    move-result-object v9

    .line 1480
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1481
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_88

    move-result-wide v5

    .line 1484
    :try_start_39
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "attachments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "message_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_90

    move-result-object v1

    .line 1489
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1490
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_a0

    move-result-wide v2

    .line 1492
    :try_start_67
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;
    invoke-static {v4}, Lcom/android/email/mail/store/LocalStore;->access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1493
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1494
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_a0
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7f} :catch_80

    goto :goto_5c

    .line 1496
    :catch_80
    move-exception v0

    goto :goto_5c

    .line 1501
    :cond_82
    if-eqz v1, :cond_2e

    .line 1502
    :try_start_84
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_2e

    .line 1507
    :catchall_88
    move-exception v0

    move-object v8, v9

    :goto_8a
    if-eqz v8, :cond_8f

    .line 1508
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8f
    throw v0

    .line 1501
    :catchall_90
    move-exception v0

    move-object v1, v8

    :goto_92
    if-eqz v1, :cond_97

    .line 1502
    :try_start_94
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_97
    throw v0
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_88

    .line 1507
    :cond_98
    if-eqz v9, :cond_9d

    .line 1508
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1511
    :cond_9d
    return-void

    .line 1507
    :catchall_9e
    move-exception v0

    goto :goto_8a

    .line 1501
    :catchall_a0
    move-exception v0

    goto :goto_92
.end method

.method private open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
    .registers 3
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 600
    return-void
.end method

.method private populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V
    .registers 15
    .parameter "message"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 921
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5b

    const-string v7, ""

    :goto_a
    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setSubject(Ljava/lang/String;)V

    .line 922
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 923
    .local v4, from:[Lcom/android/emailcommon/mail/Address;
    array-length v7, v4

    if-lez v7, :cond_1d

    .line 924
    aget-object v7, v4, v9

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFrom(Lcom/android/emailcommon/mail/Address;)V

    .line 926
    :cond_1d
    new-instance v7, Ljava/util/Date;

    const/4 v10, 0x2

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setSentDate(Ljava/util/Date;)V

    .line 927
    const/4 v7, 0x3

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setUid(Ljava/lang/String;)V

    .line 928
    const/4 v7, 0x4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 929
    .local v2, flagList:Ljava/lang/String;
    if-eqz v2, :cond_61

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_61

    .line 930
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 932
    .local v3, flags:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    :try_start_46
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_48
    if-ge v5, v6, :cond_61

    aget-object v1, v0, v5

    .line 933
    .local v1, flag:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/android/emailcommon/mail/Flag;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {p1, v7, v10}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_58} :catch_60

    .line 932
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 921
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #flag:Ljava/lang/String;
    .end local v2           #flagList:Ljava/lang/String;
    .end local v3           #flags:[Ljava/lang/String;
    .end local v4           #from:[Lcom/android/emailcommon/mail/Address;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_5b
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 935
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #flagList:Ljava/lang/String;
    .restart local v3       #flags:[Ljava/lang/String;
    .restart local v4       #from:[Lcom/android/emailcommon/mail/Address;
    :catch_60
    move-exception v7

    .line 938
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #flags:[Ljava/lang/String;
    :cond_61
    const/4 v7, 0x5

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    #setter for: Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J
    invoke-static {p1, v10, v11}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$302(Lcom/android/email/mail/store/LocalStore$LocalMessage;J)J

    .line 939
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    const/4 v10, 0x6

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 940
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    const/4 v10, 0x7

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 941
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    const/16 v10, 0x8

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {p1, v7, v10}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 942
    const/16 v7, 0x9

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->legacyUnpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setReplyTo([Lcom/android/emailcommon/mail/Address;)V

    .line 943
    const/16 v7, 0xa

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    #setter for: Lcom/android/email/mail/store/LocalStore$LocalMessage;->mAttachmentCount:I
    invoke-static {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$502(Lcom/android/email/mail/store/LocalStore$LocalMessage;I)I

    .line 944
    new-instance v7, Ljava/util/Date;

    const/16 v10, 0xb

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setInternalDate(Ljava/util/Date;)V

    .line 945
    const/16 v7, 0xc

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setMessageId(Ljava/lang/String;)V

    .line 946
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    const/16 v7, 0xd

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_110

    move v7, v8

    :goto_cc
    invoke-virtual {p1, v10, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 947
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    const/16 v7, 0xe

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_112

    move v7, v8

    :goto_da
    invoke-virtual {p1, v10, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 948
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    const/16 v7, 0xf

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_114

    move v7, v8

    :goto_e8
    invoke-virtual {p1, v10, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 949
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    const/16 v7, 0x10

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_116

    move v7, v8

    :goto_f6
    invoke-virtual {p1, v10, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 950
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/16 v10, 0x11

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_118

    :goto_103
    invoke-virtual {p1, v7, v8}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 951
    const/16 v7, 0x12

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setExtendedHeaders(Ljava/lang/String;)V

    .line 952
    return-void

    :cond_110
    move v7, v9

    .line 946
    goto :goto_cc

    :cond_112
    move v7, v9

    .line 947
    goto :goto_da

    :cond_114
    move v7, v9

    .line 948
    goto :goto_e8

    :cond_116
    move v7, v9

    .line 949
    goto :goto_f6

    :cond_118
    move v8, v9

    .line 950
    goto :goto_103
.end method

.method private saveAttachment(JLcom/android/emailcommon/mail/Part;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1315
    const-wide/16 v0, -0x1

    .line 1316
    const/4 v5, 0x0

    .line 1317
    const/4 v4, -0x1

    .line 1318
    const/4 v3, 0x0

    .line 1320
    if-nez p4, :cond_172

    instance-of v2, p3, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    if-eqz v2, :cond_172

    move-object v0, p3

    .line 1321
    check-cast v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    invoke-virtual {v0}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->getAttachmentId()J

    move-result-wide v0

    move-wide v1, v0

    .line 1324
    :goto_13
    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v0

    if-eqz v0, :cond_16e

    .line 1325
    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v0

    .line 1326
    instance-of v6, v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    if-eqz v6, :cond_fe

    .line 1327
    check-cast v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    invoke-virtual {v0}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    move v0, v4

    move-object v4, v3

    .line 1343
    :goto_2a
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3f

    .line 1348
    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v3

    .line 1349
    if-eqz v3, :cond_3f

    .line 1350
    const-string v6, "size"

    invoke-static {v3, v6}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1351
    if-eqz v3, :cond_3f

    .line 1352
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1356
    :cond_3f
    const/4 v3, -0x1

    if-ne v0, v3, :cond_43

    .line 1357
    const/4 v0, 0x0

    .line 1360
    :cond_43
    const-string v3, "X-Android-Attachment-StoreData"

    invoke-interface {p3, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x2c

    invoke-static {v3, v6}, Lcom/android/emailcommon/utility/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v3

    .line 1363
    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-static {v6, v7}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1364
    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v7

    .line 1366
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-nez v8, :cond_129

    .line 1367
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1368
    const-string v1, "message_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1369
    const-string v8, "content_uri"

    if-eqz v5, :cond_126

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_79
    invoke-virtual {v2, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v1, "store_data"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const-string v1, "size"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1372
    const-string v0, "name"

    invoke-virtual {v2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const-string v0, "mime_type"

    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v0, "content_id"

    invoke-virtual {v2, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "attachments"

    const-string v3, "message_id"

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1388
    :goto_ab
    if-eqz v4, :cond_f4

    .line 1389
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;
    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1395
    new-instance v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$400(Lcom/android/email/mail/store/LocalStore;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    invoke-interface {p3, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 1396
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1397
    const-string v4, "content_uri"

    if-eqz v5, :cond_16b

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_da
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "attachments"

    const-string v5, "id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1403
    :cond_f4
    instance-of v0, p3, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    if-eqz v0, :cond_fd

    .line 1404
    check-cast p3, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    invoke-virtual {p3, v1, v2}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->setAttachmentId(J)V

    .line 1406
    :cond_fd
    return-void

    .line 1334
    :cond_fe
    invoke-interface {p3}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1335
    const-string v0, "att"

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mAttachmentsDir:Ljava/io/File;
    invoke-static {v6}, Lcom/android/email/mail/store/LocalStore;->access$600(Lcom/android/email/mail/store/LocalStore;)Ljava/io/File;

    move-result-object v6

    invoke-static {v0, v3, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1336
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1337
    invoke-static {v4, v6}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v3

    .line 1338
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1339
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    move-object v4, v0

    move v0, v3

    goto/16 :goto_2a

    .line 1369
    :cond_126
    const/4 v1, 0x0

    goto/16 :goto_79

    .line 1378
    :cond_129
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1379
    const-string v8, "content_uri"

    if-eqz v5, :cond_169

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_136
    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const-string v3, "size"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1381
    const-string v0, "content_id"

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v0, "message_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1383
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "attachments"

    const-string v7, "id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_ab

    .line 1379
    :cond_169
    const/4 v3, 0x0

    goto :goto_136

    .line 1397
    :cond_16b
    const/4 v0, 0x0

    goto/16 :goto_da

    :cond_16e
    move v0, v4

    move-object v4, v3

    goto/16 :goto_2a

    :cond_172
    move-wide v1, v0

    goto/16 :goto_13
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .registers 3
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/android/emailcommon/mail/Message;Z)V

    .line 1135
    return-void
.end method

.method public appendMessages([Lcom/android/emailcommon/mail/Message;Z)V
    .registers 29
    .parameter "messages"
    .parameter "copy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1145
    sget-object v20, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1146
    move-object/from16 v3, p1

    .local v3, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v10, v3

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .local v9, i$:I
    :goto_e
    if-ge v9, v10, :cond_2ed

    aget-object v11, v3, v9

    .line 1147
    .local v11, message:Lcom/android/emailcommon/mail/Message;
    instance-of v0, v11, Lcom/android/emailcommon/internet/MimeMessage;

    move/from16 v20, v0

    if-nez v20, :cond_20

    .line 1148
    new-instance v20, Ljava/lang/Error;

    const-string v21, "LocalStore can only store Messages that extend MimeMessage"

    invoke-direct/range {v20 .. v21}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1151
    :cond_20
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v17

    .line 1152
    .local v17, uid:Ljava/lang/String;
    if-nez v17, :cond_92

    .line 1153
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Local"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1166
    :goto_46
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .local v19, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    .local v5, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, v19

    invoke-static {v11, v0, v5}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1170
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 1171
    .local v14, sbHtml:Ljava/lang/StringBuffer;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 1172
    .local v15, sbText:Ljava/lang/StringBuffer;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :goto_63
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/emailcommon/mail/Part;

    .line 1174
    .local v18, viewable:Lcom/android/emailcommon/mail/Part;
    :try_start_6f
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v16

    .line 1179
    .local v16, text:Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "text/html"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_cc

    .line 1180
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_84} :catch_85

    goto :goto_63

    .line 1184
    .end local v16           #text:Ljava/lang/String;
    :catch_85
    move-exception v7

    .line 1185
    .local v7, e:Ljava/lang/Exception;
    new-instance v20, Lcom/android/emailcommon/mail/MessagingException;

    const-string v21, "Unable to get text for message part"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 1159
    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v14           #sbHtml:Ljava/lang/StringBuffer;
    .end local v15           #sbText:Ljava/lang/StringBuffer;
    .end local v18           #viewable:Lcom/android/emailcommon/mail/Part;
    .end local v19           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .restart local v9       #i$:I
    :cond_92
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v20, v0

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "DELETE FROM messages WHERE folder_id = ? AND uid = ?"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_46

    .line 1182
    .end local v9           #i$:I
    .restart local v5       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v14       #sbHtml:Ljava/lang/StringBuffer;
    .restart local v15       #sbText:Ljava/lang/StringBuffer;
    .restart local v16       #text:Ljava/lang/String;
    .restart local v18       #viewable:Lcom/android/emailcommon/mail/Part;
    .restart local v19       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_cc
    :try_start_cc
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_85

    goto :goto_63

    .line 1190
    .end local v16           #text:Ljava/lang/String;
    .end local v18           #viewable:Lcom/android/emailcommon/mail/Part;
    :cond_d0
    :try_start_d0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1191
    .local v6, cv:Landroid/content/ContentValues;
    const-string v20, "uid"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v20, "subject"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v20, "sender_list"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string v22, "date"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v20

    if-nez v20, :cond_2cc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    :goto_10c
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1196
    const-string v20, "flags"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/email/mail/store/LocalStore;->makeFlagsString(Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string v20, "folder_id"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1198
    const-string v20, "to_list"

    sget-object v21, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v20, "cc_list"

    sget-object v21, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v20, "bcc_list"

    sget-object v21, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v21, "html_content"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    if-lez v20, :cond_2d6

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    :goto_18a
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v21, "text_content"

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    if-lez v20, :cond_2da

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    :goto_19d
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v20, "reply_to_list"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getReplyTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v20, "attachment_count"

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    const-string v22, "internal_date"

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v20

    if-nez v20, :cond_2de

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    :goto_1d2
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1208
    const-string v21, "message_id"

    move-object v0, v11

    check-cast v0, Lcom/android/emailcommon/internet/MimeMessage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v20, "store_flag_1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1210
    const-string v20, "store_flag_2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1211
    const-string v20, "flag_downloaded_full"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1212
    const-string v20, "flag_downloaded_partial"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1214
    const-string v20, "flag_deleted"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1215
    const-string v20, "x_headers"

    check-cast v11, Lcom/android/emailcommon/internet/MimeMessage;

    .end local v11           #message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v11}, Lcom/android/emailcommon/internet/MimeMessage;->getExtendedHeaders()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v20, v0

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v20

    const-string v21, "messages"

    const-string v22, "uid"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 1217
    .local v12, messageId:J
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2ab
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2e8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    .line 1218
    .local v4, attachment:Lcom/android/emailcommon/mail/Part;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v12, v13, v4, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->saveAttachment(JLcom/android/emailcommon/mail/Part;Z)V
    :try_end_2be
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_2be} :catch_2bf

    goto :goto_2ab

    .line 1220
    .end local v4           #attachment:Lcom/android/emailcommon/mail/Part;
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v12           #messageId:J
    :catch_2bf
    move-exception v7

    .line 1221
    .restart local v7       #e:Ljava/lang/Exception;
    new-instance v20, Lcom/android/emailcommon/mail/MessagingException;

    const-string v21, "Error appending message"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 1194
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #cv:Landroid/content/ContentValues;
    .restart local v11       #message:Lcom/android/emailcommon/mail/Message;
    :cond_2cc
    :try_start_2cc
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    goto/16 :goto_10c

    .line 1201
    :cond_2d6
    const/16 v20, 0x0

    goto/16 :goto_18a

    .line 1202
    :cond_2da
    const/16 v20, 0x0

    goto/16 :goto_19d

    .line 1205
    :cond_2de
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_2e5} :catch_2bf

    move-result-wide v20

    goto/16 :goto_1d2

    .line 1146
    .end local v11           #message:Lcom/android/emailcommon/mail/Message;
    .restart local v12       #messageId:J
    :cond_2e8
    add-int/lit8 v8, v9, 0x1

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto/16 :goto_e

    .line 1224
    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v12           #messageId:J
    .end local v14           #sbHtml:Ljava/lang/StringBuffer;
    .end local v15           #sbText:Ljava/lang/StringBuffer;
    .end local v17           #uid:Ljava/lang/String;
    .end local v19           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_2ed
    return-void
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 653
    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .registers 4
    .parameter "expunge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 669
    if-eqz p1, :cond_5

    .line 670
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 672
    :cond_5
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 673
    return-void
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .registers 6
    .parameter "msgs"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1119
    instance-of v0, p2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    if-nez v0, :cond_c

    .line 1120
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "copyMessages called with incorrect Folder"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_c
    check-cast p2, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    .end local p2
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/android/emailcommon/mail/Message;Z)V

    .line 1123
    return-void
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .registers 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 658
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 659
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_28
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT INTO folders (name, visible_limit) VALUES (?, ?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mVisibleLimitDefault:I
    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$200(Lcom/android/email/mail/store/LocalStore;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    return v5
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .registers 4
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1595
    new-instance v0, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    return-object v0
.end method

.method public delete(Z)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1447
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1448
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 1449
    array-length v3, v2

    move v0, v1

    :goto_e
    if-ge v0, v3, :cond_1c

    aget-object v4, v2, v0

    .line 1450
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->deleteAttachments(Ljava/lang/String;)V

    .line 1449
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1452
    :cond_1c
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "DELETE FROM folders WHERE id = ?"

    new-array v3, v6, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1455
    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 1460
    instance-of v0, p1, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    if-eqz v0, :cond_f

    .line 1461
    check-cast p1, Lcom/android/email/mail/store/LocalStore$LocalFolder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1463
    :goto_e
    return v0

    .restart local p1
    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public exists()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-virtual {v0}, Lcom/android/email/mail/store/LocalStore;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1434
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1441
    .local v0, expungedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/emailcommon/mail/Message;

    return-object v1
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .registers 33
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 790
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 791
    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bd

    .line 792
    :cond_1b
    move-object/from16 v10, p1

    .local v10, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v0, v10

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_22
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1bd

    aget-object v22, v10, v17

    .local v22, message:Lcom/android/emailcommon/mail/Message;
    move-object/from16 v21, v22

    .line 793
    check-cast v21, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    .line 794
    .local v21, localMessage:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    const/4 v15, 0x0

    .line 795
    .local v15, cursor:Landroid/database/Cursor;
    const-string v2, "Content-Type"

    const-string v3, "multipart/mixed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    new-instance v23, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v23 .. v23}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 797
    .local v23, mp:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v2, "mixed"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 798
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 803
    sget-object v2, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 805
    :try_start_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT html_content, text_content FROM messages WHERE id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    #getter for: Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J
    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 810
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 811
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 812
    .local v16, htmlContent:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 814
    .local v27, textContent:Ljava/lang/String;
    if-eqz v16, :cond_93

    .line 815
    new-instance v11, Lcom/android/emailcommon/internet/TextBody;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lcom/android/emailcommon/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 816
    .local v11, body:Lcom/android/emailcommon/internet/TextBody;
    new-instance v12, Lcom/android/emailcommon/internet/MimeBodyPart;

    const-string v2, "text/html"

    invoke-direct {v12, v11, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 817
    .local v12, bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 820
    .end local v11           #body:Lcom/android/emailcommon/internet/TextBody;
    .end local v12           #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_93
    if-eqz v27, :cond_a8

    .line 821
    new-instance v11, Lcom/android/emailcommon/internet/TextBody;

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Lcom/android/emailcommon/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 822
    .restart local v11       #body:Lcom/android/emailcommon/internet/TextBody;
    new-instance v12, Lcom/android/emailcommon/internet/MimeBodyPart;

    const-string v2, "text/plain"

    invoke-direct {v12, v11, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 823
    .restart local v12       #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V
    :try_end_a8
    .catchall {:try_start_55 .. :try_end_a8} :catchall_189

    .line 826
    .end local v11           #body:Lcom/android/emailcommon/internet/TextBody;
    .end local v12           #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_a8
    if-eqz v15, :cond_ad

    .line 827
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 843
    .end local v16           #htmlContent:Ljava/lang/String;
    .end local v27           #textContent:Ljava/lang/String;
    :cond_ad
    :goto_ad
    :try_start_ad
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "attachments"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "size"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "mime_type"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "store_data"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "content_uri"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "content_id"

    aput-object v6, v4, v5

    const-string v5, "message_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    #getter for: Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J
    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 850
    :goto_f4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1b4

    .line 851
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 852
    .local v18, id:J
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 853
    .local v25, size:I
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 854
    .local v24, name:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 855
    .local v28, type:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 856
    .local v26, storeData:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 857
    .local v14, contentUri:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 858
    .local v13, contentId:Ljava/lang/String;
    const/4 v11, 0x0

    .line 859
    .local v11, body:Lcom/android/emailcommon/mail/Body;
    if-eqz v14, :cond_131

    .line 860
    new-instance v11, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;

    .end local v11           #body:Lcom/android/emailcommon/mail/Body;
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$400(Lcom/android/email/mail/store/LocalStore;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v11, v2, v3}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBody;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    .line 862
    .restart local v11       #body:Lcom/android/emailcommon/mail/Body;
    :cond_131
    new-instance v12, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-wide/from16 v0, v18

    invoke-direct {v12, v2, v11, v0, v1}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;-><init>(Lcom/android/email/mail/store/LocalStore;Lcom/android/emailcommon/mail/Body;J)V

    .line 863
    .restart local v12       #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    const-string v2, "Content-Type"

    const-string v3, "%s;\n name=\"%s\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v28, v4, v5

    const/4 v5, 0x1

    aput-object v24, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "base64"

    invoke-virtual {v12, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v2, "Content-Disposition"

    const-string v3, "attachment;\n filename=\"%s\";\n size=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v24, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v2, "Content-ID"

    invoke-virtual {v12, v2, v13}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v2, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v26

    invoke-virtual {v12, v2, v0}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V
    :try_end_180
    .catchall {:try_start_ad .. :try_end_180} :catchall_182

    goto/16 :goto_f4

    .line 880
    .end local v11           #body:Lcom/android/emailcommon/mail/Body;
    .end local v12           #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    .end local v13           #contentId:Ljava/lang/String;
    .end local v14           #contentUri:Ljava/lang/String;
    .end local v18           #id:J
    .end local v24           #name:Ljava/lang/String;
    .end local v25           #size:I
    .end local v26           #storeData:Ljava/lang/String;
    .end local v28           #type:Ljava/lang/String;
    :catchall_182
    move-exception v2

    if-eqz v15, :cond_188

    .line 881
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_188
    throw v2

    .line 826
    :catchall_189
    move-exception v2

    if-eqz v15, :cond_18f

    .line 827
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_18f
    throw v2

    .line 831
    :cond_190
    new-instance v12, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v12}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 832
    .restart local v12       #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    const-string v2, "Content-Type"

    const-string v3, "text/html;\n charset=\"UTF-8\""

    invoke-virtual {v12, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 836
    new-instance v12, Lcom/android/emailcommon/internet/MimeBodyPart;

    .end local v12           #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    invoke-direct {v12}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 837
    .restart local v12       #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    const-string v2, "Content-Type"

    const-string v3, "text/plain;\n charset=\"UTF-8\""

    invoke-virtual {v12, v2, v3}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    goto/16 :goto_ad

    .line 880
    .end local v12           #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_1b4
    if-eqz v15, :cond_1b9

    .line 881
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 792
    :cond_1b9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_22

    .line 886
    .end local v10           #arr$:[Lcom/android/emailcommon/mail/Message;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v21           #localMessage:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    .end local v22           #message:Lcom/android/emailcommon/mail/Message;
    .end local v23           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_1bd
    return-void
.end method

.method public fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .registers 7
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .parameter "retrieveSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 895
    const-string v0, "Email"

    const-string v1, "fetchWithRetrieveSize function in LocalStore : Do nothing."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    return-void
.end method

.method public getDelimiter()I
    .registers 2

    .prologue
    .line 1613
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 592
    iget-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    return-wide v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .registers 10
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 973
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 974
    new-instance v1, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    invoke-direct {v1, v2, p1, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 975
    .local v1, message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    const/4 v0, 0x0

    .line 977
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_d
    iget-object v2, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v2}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers FROM messages WHERE uid = ? AND folder_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 981
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_42

    move-result v2

    if-nez v2, :cond_39

    .line 982
    const/4 v1, 0x0

    .line 986
    .end local v1           #message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    if-eqz v0, :cond_38

    .line 987
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 990
    :cond_38
    :goto_38
    return-object v1

    .line 984
    .restart local v1       #message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    :cond_39
    :try_start_39
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    .line 986
    if-eqz v0, :cond_38

    .line 987
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 986
    :catchall_42
    move-exception v2

    if-eqz v0, :cond_48

    .line 987
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v2
.end method

.method public getMessageCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 677
    invoke-virtual {p0, v0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessageCount([Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;)I

    move-result v0

    return v0
.end method

.method public getMessageCount([Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;)I
    .registers 12
    .parameter "setFlags"
    .parameter "clearFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT COUNT(*) FROM messages WHERE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    .local v2, sql:Ljava/lang/StringBuilder;
    invoke-direct {p0, v2, p1, p2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->buildFlagPredicates(Ljava/lang/StringBuilder;[Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;)V

    .line 694
    const-string v3, "messages.folder_id = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 697
    const/4 v0, 0x0

    .line 699
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_15
    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 702
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 703
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_3d

    move-result v1

    .line 706
    .local v1, messageCount:I
    if-eqz v0, :cond_3c

    .line 707
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3c
    return v1

    .line 706
    .end local v1           #messageCount:I
    :catchall_3d
    move-exception v3

    if-eqz v0, :cond_43

    .line 707
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v3
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 6
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 966
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 967
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "LocalStore.getMessages(int, int, MessageRetrievalListener) not yet implemented"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 5
    .parameter "start"
    .parameter "searchText"
    .parameter "listener"

    .prologue
    .line 958
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 12
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 995
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v3}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 996
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 997
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    const/4 v0, 0x0

    .line 999
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_c
    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v3}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers FROM messages WHERE folder_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1004
    :goto_24
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1005
    new-instance v1, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1006
    .local v1, message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V

    .line 1007
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_39

    goto :goto_24

    .line 1010
    .end local v1           #message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    :catchall_39
    move-exception v3

    if-eqz v0, :cond_3f

    .line 1011
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v3

    .line 1010
    :cond_40
    if-eqz v0, :cond_45

    .line 1011
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1015
    :cond_45
    new-array v3, v9, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    return-object v3
.end method

.method public getMessages([Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 15
    .parameter "setFlags"
    .parameter "clearFlags"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 1047
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT subject, sender_list, date, uid, flags, id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, message_id, store_flag_1, store_flag_2, flag_downloaded_full, flag_downloaded_partial, flag_deleted, x_headers FROM messages WHERE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v3, sql:Ljava/lang/StringBuilder;
    invoke-direct {p0, v3, p1, p2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->buildFlagPredicates(Ljava/lang/StringBuilder;[Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;)V

    .line 1050
    const-string v4, "folder_id = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1053
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    const/4 v0, 0x0

    .line 1057
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_1b
    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v4}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1061
    :goto_35
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1062
    new-instance v1, Lcom/android/email/mail/store/LocalStore$LocalMessage;

    iget-object v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, p0}, Lcom/android/email/mail/store/LocalStore$LocalMessage;-><init>(Lcom/android/email/mail/store/LocalStore;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1063
    .local v1, message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->populateMessageFromGetMessageCursor(Lcom/android/email/mail/store/LocalStore$LocalMessage;Landroid/database/Cursor;)V

    .line 1064
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_4a

    goto :goto_35

    .line 1067
    .end local v1           #message:Lcom/android/email/mail/store/LocalStore$LocalMessage;
    :catchall_4a
    move-exception v4

    if-eqz v0, :cond_50

    .line 1068
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v4

    .line 1067
    :cond_51
    if-eqz v0, :cond_56

    .line 1068
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1072
    :cond_56
    new-array v4, v10, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    return-object v4
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 9
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1021
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1022
    if-nez p1, :cond_c

    .line 1023
    invoke-virtual {p0, p2}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    .line 1029
    :goto_b
    return-object v5

    .line 1025
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_14
    if-ge v1, v2, :cond_22

    aget-object v4, v0, v1

    .line 1027
    .local v4, uid:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1029
    .end local v4           #uid:Ljava/lang/String;
    :cond_22
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/emailcommon/mail/Message;

    goto :goto_b
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 637
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1468
    invoke-static {}, Lcom/android/email/mail/store/LocalStore;->access$700()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentCallbacks()Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1518
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1519
    return-object p0
.end method

.method public getPersistentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    iget-wide v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    #calls: Lcom/android/email/mail/store/LocalStore;->getPersistentString(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/email/mail/store/LocalStore;->access$800(Lcom/android/email/mail/store/LocalStore;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelect()Z
    .registers 2

    .prologue
    .line 1600
    const/4 v0, 0x0

    return v0
.end method

.method public getUnreadMessageCount()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_e

    .line 717
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 738
    :cond_b
    :goto_b
    iget v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    return v1

    .line 721
    :cond_e
    const/4 v0, 0x0

    .line 723
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_f
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT unread_count FROM folders WHERE folders.name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 728
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_38

    .line 729
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Nonexistent folder"

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_31

    .line 733
    :catchall_31
    move-exception v1

    if-eqz v0, :cond_37

    .line 734
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v1

    .line 731
    :cond_38
    const/4 v1, 0x0

    :try_start_39
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_31

    .line 733
    if-eqz v0, :cond_b

    .line 734
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b
.end method

.method public getVisibleLimit()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v1

    if-nez v1, :cond_e

    .line 752
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 773
    :cond_b
    :goto_b
    iget v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    return v1

    .line 756
    :cond_e
    const/4 v0, 0x0

    .line 758
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_f
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT visible_limit FROM folders WHERE folders.name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 763
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_38

    .line 764
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Nonexistent folder"

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_31

    .line 768
    :catchall_31
    move-exception v1

    if-eqz v0, :cond_37

    .line 769
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v1

    .line 766
    :cond_38
    const/4 v1, 0x0

    :try_start_39
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_31

    .line 768
    if-eqz v0, :cond_b

    .line 769
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b
.end method

.method public isOpen()Z
    .registers 5

    .prologue
    .line 632
    iget-wide v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    .registers 9
    .parameter "mode"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 628
    :cond_6
    :goto_6
    return-void

    .line 608
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    .line 609
    sget-object v1, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 611
    :cond_12
    const/4 v0, 0x0

    .line 613
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_13
    iget-object v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT id, unread_count, visible_limit FROM folders where folders.name = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 617
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 618
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const-string v2, "Nonexistent folder"

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_35

    .line 624
    :catchall_35
    move-exception v1

    if-eqz v0, :cond_3b

    .line 625
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3b
    throw v1

    .line 620
    :cond_3c
    const/4 v1, 0x0

    :try_start_3d
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    .line 621
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    .line 622
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_35

    .line 624
    if-eqz v0, :cond_6

    .line 625
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method public rename(Ljava/lang/String;)Z
    .registers 3
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1618
    const/4 v0, 0x0

    return v0
.end method

.method public setDelimiter(I)V
    .registers 2
    .parameter "ch"

    .prologue
    .line 1609
    return-void
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .registers 9
    .parameter "messages"
    .parameter "flags"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1426
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v4}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1427
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 1428
    .local v3, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v3, p2, p3}, Lcom/android/emailcommon/mail/Message;->setFlags([Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1427
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1430
    .end local v3           #message:Lcom/android/emailcommon/mail/Message;
    :cond_12
    return-void
.end method

.method public setSelect(Z)V
    .registers 2
    .parameter "select"

    .prologue
    .line 1605
    return-void
.end method

.method public setUnreadMessageCount(I)V
    .registers 8
    .parameter "unreadMessageCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 742
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 743
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    .line 744
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET unread_count = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mUnreadMessageCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    return-void
.end method

.method public setVisibleLimit(I)V
    .registers 8
    .parameter "visibleLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 777
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 778
    iput p1, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    .line 779
    iget-object v0, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE folders SET visible_limit = ? WHERE id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mVisibleLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    return-void
.end method

.method public updateMessage(Lcom/android/email/mail/store/LocalStore$LocalMessage;)V
    .registers 21
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1238
    sget-object v12, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 1239
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v11, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .local v3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v11, v3}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1243
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1244
    .local v7, sbHtml:Ljava/lang/StringBuffer;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1245
    .local v8, sbText:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, count:I
    :goto_25
    if-ge v6, v4, :cond_50

    .line 1246
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/mail/Part;

    .line 1248
    .local v10, viewable:Lcom/android/emailcommon/mail/Part;
    :try_start_2d
    invoke-static {v10}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 1253
    .local v9, text:Ljava/lang/String;
    invoke-interface {v10}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "text/html"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_43

    .line 1254
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1245
    :goto_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 1256
    :cond_43
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_46} :catch_47

    goto :goto_40

    .line 1258
    .end local v9           #text:Ljava/lang/String;
    :catch_47
    move-exception v5

    .line 1259
    .local v5, e:Ljava/lang/Exception;
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    const-string v13, "Unable to get text for message part"

    invoke-direct {v12, v13, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 1264
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #viewable:Lcom/android/emailcommon/mail/Part;
    :cond_50
    :try_start_50
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    #getter for: Lcom/android/email/mail/store/LocalStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v12}, Lcom/android/email/mail/store/LocalStore;->access$100(Lcom/android/email/mail/store/LocalStore;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v15, "UPDATE messages SET uid = ?, subject = ?, sender_list = ?, date = ?, flags = ?, folder_id = ?, to_list = ?, cc_list = ?, bcc_list = ?, html_content = ?, text_content = ?, reply_to_list = ?, attachment_count = ?, message_id = ?, store_flag_1 = ?, store_flag_2 = ?, flag_downloaded_full = ?, flag_downloaded_partial = ?, flag_deleted = ?, x_headers = ? WHERE id = ?"

    const/16 v12, 0x15

    new-array v0, v12, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/4 v12, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getSubject()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/4 v12, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v17, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v12

    if-nez v12, :cond_1ae

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    :goto_85
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v16, v17

    const/4 v12, 0x4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/LocalStore;->makeFlagsString(Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/4 v12, 0x5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->mFolderId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v16, v12

    const/4 v12, 0x6

    sget-object v13, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/4 v12, 0x7

    sget-object v13, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x8

    sget-object v13, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v13, 0x9

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_1b8

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_df
    aput-object v12, v16, v13

    const/16 v13, 0xa

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_1bb

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_ed
    aput-object v12, v16, v13

    const/16 v12, 0xb

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getReplyTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->legacyPack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0xc

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0xd

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getMessageId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0xe

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v17, Lcom/android/emailcommon/mail/Flag;->X_STORE_1:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0xf

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v17, Lcom/android/emailcommon/mail/Flag;->X_STORE_2:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v17, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v17, Lcom/android/emailcommon/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/store/LocalStore$LocalFolder;->this$0:Lcom/android/email/mail/store/LocalStore;

    sget-object v17, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/LocalStore;->makeFlagNumeric(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Flag;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x13

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getExtendedHeaders()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v16, v12

    const/16 v12, 0x14

    #getter for: Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J
    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v16, v12

    invoke-virtual/range {v14 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1296
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_199
    if-ge v6, v4, :cond_1c7

    .line 1297
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/Part;

    .line 1298
    .local v2, attachment:Lcom/android/emailcommon/mail/Part;
    #getter for: Lcom/android/email/mail/store/LocalStore$LocalMessage;->mId:J
    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->access$300(Lcom/android/email/mail/store/LocalStore$LocalMessage;)J

    move-result-wide v12

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v2, v14}, Lcom/android/email/mail/store/LocalStore$LocalFolder;->saveAttachment(JLcom/android/emailcommon/mail/Part;Z)V

    .line 1296
    add-int/lit8 v6, v6, 0x1

    goto :goto_199

    .line 1264
    .end local v2           #attachment:Lcom/android/emailcommon/mail/Part;
    :cond_1ae
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/LocalStore$LocalMessage;->getSentDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_1b5} :catch_1be

    move-result-wide v12

    goto/16 :goto_85

    :cond_1b8
    const/4 v12, 0x0

    goto/16 :goto_df

    :cond_1bb
    const/4 v12, 0x0

    goto/16 :goto_ed

    .line 1300
    :catch_1be
    move-exception v5

    .line 1301
    .restart local v5       #e:Ljava/lang/Exception;
    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    const-string v13, "Error appending message"

    invoke-direct {v12, v13, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 1303
    .end local v5           #e:Ljava/lang/Exception;
    :cond_1c7
    return-void
.end method
