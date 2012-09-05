.class public Lcom/android/exchange/adapter/FolderSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderSyncParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    }
.end annotation


# static fields
.field private static final MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

.field private static final UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

.field public static final VALID_EAS_FOLDER_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountId:J

.field private mAccountIdAsString:Ljava/lang/String;

.field private mBindArguments:[Ljava/lang/String;

.field private mFixupUninitializedNeeded:Z

.field private mInitialSync:Z

.field private mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mParentFixupsNeeded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSyncOptionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 100
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->VALID_EAS_FOLDER_TYPES:Ljava/util/List;

    .line 120
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "serverId"

    aput-object v1, v0, v3

    const-string v1, "parentServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    .line 313
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "serverId"

    aput-object v1, v0, v6

    const-string v1, "syncInterval"

    aput-object v1, v0, v3

    const-string v1, "syncLookback"

    aput-object v1, v0, v4

    const-string v1, "offpeakSyncSchedule"

    aput-object v1, v0, v5

    const-string v1, "peakSyncSchedule"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 7
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    .line 139
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    const-string v1, "parentKey"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    .line 144
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 145
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 146
    return-void
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/exchange/adapter/FolderSyncParser;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/exchange/adapter/FolderSyncParser;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    return-object v0
.end method

.method private commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .local p2, userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .local p3, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 683
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 684
    .local v2, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {p0, v2, p3}, Lcom/android/exchange/adapter/FolderSyncParser;->isValidMailFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashMap;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 685
    iput v3, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 686
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 688
    :cond_1e
    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rejecting unknown type mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_6

    .line 693
    .end local v2           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_3b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 694
    .restart local v2       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Adding mailbox: "

    aput-object v6, v5, v4

    iget-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 695
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 700
    .end local v2           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_6f
    const-string v5, "Applying "

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, " mailbox operations."

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 706
    :try_start_7c
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "com.android.email.provider"

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_85} :catch_86
    .catch Landroid/content/OperationApplicationException; {:try_start_7c .. :try_end_85} :catch_92

    .line 713
    :goto_85
    return v3

    .line 708
    :catch_86
    move-exception v0

    .line 709
    .local v0, e:Landroid/os/RemoteException;
    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "RemoteException in commitMailboxes"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    move v3, v4

    .line 710
    goto :goto_85

    .line 711
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_92
    move-exception v0

    .line 712
    .local v0, e:Landroid/content/OperationApplicationException;
    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "OperationApplicationException in commitMailboxes"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    move v3, v4

    .line 713
    goto :goto_85
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "serverId"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 251
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 252
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParser()Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x60

    const/4 v13, 0x3

    const/4 v8, 0x0

    const/4 v12, -0x1

    const/4 v9, 0x1

    .line 384
    const/4 v2, 0x0

    .line 385
    .local v2, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 386
    .local v6, serverId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 387
    .local v5, parentId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 389
    .local v7, type:I
    :goto_a
    const/16 v10, 0x1cf

    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v10

    if-eq v10, v13, :cond_2f

    .line 390
    iget v10, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v10, :pswitch_data_1b4

    .line 408
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_a

    .line 392
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 393
    goto :goto_a

    .line 396
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v7

    .line 397
    goto :goto_a

    .line 400
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 401
    goto :goto_a

    .line 404
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 405
    goto :goto_a

    .line 412
    :cond_2f
    sget-object v10, Lcom/android/exchange/adapter/FolderSyncParser;->VALID_EAS_FOLDER_TYPES:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b0

    .line 413
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 414
    .local v1, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 415
    iput-object v6, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 416
    iget-wide v10, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iput-wide v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 417
    iput v9, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 422
    iput v12, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 424
    iput v12, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    .line 425
    iput v12, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    .line 427
    packed-switch v7, :pswitch_data_1c0

    .line 547
    :pswitch_53
    iput v14, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 553
    :cond_55
    :goto_55
    iget v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v11, 0x40

    if-ge v10, v11, :cond_5c

    move v8, v9

    :cond_5c
    iput-boolean v8, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 555
    if-eqz v5, :cond_75

    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_75

    .line 558
    iput-object v5, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 559
    iput-boolean v9, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    .line 560
    iget-boolean v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-nez v8, :cond_75

    .line 561
    iget-object v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v1           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_75
    :goto_75
    return-object v1

    .line 429
    .restart local v1       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :pswitch_76
    iput v9, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto :goto_55

    .line 432
    :pswitch_79
    iput v8, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 433
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 435
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v10

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    .line 436
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v10

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    goto :goto_55

    .line 441
    :pswitch_9a
    const/16 v10, 0x42

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 442
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 444
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v10

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    .line 445
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v10

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    goto :goto_55

    .line 455
    :pswitch_bd
    const/4 v10, 0x4

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 458
    :try_start_c0
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v10, :cond_55

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x4028333333333333L

    cmpl-double v10, v10, v12

    if-lez v10, :cond_55

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_55

    .line 461
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 464
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v10

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    .line 466
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v10

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I
    :try_end_fb
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_fb} :catch_fd
    .catch Ljava/lang/NullPointerException; {:try_start_c0 .. :try_end_fb} :catch_103

    goto/16 :goto_55

    .line 470
    :catch_fd
    move-exception v3

    .line 471
    .local v3, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_55

    .line 472
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :catch_103
    move-exception v4

    .line 473
    .local v4, npe:Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_55

    .line 478
    .end local v4           #npe:Ljava/lang/NullPointerException;
    :pswitch_109
    const/4 v10, 0x5

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 481
    :pswitch_10e
    iput v13, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 484
    :pswitch_112
    const/4 v10, 0x6

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 487
    :pswitch_117
    const/16 v10, 0x41

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 488
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 490
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v10

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    .line 491
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v10

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    goto/16 :goto_55

    .line 497
    :pswitch_13b
    const/16 v10, 0xc

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 500
    :pswitch_141
    const/16 v10, 0x52

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 503
    :pswitch_147
    const/16 v10, 0x53

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 506
    :pswitch_14d
    const/16 v10, 0x51

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 509
    :pswitch_153
    const/16 v10, 0x55

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 514
    :pswitch_159
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v11, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v10, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 515
    .local v0, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x402c

    cmpg-double v10, v10, v12

    if-gez v10, :cond_170

    .line 519
    const/4 v1, 0x0

    goto/16 :goto_75

    .line 521
    :cond_170
    const/16 v10, 0x45

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 522
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 524
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v10

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mPeakSyncSchedule:I

    .line 525
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v10

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mOffpeakSyncSchedule:I

    goto/16 :goto_55

    .line 532
    .end local v0           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    :pswitch_194
    const/16 v10, 0x43

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 533
    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto/16 :goto_55

    .line 537
    :pswitch_1a0
    const/16 v10, 0x54

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 540
    :pswitch_1a6
    iput v14, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 543
    :pswitch_1aa
    const/16 v10, 0x61

    iput v10, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_55

    .line 567
    .end local v1           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_1b0
    const/4 v1, 0x0

    goto/16 :goto_75

    .line 390
    nop

    :pswitch_data_1b4
    .packed-switch 0x1c7
        :pswitch_1b
        :pswitch_2a
        :pswitch_25
        :pswitch_20
    .end packed-switch

    .line 427
    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_76
        :pswitch_79
        :pswitch_10e
        :pswitch_112
        :pswitch_109
        :pswitch_bd
        :pswitch_194
        :pswitch_117
        :pswitch_9a
        :pswitch_159
        :pswitch_53
        :pswitch_13b
        :pswitch_141
        :pswitch_147
        :pswitch_14d
        :pswitch_153
        :pswitch_1a0
        :pswitch_1a6
        :pswitch_1aa
    .end packed-switch
