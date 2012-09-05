.class public Lcom/android/exchange/adapter/EmailSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;,
        Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;,
        Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    }
.end annotation


# static fields
.field private static final FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

.field private static final UPDATES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field draftChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field fDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field fUpdatedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isInlineImage:Z

.field private isSigned:Z

.field private latestCommitMessageId:J

.field private latestCommitTimeStamp:J

.field mBindArgument:[Ljava/lang/String;

.field mBindArguments:[Ljava/lang/String;

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

.field private mFetchNeeded:Z

.field mFetchRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;",
            ">;"
        }
    .end annotation
.end field

.field mIsLooping:Z

.field private mNotifyCount:I

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
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "flagRead"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "syncServerId"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "followupflag"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "messageId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    .line 130
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    .line 140
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .registers 5
    .parameter "mailbox"
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->draftChanges:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    .line 176
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 182
    const-string v0, "EmailSyncAdapter"

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->TAG:Ljava/lang/String;

    .line 185
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->isSigned:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->isInlineImage:Z

    .line 190
    iput v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mNotifyCount:I

    .line 192
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitMessageId:J

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitTimeStamp:J

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 4
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->draftChanges:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    .line 176
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 182
    const-string v0, "EmailSyncAdapter"

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->TAG:Ljava/lang/String;

    .line 185
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->isSigned:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->isInlineImage:Z

    .line 190
    iput v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mNotifyCount:I

    .line 192
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitMessageId:J

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitTimeStamp:J

    .line 197
    return-void
.end method

.method static synthetic access$102(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    return p1
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exchange/adapter/EmailSyncAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mNotifyCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/exchange/adapter/EmailSyncAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mNotifyCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/exchange/adapter/EmailSyncAdapter;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mNotifyCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mNotifyCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/exchange/adapter/EmailSyncAdapter;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/exchange/adapter/EmailSyncAdapter;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitMessageId:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/exchange/adapter/EmailSyncAdapter;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->latestCommitMessageId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/exchange/adapter/EmailSyncAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->isSigned:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->isSigned:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/exchange/adapter/EmailSyncAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->isInlineImage:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->isInlineImage:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addCleanupOps(Ljava/util/ArrayList;)V
    .registers 9
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

    .prologue
    .line 3206
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3207
    .local v1, id:Ljava/lang/Long;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3211
    .end local v1           #id:Ljava/lang/Long;
    :cond_28
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3214
    .restart local v1       #id:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 3215
    .local v2, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v2, :cond_2e

    iget v3, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagMoved:I

    if-nez v3, :cond_2e

    .line 3216
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 3222
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_60
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3223
    .restart local v1       #id:Ljava/lang/Long;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 3226
    .end local v1           #id:Ljava/lang/Long;
    :cond_88
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3227
    .restart local v1       #id:Ljava/lang/Long;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    .line 3236
    .end local v1           #id:Ljava/lang/Long;
    :cond_b0
    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3237
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "mailboxKey=? AND (flags&512)!=0"

    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3239
    return-void
.end method

.method private getDate(J)Ljava/lang/String;
    .registers 6
    .parameter "timeval"

    .prologue
    .line 3671
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 3672
    .local v0, calendar:Ljava/util/Calendar;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_13

    .line 3673
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3674
    :cond_13
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getEstimate(Ljava/lang/String;)I
    .registers 18
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    new-instance v10, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v10}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 534
    .local v10, s:Lcom/android/exchange/adapter/Serializer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v12, v12, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide/high16 v14, 0x402c

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_b3

    const/4 v6, 0x1

    .line 535
    .local v6, ex10:Z
    :goto_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v12, v12, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide/high16 v14, 0x4028

    cmpg-double v12, v12, v14

    if-gez v12, :cond_b6

    const/4 v4, 0x1

    .line 536
    .local v4, ex03:Z
    :goto_27
    if-nez v6, :cond_b9

    if-nez v4, :cond_b9

    const/4 v5, 0x1

    .line 538
    .local v5, ex07:Z
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, className:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v11

    .line 540
    .local v11, syncKey:Ljava/lang/String;
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "gie, sending "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const/4 v13, 0x2

    const-string v14, " syncKey: "

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object v11, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/exchange/adapter/EmailSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 542
    const/16 v12, 0x185

    invoke-virtual {v10, v12}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v12

    const/16 v13, 0x187

    invoke-virtual {v12, v13}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 543
    const/16 v12, 0x188

    invoke-virtual {v10, v12}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 544
    if-eqz v5, :cond_bc

    .line 546
    const/16 v12, 0x18a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 547
    const/16 v12, 0x18

    move-object/from16 v0, p1

    invoke-virtual {v10, v12, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 548
    const/16 v12, 0xb

    invoke-virtual {v10, v12, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 562
    :goto_75
    invoke-virtual {v10}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 568
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v13, "GetItemEstimate"

    invoke-virtual {v10}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;[B)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 569
    .local v9, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 570
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 571
    .local v2, code:I
    const/16 v12, 0xc8

    if-ne v2, v12, :cond_fe

    .line 572
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 573
    .local v8, is:Ljava/io/InputStream;
    new-instance v7, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;

    invoke-direct {v7, v8}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;-><init>(Ljava/io/InputStream;)V

    .line 574
    .local v7, gieParser:Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
    invoke-virtual {v7}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parse()Z

    .line 576
    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I
    invoke-static {v7}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->access$000(Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;)I

    move-result v12

    .line 579
    .end local v7           #gieParser:Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
    .end local v8           #is:Ljava/io/InputStream;
    :goto_b2
    return v12

    .line 534
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #code:I
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #ex03:Z
    .end local v5           #ex07:Z
    .end local v6           #ex10:Z
    .end local v9           #resp:Lorg/apache/http/HttpResponse;
    .end local v11           #syncKey:Ljava/lang/String;
    :cond_b3
    const/4 v6, 0x0

    goto/16 :goto_16

    .line 535
    .restart local v6       #ex10:Z
    :cond_b6
    const/4 v4, 0x0

    goto/16 :goto_27

    .line 536
    .restart local v4       #ex03:Z
    :cond_b9
    const/4 v5, 0x0

    goto/16 :goto_2c

    .line 549
    .restart local v1       #className:Ljava/lang/String;
    .restart local v5       #ex07:Z
    .restart local v11       #syncKey:Ljava/lang/String;
    :cond_bc
    if-eqz v4, :cond_db

    .line 551
    const/16 v12, 0x189

    invoke-virtual {v10, v12, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 552
    const/16 v12, 0xb

    invoke-virtual {v10, v12, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 553
    const/16 v12, 0x18a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 554
    const/16 v12, 0x18

    move-object/from16 v0, p1

    invoke-virtual {v10, v12, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_75

    .line 558
    :cond_db
    const/16 v12, 0xb

    invoke-virtual {v10, v12, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 559
    const/16 v12, 0x18a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 560
    const/16 v12, 0x17

    invoke-virtual {v10, v12}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v12

    const/16 v13, 0x18

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_75

    .line 579
    .restart local v2       #code:I
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    .restart local v9       #resp:Lorg/apache/http/HttpResponse;
    :cond_fe
    const/4 v12, -0x1

    goto :goto_b2
.end method

.method public static getTimeInMillis(Ljava/lang/String;)J
    .registers 3
    .parameter "tstr"

    .prologue
    .line 3658
    const-string v0, "GMT"

    invoke-static {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeInMillis(Ljava/lang/String;Ljava/lang/String;)J
    .registers 10
    .parameter "tstr"
    .parameter "timezone"

    .prologue
    .line 3662
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 3663
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x13

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 3666
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3667
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "context"
    .parameter "packedTo"
    .parameter "packedCc"
    .parameter "packedBcc"

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3685
    const/4 v2, 0x0

    .line 3686
    .local v2, first:Lcom/android/emailcommon/mail/Address;
    const/4 v6, 0x0

    .line 3687
    .local v6, nRecipients:I
    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v10

    aput-object p2, v1, v11

    aput-object p3, v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_10
    if-ge v4, v5, :cond_24

    aget-object v7, v1, v4

    .line 3690
    .local v7, packed:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 3691
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    array-length v8, v0

    add-int/2addr v6, v8

    .line 3692
    if-nez v2, :cond_21

    array-length v8, v0

    if-lez v8, :cond_21

    .line 3693
    aget-object v2, v0, v10

    .line 3687
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 3696
    .end local v0           #addresses:[Lcom/android/emailcommon/mail/Address;
    .end local v7           #packed:Ljava/lang/String;
    :cond_24
    if-nez v6, :cond_29

    .line 3697
    const-string v3, ""

    .line 3708
    :cond_28
    :goto_28
    return-object v3

    .line 3700
    :cond_29
    const/4 v3, 0x0

    .line 3701
    .local v3, friendly:Ljava/lang/String;
    if-eqz v2, :cond_32

    .line 3702
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v3

    .line 3703
    if-eq v6, v11, :cond_28

    .line 3708
    :cond_32
    const v8, 0x7f060018

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    add-int/lit8 v10, v6, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_28
.end method

.method private messageReferenced(Landroid/content/ContentResolver;J)Z
    .registers 11
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3274
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sourceMessageKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3277
    .local v6, c:Landroid/database/Cursor;
    :try_start_17
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_21

    move-result v0

    .line 3279
    if-eqz v6, :cond_20

    .line 3280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3277
    :cond_20
    return v0

    .line 3279
    :catchall_21
    move-exception v0

    if-eqz v6, :cond_27

    .line 3280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3279
    :cond_27
    throw v0
.end method

.method private sendSmSChanges(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentResolver;Z)Z
    .registers 21
    .parameter "s"
    .parameter "cr"
    .parameter "firstCommand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3334
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "messageType=256 AND messageDirty=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3338
    .local v12, sms:Landroid/database/Cursor;
    if-eqz v12, :cond_e5

    .line 3339
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 3340
    if-eqz p3, :cond_21

    .line 3341
    const/16 p3, 0x0

    .line 3342
    const/16 v1, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3346
    :cond_21
    const/16 v1, 0xa

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3347
    .local v9, clientId:Ljava/lang/String;
    const/16 v1, 0xe

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3348
    .local v11, from:Ljava/lang/String;
    const/16 v1, 0xf

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3349
    .local v16, to:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3350
    .local v14, timeStamp:J
    new-instance v8, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 3351
    .local v8, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v8, v14, v15}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 3352
    invoke-static {v8}, Lcom/android/exchange/utility/CalendarUtilities;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v10

    .line 3354
    .local v10, dateRecvd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v7

    .line 3356
    .local v7, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    const/4 v13, 0x0

    .line 3357
    .local v13, smsBody:Ljava/lang/String;
    if-eqz v7, :cond_5d

    .line 3358
    iget-object v13, v7, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 3361
    :cond_5d
    if-eqz v13, :cond_da

    .line 3362
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x10

    const-string v3, "SMS"

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x96

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x98

    invoke-virtual {v1, v2, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x8f

    invoke-virtual {v1, v2, v10}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x92

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x95

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x44a

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x446

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x44c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x44b

    invoke-virtual {v1, v2, v13}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3373
    :cond_da
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_21

    .line 3376
    .end local v7           #body:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v8           #cal:Ljava/util/GregorianCalendar;
    .end local v9           #clientId:Ljava/lang/String;
    .end local v10           #dateRecvd:Ljava/lang/String;
    .end local v11           #from:Ljava/lang/String;
    .end local v13           #smsBody:Ljava/lang/String;
    .end local v14           #timeStamp:J
    .end local v16           #to:Ljava/lang/String;
    :cond_e0
    if-eqz v12, :cond_e5

    .line 3377
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3380
    :cond_e5
    return p3
.end method


# virtual methods
.method public cleanup()V
    .registers 4

    .prologue
    .line 3244
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 3246
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3247
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V

    .line 3249
    :try_start_28
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_33} :catch_36
    .catch Landroid/content/OperationApplicationException; {:try_start_28 .. :try_end_33} :catch_34

    .line 3256
    .end local v0           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_33
    :goto_33
    return-void

    .line 3252
    .restart local v0       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_34
    move-exception v1

    goto :goto_33

    .line 3250
    :catch_36
    move-exception v1

    goto :goto_33
.end method

.method public getAutomaticLookback()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 404
    sget-object v5, Lcom/android/emailcommon/EasRefs;->FILTER_1_WEEK:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEstimate(Ljava/lang/String;)I

    move-result v2

    .line 406
    .local v2, items:I
    const/16 v5, 0x41a

    if-le v2, v5, :cond_32

    .line 408
    const/4 v3, 0x1

    .line 432
    .local v3, lookback:I
    :goto_c
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/exchange/SecurityPolicyDelegate;->getAccountPolicy(Landroid/content/Context;J)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 433
    .local v0, accountPolicies:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v0, :cond_22

    iget v5, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-eqz v5, :cond_22

    iget v5, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-ge v5, v3, :cond_22

    .line 435
    iget v3, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    .line 442
    :cond_22
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v1, cv:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v5, :cond_5c

    .line 445
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput v3, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 462
    :goto_31
    return-void

    .line 409
    .end local v0           #accountPolicies:Lcom/android/emailcommon/service/PolicySet;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #lookback:I
    :cond_32
    const/16 v5, 0x15e

    if-gt v2, v5, :cond_39

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3b

    .line 411
    :cond_39
    const/4 v3, 0x2

    .restart local v3       #lookback:I
    goto :goto_c

    .line 412
    .end local v3           #lookback:I
    :cond_3b
    const/16 v5, 0x96

    if-le v2, v5, :cond_41

    .line 414
    const/4 v3, 0x3

    .restart local v3       #lookback:I
    goto :goto_c

    .line 415
    .end local v3           #lookback:I
    :cond_41
    const/16 v5, 0x4b

    if-le v2, v5, :cond_47

    .line 417
    const/4 v3, 0x4

    .restart local v3       #lookback:I
    goto :goto_c

    .line 418
    .end local v3           #lookback:I
    :cond_47
    const/4 v5, 0x5

    if-ge v2, v5, :cond_5a

    .line 421
    const-string v5, "0"

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEstimate(Ljava/lang/String;)I

    move-result v2

    .line 422
    if-ltz v2, :cond_58

    const/16 v5, 0x64

    if-ge v2, v5, :cond_58

    .line 423
    const/4 v3, 0x6

    .restart local v3       #lookback:I
    goto :goto_c

    .line 425
    .end local v3           #lookback:I
    :cond_58
    const/4 v3, 0x5

    .restart local v3       #lookback:I
    goto :goto_c

    .line 428
    .end local v3           #lookback:I
    :cond_5a
    const/4 v3, 0x5

    .restart local v3       #lookback:I
    goto :goto_c

    .line 451
    .restart local v0       #accountPolicies:Lcom/android/emailcommon/service/PolicySet;
    .restart local v1       #cv:Landroid/content/ContentValues;
    :cond_5c
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput v3, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    .line 452
    const-string v5, "syncLookback"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 454
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v4, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_31
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3201
    const-string v0, "Email"

    return-object v0
.end method

.method public getEmailFilter()Ljava/lang/String;
    .registers 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    .line 247
    .local v0, syncLookback:I
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v1, :cond_10

    .line 248
    :cond_c
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 250
    :cond_10
    packed-switch v0, :pswitch_data_2c

    .line 266
    :pswitch_13
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_WEEK:Ljava/lang/String;

    :goto_15
    return-object v1

    .line 252
    :pswitch_16
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_AUTO:Ljava/lang/String;

    goto :goto_15

    .line 254
    :pswitch_19
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_DAY:Ljava/lang/String;

    goto :goto_15

    .line 256
    :pswitch_1c
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_3_DAYS:Ljava/lang/String;

    goto :goto_15

    .line 258
    :pswitch_1f
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_WEEK:Ljava/lang/String;

    goto :goto_15

    .line 260
    :pswitch_22
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_2_WEEKS:Ljava/lang/String;

    goto :goto_15

    .line 262
    :pswitch_25
    sget-object v1, Lcom/android/emailcommon/EasRefs;->FILTER_1_MONTH:Ljava/lang/String;

    goto :goto_15

    .line 264
    :pswitch_28
    const-string v1, "0"

    goto :goto_15

    .line 250
    nop

    :pswitch_data_2c
    .packed-switch -0x2
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method public isLooping()Z
    .registers 2

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    return v0
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 10
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 362
    const/4 v1, 0x0

    .line 364
    .local v1, p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    :try_start_2
    new-instance v2, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-direct {v2, p0, p1, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/EmailSyncAdapter;)V
    :try_end_7
    .catch Lcom/android/exchange/adapter/Parser$EofException; {:try_start_2 .. :try_end_7} :catch_22

    .line 376
    .end local v1           #p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    .local v2, p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    iput-boolean v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    .line 377
    invoke-virtual {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->parse()Z

    move-result v3

    .line 380
    .local v3, res:Z
    invoke-virtual {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->isLooping()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 383
    iget-boolean v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 384
    :cond_1f
    const/4 v3, 0x1

    move-object v1, v2

    .line 396
    .end local v2           #p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    .end local v3           #res:Z
    .restart local v1       #p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    :goto_21
    return v3

    .line 365
    :catch_22
    move-exception v0

    .line 367
    .local v0, e:Lcom/android/exchange/adapter/Parser$EofException;
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x4028333333333333L

    cmpl-double v4, v4, v6

    if-nez v4, :cond_38

    .line 368
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->setIntervalPing()V

    goto :goto_21

    .line 371
    :cond_38
    throw v0

    .end local v0           #e:Lcom/android/exchange/adapter/Parser$EofException;
    .end local v1           #p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    .restart local v2       #p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    .restart local v3       #res:Z
    :cond_39
    move-object v1, v2

    .line 396
    .end local v2           #p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    .restart local v1       #p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    goto :goto_21
.end method

.method sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z
    .registers 14
    .parameter "s"
    .parameter
    .parameter "first"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/Serializer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, deletedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 3296
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3299
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3304
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 3306
    :cond_2a
    :goto_2a
    :try_start_2a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 3307
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3309
    .local v7, serverId:Ljava/lang/String;
    if-eqz v7, :cond_2a

    .line 3312
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->messageReferenced(Landroid/content/ContentResolver;J)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 3313
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Postponing deletion of referenced message: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_2a .. :try_end_51} :catchall_52

    goto :goto_2a

    .line 3324
    .end local v7           #serverId:Ljava/lang/String;
    :catchall_52
    move-exception v1

    if-eqz v6, :cond_58

    .line 3325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3324
    :cond_58
    throw v1

    .line 3315
    .restart local v7       #serverId:Ljava/lang/String;
    :cond_59
    if-eqz p3, :cond_61

    .line 3316
    const/16 v1, 0x16

    :try_start_5d
    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3317
    const/4 p3, 0x0

    .line 3320
    :cond_61
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3321
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catchall {:try_start_5d .. :try_end_7c} :catchall_52

    goto :goto_2a

    .line 3324
    .end local v7           #serverId:Ljava/lang/String;
    :cond_7d
    if-eqz v6, :cond_82

    .line 3325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3328
    :cond_82
    return p3
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 28
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3388
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3389
    const/4 v3, 0x0

    .line 3653
    :goto_15
    return v3

    .line 3393
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2a

    .line 3394
    :cond_28
    const/4 v3, 0x0

    goto :goto_15

    .line 3398
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter;->sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z

    move-result v12

    .line 3400
    .local v12, firstCommand:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_75

    .line 3406
    if-eqz v12, :cond_4b

    .line 3407
    const/16 v3, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3408
    const/4 v12, 0x0

    .line 3410
    :cond_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;

    .line 3411
    .local v19, req:Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0xd

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;->serverId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_53

    .line 3416
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v19           #req:Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    :cond_75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_95

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x402c

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_95

    .line 3417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/android/exchange/adapter/EmailSyncAdapter;->sendSmSChanges(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentResolver;Z)Z

    move-result v12

    .line 3422
    :cond_95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v6, 0x6

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v22

    .line 3426
    .local v22, trashMailboxId:J
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailboxKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3429
    .local v8, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3436
    :cond_dc
    :goto_dc
    :try_start_dc
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3aa

    .line 3438
    const/16 v21, 0x1

    .line 3440
    .local v21, syncChangeFirst:Z
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3442
    .local v14, id:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3446
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_102
    .catchall {:try_start_dc .. :try_end_102} :catchall_10f

    move-result-object v9

    .line 3452
    .local v9, currentCursor:Landroid/database/Cursor;
    :try_start_103
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_307

    move-result v3

    if-nez v3, :cond_116

    .line 3641
    if-eqz v9, :cond_dc

    .line 3642
    :try_start_10b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_10f

    goto :goto_dc

    .line 3646
    .end local v9           #currentCursor:Landroid/database/Cursor;
    .end local v14           #id:J
    .end local v21           #syncChangeFirst:Z
    :catchall_10f
    move-exception v3

    if-eqz v8, :cond_115

    .line 3647
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3646
    :cond_115
    throw v3

    .line 3456
    .restart local v9       #currentCursor:Landroid/database/Cursor;
    .restart local v14       #id:J
    .restart local v21       #syncChangeFirst:Z
    :cond_116
    const/4 v3, 0x2

    :try_start_117
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_307

    move-result-object v20

    .line 3457
    .local v20, serverId:Ljava/lang/String;
    if-nez v20, :cond_123

    .line 3641
    if-eqz v9, :cond_dc

    .line 3642
    :try_start_11f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_10f

    goto :goto_dc

    .line 3462
    :cond_123
    const/4 v3, 0x1

    :try_start_124
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v3, v3, v22

    if-nez v3, :cond_170

    .line 3463
    if-eqz v12, :cond_136

    .line 3464
    const/16 v3, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3465
    const/4 v12, 0x0

    .line 3468
    :cond_136
    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0xd

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3469
    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_169

    .line 3470
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 3472
    .local v25, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_169
    .catchall {:try_start_124 .. :try_end_169} :catchall_307

    .line 3641
    .end local v25           #uri:Landroid/net/Uri;
    :cond_169
    if-eqz v9, :cond_dc

    .line 3642
    :try_start_16b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_16e
    .catchall {:try_start_16b .. :try_end_16e} :catchall_10f

    goto/16 :goto_dc

    .line 3477
    :cond_170
    const/4 v3, 0x1

    :try_start_171
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 3498
    .local v16, mailbox:J
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 3499
    .local v18, read:I
    const/4 v3, 0x4

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v0, v18

    if-eq v0, v3, :cond_1b5

    .line 3500
    if-eqz v12, :cond_18d

    .line 3501
    const/16 v3, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3502
    const/4 v12, 0x0

    .line 3505
    :cond_18d
    if-eqz v21, :cond_1aa

    .line 3508
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0xd

    const/16 v5, 0xb

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3512
    const/16 v21, 0x0

    .line 3515
    :cond_1aa
    const/16 v3, 0x95

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3528
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4028

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_2b6

    .line 3529
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageKey=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3532
    .local v10, currentFFCursor:Landroid/database/Cursor;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageKey=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 3535
    .local v24, updatedFFCursor:Landroid/database/Cursor;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageKey=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22d
    .catchall {:try_start_171 .. :try_end_22d} :catchall_307

    move-result-object v11

    .line 3541
    .local v11, deletedFFCursor:Landroid/database/Cursor;
    :try_start_22e
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_23a

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2a7

    .line 3543
    :cond_23a
    if-eqz v12, :cond_244

    .line 3544
    const/16 v3, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3545
    const/4 v12, 0x0

    .line 3547
    :cond_244
    if-eqz v21, :cond_261

    .line 3549
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0xd

    const/16 v5, 0xb

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3553
    const/16 v21, 0x0

    .line 3555
    :cond_261
    const/16 v3, 0xba

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 3556
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_27e

    .line 3557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3561
    :cond_27e
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2a4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2a4

    .line 3564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3566
    const/4 v3, 0x6

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_3b8

    .line 3626
    :cond_2a4
    :goto_2a4
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_2a7
    .catchall {:try_start_22e .. :try_end_2a7} :catchall_2f6

    .line 3629
    :cond_2a7
    if-eqz v10, :cond_2ac

    .line 3630
    :try_start_2a9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3631
    :cond_2ac
    if-eqz v11, :cond_2b1

    .line 3632
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3633
    :cond_2b1
    if-eqz v24, :cond_2b6

    .line 3634
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 3637
    .end local v10           #currentFFCursor:Landroid/database/Cursor;
    .end local v11           #deletedFFCursor:Landroid/database/Cursor;
    .end local v24           #updatedFFCursor:Landroid/database/Cursor;
    :cond_2b6
    if-nez v21, :cond_2bf

    .line 3638
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_2bf
    .catchall {:try_start_2a9 .. :try_end_2bf} :catchall_307

    .line 3641
    :cond_2bf
    if-eqz v9, :cond_dc

    .line 3642
    :try_start_2c1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2c4
    .catchall {:try_start_2c1 .. :try_end_2c4} :catchall_10f

    goto/16 :goto_dc

    .line 3574
    .restart local v10       #currentFFCursor:Landroid/database/Cursor;
    .restart local v11       #deletedFFCursor:Landroid/database/Cursor;
    .restart local v24       #updatedFFCursor:Landroid/database/Cursor;
    :pswitch_2c6
    const/16 v3, 0xbb

    :try_start_2c8
    const-string v4, "1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3576
    const/16 v3, 0x24b

    const/16 v4, 0x9

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3579
    const/16 v3, 0xbe

    const/16 v4, 0x8

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_2f5
    .catchall {:try_start_2c8 .. :try_end_2f5} :catchall_2f6

    goto :goto_2a4

    .line 3629
    :catchall_2f6
    move-exception v3

    if-eqz v10, :cond_2fc

    .line 3630
    :try_start_2f9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3631
    :cond_2fc
    if-eqz v11, :cond_301

    .line 3632
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3633
    :cond_301
    if-eqz v24, :cond_306

    .line 3634
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 3629
    :cond_306
    throw v3
    :try_end_307
    .catchall {:try_start_2f9 .. :try_end_307} :catchall_307

    .line 3641
    .end local v10           #currentFFCursor:Landroid/database/Cursor;
    .end local v11           #deletedFFCursor:Landroid/database/Cursor;
    .end local v16           #mailbox:J
    .end local v18           #read:I
    .end local v20           #serverId:Ljava/lang/String;
    .end local v24           #updatedFFCursor:Landroid/database/Cursor;
    :catchall_307
    move-exception v3

    if-eqz v9, :cond_30d

    .line 3642
    :try_start_30a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3641
    :cond_30d
    throw v3
    :try_end_30e
    .catchall {:try_start_30a .. :try_end_30e} :catchall_10f

    .line 3584
    .restart local v10       #currentFFCursor:Landroid/database/Cursor;
    .restart local v11       #deletedFFCursor:Landroid/database/Cursor;
    .restart local v16       #mailbox:J
    .restart local v18       #read:I
    .restart local v20       #serverId:Ljava/lang/String;
    .restart local v24       #updatedFFCursor:Landroid/database/Cursor;
    :pswitch_30e
    const/16 v3, 0xbb

    :try_start_310
    const-string v4, "2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3586
    const/4 v3, 0x7

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39d

    .line 3588
    const/16 v3, 0xbd

    const/4 v4, 0x7

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3593
    :goto_32a
    const/16 v3, 0x25e

    const/16 v4, 0xa

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3596
    const/16 v3, 0x25f

    const/16 v4, 0xc

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3599
    const/16 v3, 0x24c

    const/16 v4, 0xb

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3601
    const/16 v3, 0x24d

    const/16 v4, 0xd

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3604
    const/16 v4, 0x25b

    const/16 v3, 0xe

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3a7

    const-string v3, "1"

    :goto_383
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 3608
    const/16 v3, 0x25c

    const/16 v4, 0xf

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_2a4

    .line 3592
    :cond_39d
    const/16 v3, 0xbd

    const-string v4, "FollowUp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_32a

    .line 3604
    :cond_3a7
    const-string v3, "0"
    :try_end_3a9
    .catchall {:try_start_310 .. :try_end_3a9} :catchall_2f6

    goto :goto_383

    .line 3646
    .end local v9           #currentCursor:Landroid/database/Cursor;
    .end local v10           #currentFFCursor:Landroid/database/Cursor;
    .end local v11           #deletedFFCursor:Landroid/database/Cursor;
    .end local v14           #id:J
    .end local v16           #mailbox:J
    .end local v18           #read:I
    .end local v20           #serverId:Ljava/lang/String;
    .end local v21           #syncChangeFirst:Z
    .end local v24           #updatedFFCursor:Landroid/database/Cursor;
    :cond_3aa
    if-eqz v8, :cond_3af

    .line 3647
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3650
    :cond_3af
    if-nez v12, :cond_3b4

    .line 3651
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 3653
    :cond_3b4
    const/4 v3, 0x0

    goto/16 :goto_15

    .line 3566
    nop

    :pswitch_data_3b8
    .packed-switch 0x1
        :pswitch_2c6
        :pswitch_30e
    .end packed-switch
.end method

.method public wipe()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 215
    const-string v6, "EmailSyncAdapter"

    const-string v7, "EMAIL BAD SYNC KEY"

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v0, cvx:Landroid/content/ContentValues;
    const-string v6, "syncKey"

    const-string v7, "0"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 220
    .local v1, mMailboxUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v1, v0, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 221
    .local v2, mailboxCount:I
    const-string v6, "EmailSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating Email mailbox with sync key 0. Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailboxKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 224
    .local v3, messageCount:I
    const-string v6, "EmailSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EmailProvider Message table row deleted. Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailboxKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 230
    .local v4, msgDeletedCount:I
    const-string v6, "EmailSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EmailProvider Message_Deletes table row deleted. Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailboxKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 235
    .local v5, msgUpdatedCount:I
    const-string v6, "EmailSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EmailProvider Message_Updates row deleted. Count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v6}, Lcom/android/exchange/EasSyncService;->clearRequests()V

    .line 239
    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 242
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 243
    return-void
.end method
