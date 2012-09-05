.class public Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "SyncwithHBIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/SyncwithHBIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncWithHBIParser"
.end annotation


# instance fields
.field private mBindArguments:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/SyncwithHBIAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/SyncwithHBIAdapter;)V
    .registers 8
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    .line 89
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->mBindArguments:[Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 91
    return-void
.end method

.method private findParserObject(Ljava/lang/String;)Lcom/android/exchange/adapter/AbstractSyncParser;
    .registers 16
    .parameter "serverId2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 103
    const/4 v12, 0x0

    .line 104
    .local v12, target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->serverId:Ljava/lang/String;

    aput-object v1, v0, v13

    .line 105
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? and serverId=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 109
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_2e

    :try_start_19
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 110
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v11

    .line 112
    .local v11, mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-direct {p0, v11}, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->getAdapter(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_59

    move-result-object v12

    .line 116
    .end local v11           #mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_2e
    if-eqz v10, :cond_39

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_39

    .line 117
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_39
    if-eqz v12, :cond_54

    .line 122
    instance-of v0, v12, Lcom/android/exchange/adapter/EmailSyncAdapter;

    if-eqz v0, :cond_66

    .line 123
    new-instance v8, Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v8, v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 124
    .local v8, Esa1:Lcom/android/exchange/adapter/EmailSyncAdapter;
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    new-instance v1, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v8, p0, v8, v13}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/EmailSyncAdapter;Z)V

    iput-object v1, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    .line 141
    .end local v8           #Esa1:Lcom/android/exchange/adapter/EmailSyncAdapter;
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    return-object v0

    .line 116
    :catchall_59
    move-exception v0

    if-eqz v10, :cond_65

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_65

    .line 117
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_65
    throw v0

    .line 126
    :cond_66
    instance-of v0, v12, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    if-eqz v0, :cond_80

    .line 127
    new-instance v7, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v7, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 128
    .local v7, Contact1:Lcom/android/exchange/adapter/ContactsSyncAdapter;
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    new-instance v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v7, p0, v7, v13}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/ContactsSyncAdapter;Z)V

    iput-object v1, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    goto :goto_54

    .line 130
    .end local v7           #Contact1:Lcom/android/exchange/adapter/ContactsSyncAdapter;
    :cond_80
    instance-of v0, v12, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    if-eqz v0, :cond_9a

    .line 131
    new-instance v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v6, v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 132
    .local v6, Calendar1:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    new-instance v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v6, p0, v6, v13}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/CalendarSyncAdapter;Z)V

    iput-object v1, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    goto :goto_54

    .line 134
    .end local v6           #Calendar1:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    :cond_9a
    instance-of v0, v12, Lcom/android/exchange/adapter/TasksSyncAdapter;

    if-eqz v0, :cond_54

    .line 135
    new-instance v9, Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v9, v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 136
    .local v9, Task1:Lcom/android/exchange/adapter/TasksSyncAdapter;
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    new-instance v1, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v9, p0, v9, v13}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/TasksSyncAdapter;Z)V

    iput-object v1, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    goto :goto_54
.end method

.method private getAdapter(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/exchange/adapter/AbstractSyncAdapter;
    .registers 5
    .parameter "mMailbox"

    .prologue
    .line 161
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v2, 0x42

    if-ne v1, v2, :cond_e

    .line 162
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 196
    .local v0, target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :goto_d
    return-object v0

    .line 163
    .end local v0           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_e
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v2, 0x41

    if-ne v1, v2, :cond_1c

    .line 164
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .restart local v0       #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    goto :goto_d

    .line 166
    .end local v0           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_1c
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v2, 0x45

    if-ne v1, v2, :cond_2a

    .line 167
    new-instance v0, Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .restart local v0       #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    goto :goto_d

    .line 171
    .end local v0           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_2a
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_38

    .line 173
    new-instance v0, Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .restart local v0       #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    goto :goto_d

    .line 176
    .end local v0           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_38
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v2, 0x61

    if-ne v1, v2, :cond_46

    .line 177
    new-instance v0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v0, p1, v1}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .restart local v0       #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    goto :goto_d

    .line 193
    .end local v0           #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    :cond_46
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .restart local v0       #target:Lcom/android/exchange/adapter/AbstractSyncAdapter;
    goto :goto_d
.end method


# virtual methods
.method public commandsParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->serverId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->findParserObject(Ljava/lang/String;)Lcom/android/exchange/adapter/AbstractSyncParser;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    .line 97
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    if-eqz v0, :cond_17

    .line 98
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commandsParser()V

    .line 99
    :cond_17
    return-void
.end method

.method public commit()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commit()V

    .line 157
    :cond_d
    return-void
.end method

.method public responsesParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->serverId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->findParserObject(Ljava/lang/String;)Lcom/android/exchange/adapter/AbstractSyncParser;

    move-result-object v1

    iput-object v1, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    .line 148
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    if-eqz v0, :cond_17

    .line 149
    iget-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->this$0:Lcom/android/exchange/adapter/SyncwithHBIAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->responsesParser()V

    .line 150
    :cond_17
    return-void
.end method