.end method

.method public callback(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 150
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/emailcommon/service/IEmailServiceCallback;->folderCommandStatus(IJI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 154
    :goto_d
    return-void

    .line 152
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public changesParser(Ljava/util/ArrayList;Z)V
    .registers 8
    .parameter
    .parameter "initialSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v0, addMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/exchange/provider/MailboxUtilities;->startMailboxChanges(Landroid/content/Context;J)V

    .line 725
    :cond_e
    :goto_e
    const/16 v2, 0x1ce

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_49

    .line 726
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x1cf

    if-ne v2, v3, :cond_27

    .line 727
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 728
    .local v1, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_e

    .line 729
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 731
    .end local v1           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_27
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x1d0

    if-ne v2, v3, :cond_31

    .line 732
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/FolderSyncParser;->deleteParser(Ljava/util/ArrayList;)V

    goto :goto_e

    .line 733
    :cond_31
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x1d1

    if-ne v2, v3, :cond_3b

    .line 734
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/FolderSyncParser;->updateParser(Ljava/util/ArrayList;)V

    goto :goto_e

    .line 735
    :cond_3b
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x1d7

    if-ne v2, v3, :cond_45

    .line 736
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    goto :goto_e

    .line 738
    :cond_45
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_e

    .line 741
    :cond_49
    new-instance v2, Lcom/android/exchange/adapter/FolderSyncParser$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/android/exchange/adapter/FolderSyncParser$1;-><init>(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 819
    return-void
.end method

.method public commandsParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    return-void
.end method

.method public commit()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 836
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const-string v1, "Sync Issues"

    aput-object v1, v0, v10

    .line 837
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 838
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 840
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 841
    .local v9, parentServerId:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 843
    .local v7, id:J
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 844
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 845
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_5a

    move-result-object v9

    .line 848
    :cond_30
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 850
    if-eqz v9, :cond_4f

    .line 851
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    aput-object v9, v0, v10

    .line 854
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "parentServerId=? and accountKey=?"

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 860
    :cond_4f
    iget-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v0, :cond_56

    .line 861
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->restoreMailboxSyncOptions()V

    .line 865
    :cond_56
    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/FolderSyncParser;->callback(I)V

    .line 867
    return-void

    .line 848
    :catchall_5a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public deleteParser(Ljava/util/ArrayList;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/16 v3, 0x1d0

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6c

    .line 258
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v3, :pswitch_data_6e

    .line 283
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 260
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, serverId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 264
    .local v0, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 265
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Deleting "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 266
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 271
    iget-boolean v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-nez v3, :cond_63

    .line 272
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, parentId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 274
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_1a .. :try_end_63} :catchall_67

    .line 279
    .end local v1           #parentId:Ljava/lang/String;
    :cond_63
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_67
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 286
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #serverId:Ljava/lang/String;
    :cond_6c
    return-void

    .line 258
    nop

    :pswitch_data_6e
    .packed-switch 0x1c8
        :pswitch_12
    .end packed-switch
.end method

.method isValidMailFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashMap;)Z
    .registers 15
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 586
    iget v8, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 588
    .local v8, folderType:I
    const/16 v1, 0x40

    if-ge v8, v1, :cond_a

    move v6, v0

    .line 614
    :cond_9
    :goto_9
    return v6

    .line 591
    :cond_a
    const/16 v1, 0x60

    if-ne v8, v1, :cond_9

    .line 594
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 598
    .local v9, parent:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v9, :cond_51

    .line 599
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 600
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 601
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND serverId=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    .line 605
    .local v10, parentId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_9

    .line 607
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 608
    if-eqz v9, :cond_9

    .line 614
    .end local v10           #parentId:J
    :cond_51
    invoke-virtual {p0, v9, p2}, Lcom/android/exchange/adapter/FolderSyncParser;->isValidMailFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashMap;)Z

    move-result v6

    goto :goto_9
.end method

.method public parse()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, res:Z
    const/4 v3, 0x0

    .line 165
    .local v3, resetFolders:Z
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 166
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_14

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    :cond_14
    move v5, v7

    :goto_15
    iput-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    .line 167
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v5, :cond_2e

    .line 168
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "accountKey=? and type!=68"

    new-array v10, v7, [Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 172
    :cond_2e
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/16 v8, 0x1d6

    if-eq v5, v8, :cond_8b

    .line 173
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v5, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v5

    :cond_3c
    move v5, v6

    .line 166
    goto :goto_15

    .line 195
    .local v4, status:I
    :cond_3e
    const/16 v5, 0x9

    if-ne v4, v5, :cond_e6

    .line 196
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v8, "Bad sync key; RESET and delete all folders"

    invoke-virtual {v5, v8}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 198
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v8, "0"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 199
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "syncKey"

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8, v0, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    iget-wide v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->deleteAccountPIMData(J)V

    .line 207
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "accountKey=? and type!=68"

    new-array v10, v7, [Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    iget-wide v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 213
    const/4 v2, 0x1

    .line 214
    const/4 v3, 0x1

    .line 174
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v4           #status:I
    :cond_8b
    :goto_8b
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_138

    .line 175
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0x1cc

    if-ne v5, v8, :cond_105

    .line 176
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 178
    .restart local v4       #status:I
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/FolderSyncParser;->isProvisioningStatus(I)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 179
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iput-boolean v7, v5, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 180
    const/4 v2, 0x0

    .line 181
    new-instance v5, Lcom/android/exchange/CommandStatusException;

    invoke-direct {v5, v4}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v5

    .line 185
    :cond_ad
    if-eq v4, v7, :cond_8b

    .line 186
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FolderSync failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 189
    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v5

    if-nez v5, :cond_e0

    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v5

    if-nez v5, :cond_e0

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_e0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3e

    .line 192
    :cond_e0
    new-instance v5, Lcom/android/exchange/CommandStatusException;

    invoke-direct {v5, v4}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v5

    .line 217
    :cond_e6
    const/16 v5, 0x81

    if-ne v4, v5, :cond_f6

    .line 218
    new-instance v5, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v6, 0x40001

    const v7, 0x7f060014

    invoke-direct {v5, v6, v7}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v5

    .line 226
    :cond_f6
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v6, "Throwing IOException; will retry later"

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 227
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    const-string v6, "Folder status error"

    invoke-direct {v5, p0, v6}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;Ljava/lang/String;)V

    throw v5

    .line 232
    .end local v4           #status:I
    :cond_105
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0x1d2

    if-ne v5, v8, :cond_124

    .line 233
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 234
    new-array v5, v13, [Ljava/lang/String;

    const-string v8, "New Account SyncKey: "

    aput-object v8, v5, v6

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    goto/16 :goto_8b

    .line 235
    :cond_124
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v8, 0x1ce

    if-ne v5, v8, :cond_133

    .line 236
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    invoke-virtual {p0, v5, v8}, Lcom/android/exchange/adapter/FolderSyncParser;->changesParser(Ljava/util/ArrayList;Z)V

    goto/16 :goto_8b

    .line 238
    :cond_133
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto/16 :goto_8b

    .line 240
    :cond_138
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 241
    :try_start_13f
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_149

    if-eqz v3, :cond_15e

    .line 242
    :cond_149
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->commit()V

    .line 243
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Leaving FolderSyncParser with Account syncKey="

    aput-object v8, v5, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 245
    :cond_15e
    monitor-exit v6

    .line 246
    return v2

    .line 245
    :catchall_160
    move-exception v5

    monitor-exit v6
    :try_end_162
    .catchall {:try_start_13f .. :try_end_162} :catchall_160

    throw v5
.end method

.method public responsesParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    return-void
.end method

.method restoreMailboxSyncOptions()V
    .registers 9

    .prologue
    .line 362
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 364
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 365
    .local v3, serverId:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;

    .line 366
    .local v2, options:Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    const-string v4, "syncInterval"

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mInterval:I
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$100(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string v4, "syncLookback"

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mLookback:I
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$200(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v4, "offpeakSyncSchedule"

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mOffpeakSchedule:I
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$300(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string v4, "peakSyncSchedule"

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mPeakSchedule:I
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$400(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 372
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "serverId=? and accountKey=?"

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_0 .. :try_end_6e} :catchall_6f

    goto :goto_16

    .line 376
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #options:Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    .end local v3           #serverId:Ljava/lang/String;
    :catchall_6f
    move-exception v4

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    throw v4

    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_76
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 378
    return-void
.end method

.method public updateParser(Ljava/util/ArrayList;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 619
    .local v5, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 620
    .local v2, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 621
    .local v4, parentId:Ljava/lang/String;
    :goto_3
    const/16 v6, 0x1d1

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_24

    .line 622
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v6, :pswitch_data_a0

    .line 633
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_3

    .line 624
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 625
    goto :goto_3

    .line 627
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 628
    goto :goto_3

    .line 630
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 631
    goto :goto_3

    .line 639
    :cond_24
    if-eqz v5, :cond_99

    if-nez v2, :cond_2a

    if-eqz v4, :cond_99

    .line 640
    :cond_2a
    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 643
    .local v0, c:Landroid/database/Cursor;
    :try_start_2e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 644
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Updating "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 646
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 647
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_4d
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, oldParentId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 651
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_5d
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 655
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v2, :cond_69

    .line 656
    const-string v6, "displayName"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_69
    const-string v6, "parentServerId"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v6, "parentKey"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 663
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z
    :try_end_96
    .catchall {:try_start_2e .. :try_end_96} :catchall_9a

    .line 672
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #oldParentId:Ljava/lang/String;
    :cond_96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 675
    .end local v0           #c:Landroid/database/Cursor;
    :cond_99
    return-void

    .line 672
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_9a
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 622
    nop

    :pswitch_data_a0
    .packed-switch 0x1c7
        :pswitch_1a
        :pswitch_15
        :pswitch_1f
    .end packed-switch
.end method
