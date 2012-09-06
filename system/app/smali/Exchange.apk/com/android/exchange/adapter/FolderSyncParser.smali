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
.field mAccountId:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAccountIdAsString:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

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

.field private final mStatusOnly:Z

.field final mSyncOptionsMap:Ljava/util/HashMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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
    .registers 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->VALID_EAS_FOLDER_TYPES:Ljava/util/List;

    .line 95
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "serverId"

    aput-object v1, v0, v3

    const-string v1, "parentServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    .line 261
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "serverId"

    aput-object v1, v0, v6

    const-string v1, "syncInterval"

    aput-object v1, v0, v3

    const-string v1, "syncLookback"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 4
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/FolderSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V
    .registers 8
    .parameter "in"
    .parameter "adapter"
    .parameter "statusOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    .line 118
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    const-string v1, "parentKey"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    .line 128
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 129
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 130
    iput-boolean p3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    .line 131
    return-void
.end method

.method static synthetic access$300(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/exchange/adapter/FolderSyncParser;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/FolderSyncParser;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
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
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .local p2, userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    .local p3, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 505
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Mailbox;

    .line 506
    .local v2, m:Lcom/android/emailcommon/provider/Mailbox;
    invoke-virtual {p0, v2, p3}, Lcom/android/exchange/adapter/FolderSyncParser;->isValidMailFolder(Lcom/android/emailcommon/provider/Mailbox;Ljava/util/HashMap;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 507
    iput v3, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 508
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 510
    :cond_1e
    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rejecting unknown type mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_6

    .line 515
    .end local v2           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_3b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/Mailbox;

    .line 516
    .restart local v2       #m:Lcom/android/emailcommon/provider/Mailbox;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Adding mailbox: "

    aput-object v6, v5, v4

    iget-object v6, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 517
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 522
    .end local v2           #m:Lcom/android/emailcommon/provider/Mailbox;
    :cond_6f
    const-string v5, "Applying "

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, " mailbox operations."

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 526
    :try_start_7c
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "com.android.email.provider"

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_85} :catch_86
    .catch Landroid/content/OperationApplicationException; {:try_start_7c .. :try_end_85} :catch_92

    .line 533
    :goto_85
    return v3

    .line 528
    :catch_86
    move-exception v0

    .line 529
    .local v0, e:Landroid/os/RemoteException;
    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "RemoteException in commitMailboxes"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    move v3, v4

    .line 530
    goto :goto_85

    .line 531
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_92
    move-exception v0

    .line 532
    .local v0, e:Landroid/content/OperationApplicationException;
    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "OperationApplicationException in commitMailboxes"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    move v3, v4

    .line 533
    goto :goto_85
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "serverId"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 209
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 210
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParser()Lcom/android/emailcommon/provider/Mailbox;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 317
    .local v3, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 318
    .local v2, parentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 320
    .local v4, type:I
    :goto_7
    const/16 v7, 0x1cf

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v7

    if-eq v7, v9, :cond_2c

    .line 321
    iget v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v7, :pswitch_data_a2

    .line 339
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_7

    .line 323
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 324
    goto :goto_7

    .line 327
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 328
    goto :goto_7

    .line 331
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 332
    goto :goto_7

    .line 335
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 336
    goto :goto_7

    .line 343
    :cond_2c
    sget-object v7, Lcom/android/exchange/adapter/FolderSyncParser;->VALID_EAS_FOLDER_TYPES:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 344
    new-instance v0, Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Mailbox;-><init>()V

    .line 345
    .local v0, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 346
    iput-object v3, v0, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    .line 347
    iget-wide v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iput-wide v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    .line 348
    iput v6, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 351
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    .line 352
    packed-switch v4, :pswitch_data_ae

    .line 386
    :goto_4d
    :pswitch_4d
    iget v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_54

    move v5, v6

    :cond_54
    iput-boolean v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlagVisible:Z

    .line 388
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 389
    iput-object v2, v0, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 390
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-nez v5, :cond_69

    .line 391
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_69
    iput-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    .line 399
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :goto_6b
    return-object v0

    .line 354
    .restart local v0       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :pswitch_6c
    iput v5, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 355
    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_4d

    .line 358
    :pswitch_75
    const/16 v7, 0x42

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 359
    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_4d

    .line 365
    :pswitch_80
    const/4 v7, 0x4

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_4d

    .line 368
    :pswitch_84
    const/4 v7, 0x5

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_4d

    .line 371
    :pswitch_88
    iput v9, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_4d

    .line 374
    :pswitch_8b
    const/4 v7, 0x6

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_4d

    .line 377
    :pswitch_8f
    const/16 v7, 0x41

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 378
    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v7, v7, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    goto :goto_4d

    .line 381
    :pswitch_9a
    const/16 v7, 0x45

    iput v7, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    goto :goto_4d

    .line 399
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_9f
    const/4 v0, 0x0

    goto :goto_6b

    .line 321
    nop

    :pswitch_data_a2
    .packed-switch 0x1c7
        :pswitch_18
        :pswitch_27
        :pswitch_22
        :pswitch_1d
    .end packed-switch

    .line 352
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_6c
        :pswitch_88
        :pswitch_8b
        :pswitch_84
        :pswitch_80
        :pswitch_4d
        :pswitch_8f
        :pswitch_75
    .end packed-switch
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
    .line 540
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, addMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Mailbox;>;"
    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/exchange/provider/MailboxUtilities;->startMailboxChanges(Landroid/content/Context;J)V

    .line 545
    :cond_e
    :goto_e
    const/16 v2, 0x1ce

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_49

    .line 546
    iget v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v3, 0x1cf

    if-ne v2, v3, :cond_27

    .line 547
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->addParser()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 548
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v1, :cond_e

    .line 549
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 551
    .end local v1           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_27
    iget v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v3, 0x1d0

    if-ne v2, v3, :cond_31

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/FolderSyncParser;->deleteParser(Ljava/util/ArrayList;)V

    goto :goto_e

    .line 553
    :cond_31
    iget v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v3, 0x1d1

    if-ne v2, v3, :cond_3b

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/FolderSyncParser;->updateParser(Ljava/util/ArrayList;)V

    goto :goto_e

    .line 555
    :cond_3b
    iget v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v3, 0x1d7

    if-ne v2, v3, :cond_45

    .line 556
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    goto :goto_e

    .line 558
    :cond_45
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_e

    .line 561
    :cond_49
    new-instance v2, Lcom/android/exchange/adapter/FolderSyncParser$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/android/exchange/adapter/FolderSyncParser$1;-><init>(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 630
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
    .line 637
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

    .line 646
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const-string v1, "Sync Issues"

    aput-object v1, v0, v10

    .line 647
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 648
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 651
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 652
    .local v9, parentServerId:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 654
    .local v7, id:J
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 655
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 656
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_57

    move-result-object v9

    .line 659
    :cond_30
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 661
    if-eqz v9, :cond_4f

    .line 662
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    aput-object v9, v0, v10

    .line 665
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "parentServerId=? and accountKey=?"

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 670
    :cond_4f
    iget-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v0, :cond_56

    .line 671
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->restoreMailboxSyncOptions()V

    .line 673
    :cond_56
    return-void

    .line 659
    :catchall_57
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
    .line 215
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/16 v3, 0x1d0

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6c

    .line 216
    iget v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v3, :pswitch_data_6e

    .line 241
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 218
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, serverId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 222
    .local v0, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 223
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Deleting "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 224
    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

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

    .line 227
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 229
    iget-boolean v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-nez v3, :cond_63

    .line 230
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, parentId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 232
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_1a .. :try_end_63} :catchall_67

    .line 237
    .end local v1           #parentId:Ljava/lang/String;
    :cond_63
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_67
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 244
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #serverId:Ljava/lang/String;
    :cond_6c
    return-void

    .line 216
    nop

    :pswitch_data_6e
    .packed-switch 0x1c8
        :pswitch_12
    .end packed-switch
.end method

.method isValidMailFolder(Lcom/android/emailcommon/provider/Mailbox;Ljava/util/HashMap;)Z
    .registers 15
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/Mailbox;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/Mailbox;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/Mailbox;>;"
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 416
    iget v8, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    .line 418
    .local v8, folderType:I
    const/16 v1, 0x40

    if-ge v8, v1, :cond_a

    move v6, v0

    .line 440
    :cond_9
    :goto_9
    return v6

    .line 420
    :cond_a
    const/16 v1, 0x45

    if-ne v8, v1, :cond_9

    .line 422
    iget-object v1, p1, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/Mailbox;

    .line 425
    .local v9, parent:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v9, :cond_51

    .line 426
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 427
    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Mailbox;->mParentServerId:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 428
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

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

    .line 432
    .local v10, parentId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_9

    .line 434
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v9

    .line 435
    if-eqz v9, :cond_9

    .line 440
    .end local v10           #parentId:J
    :cond_51
    invoke-virtual {p0, v9, p2}, Lcom/android/exchange/adapter/FolderSyncParser;->isValidMailFolder(Lcom/android/emailcommon/provider/Mailbox;Ljava/util/HashMap;)Z

    move-result v6

    goto :goto_9
.end method

.method public parse()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, res:Z
    const/4 v3, 0x0

    .line 140
    .local v3, resetFolders:Z
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 141
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

    .line 142
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v5, :cond_2e

    .line 143
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "accountKey=? and type!=68"

    new-array v10, v7, [Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    :cond_2e
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/16 v8, 0x1d6

    if-eq v5, v8, :cond_94

    .line 147
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v5, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v5

    :cond_3c
    move v5, v6

    .line 141
    goto :goto_15

    .line 161
    .local v4, status:I
    :cond_3e
    const/16 v5, 0x9

    if-eq v4, v5, :cond_48

    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isBadSyncKey(I)Z

    move-result v5

    if-eqz v5, :cond_df

    .line 163
    :cond_48
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v8, "Bad sync key; RESET and delete all folders"

    invoke-virtual {v5, v8}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 165
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    const-string v8, "0"

    iput-object v8, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 166
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "syncKey"

    iget-object v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8, v0, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    iget-wide v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->deleteAccountPIMData(J)V

    .line 173
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->saveMailboxSyncOptions()V

    .line 175
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "accountKey=? and type!=68"

    new-array v10, v7, [Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    iget-wide v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 179
    const/4 v2, 0x1

    .line 180
    const/4 v3, 0x1

    .line 148
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v4           #status:I
    :cond_94
    :goto_94
    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_125

    .line 149
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v8, 0x1cc

    if-ne v5, v8, :cond_ee

    .line 150
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 151
    .restart local v4       #status:I
    if-eq v4, v7, :cond_94

    .line 152
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FolderSync failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 155
    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isDeniedAccess(I)Z

    move-result v5

    if-nez v5, :cond_d9

    invoke-static {v4}, Lcom/android/exchange/CommandStatusException$CommandStatus;->isNeedsProvisioning(I)Z

    move-result v5

    if-nez v5, :cond_d9

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/Account;->mId:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-nez v5, :cond_3e

    .line 158
    :cond_d9
    new-instance v5, Lcom/android/exchange/CommandStatusException;

    invoke-direct {v5, v4}, Lcom/android/exchange/CommandStatusException;-><init>(I)V

    throw v5

    .line 184
    :cond_df
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v6, "Throwing IOException; will retry later"

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 185
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    const-string v6, "Folder status error"

    invoke-direct {v5, p0, v6}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;Ljava/lang/String;)V

    throw v5

    .line 188
    .end local v4           #status:I
    :cond_ee
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v8, 0x1d2

    if-ne v5, v8, :cond_10c

    .line 189
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 190
    new-array v5, v13, [Ljava/lang/String;

    const-string v8, "New Account SyncKey: "

    aput-object v8, v5, v6

    iget-object v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_94

    .line 191
    :cond_10c
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v8, 0x1ce

    if-ne v5, v8, :cond_120

    .line 192
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    if-eqz v5, :cond_117

    .line 204
    :cond_116
    :goto_116
    return v2

    .line 193
    :cond_117
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    invoke-virtual {p0, v5, v8}, Lcom/android/exchange/adapter/FolderSyncParser;->changesParser(Ljava/util/ArrayList;Z)V

    goto/16 :goto_94

    .line 195
    :cond_120
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto/16 :goto_94

    .line 197
    :cond_125
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mStatusOnly:Z

    if-nez v5, :cond_116

    .line 198
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 199
    :try_start_130
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_13a

    if-eqz v3, :cond_14f

    .line 200
    :cond_13a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->commit()V

    .line 201
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Leaving FolderSyncParser with Account syncKey="

    aput-object v8, v5, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 203
    :cond_14f
    monitor-exit v6

    goto :goto_116

    :catchall_151
    move-exception v5

    monitor-exit v6
    :try_end_153
    .catchall {:try_start_130 .. :try_end_153} :catchall_151

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
    .line 677
    return-void
.end method

.method restoreMailboxSyncOptions()V
    .registers 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 298
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 300
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    .local v3, serverId:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;

    .line 302
    .local v2, options:Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    const-string v4, "syncInterval"

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mInterval:I
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$100(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v4, "syncLookback"

    #getter for: Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->mLookback:I
    invoke-static {v2}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;->access$200(Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 306
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "serverId=? and accountKey=?"

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_55

    goto :goto_16

    .line 310
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #options:Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;
    .end local v3           #serverId:Ljava/lang/String;
    :catchall_55
    move-exception v4

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    throw v4

    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5c
    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 312
    return-void
.end method

.method saveMailboxSyncOptions()V
    .registers 10
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 277
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_STATE_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND (syncInterval!=-1 OR syncLookback!=0)"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v7, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_45

    .line 281
    :goto_1c
    :try_start_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 282
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mSyncOptionsMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/exchange/adapter/FolderSyncParser$SyncOptions;-><init>(IILcom/android/exchange/adapter/FolderSyncParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_3d

    goto :goto_1c

    .line 287
    :catchall_3d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_42
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_45
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
    .line 444
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 445
    .local v5, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 446
    .local v2, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 447
    .local v4, parentId:Ljava/lang/String;
    :goto_3
    const/16 v6, 0x1d1

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_24

    .line 448
    iget v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v6, :pswitch_data_a0

    .line 459
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_3

    .line 450
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 451
    goto :goto_3

    .line 453
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 454
    goto :goto_3

    .line 456
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 457
    goto :goto_3

    .line 465
    :cond_24
    if-eqz v5, :cond_99

    if-nez v2, :cond_2a

    if-eqz v4, :cond_99

    .line 466
    :cond_2a
    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 469
    .local v0, c:Landroid/database/Cursor;
    :try_start_2e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 470
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Updating "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 472
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 473
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_4d
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, oldParentId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 477
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_5d
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 481
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v2, :cond_69

    .line 482
    const-string v6, "displayName"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_69
    const-string v6, "parentServerId"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v6, "parentKey"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 488
    sget-object v6, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

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

    .line 492
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z
    :try_end_96
    .catchall {:try_start_2e .. :try_end_96} :catchall_9a

    .line 495
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #oldParentId:Ljava/lang/String;
    :cond_96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 498
    .end local v0           #c:Landroid/database/Cursor;
    :cond_99
    return-void

    .line 495
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_9a
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 448
    nop

    :pswitch_data_a0
    .packed-switch 0x1c7
        :pswitch_1a
        :pswitch_15
        :pswitch_1f
    .end packed-switch
.end method
