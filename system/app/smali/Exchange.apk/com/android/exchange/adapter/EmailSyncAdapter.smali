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
.field private static final FETCH_REQUEST_PROJECTION:[Ljava/lang/String; = null

.field static final LAST_VERB_FORWARD:I = 0x3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LAST_VERB_REPLY:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LAST_VERB_REPLY_ALL:I = 0x2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

.field private static final UPDATES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mBindArgument:[Ljava/lang/String;

.field private final mBindArguments:[Ljava/lang/String;

.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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

.field private final mFetchRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLooping:Z

.field private final mPolicy:Lcom/android/emailcommon/provider/Policy;

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "flagRead"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "syncServerId"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    .line 95
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 6
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    .line 124
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 135
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    .line 136
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 140
    :goto_3d
    return-void

    .line 138
    :cond_3e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    goto :goto_3d
.end method

.method static synthetic access$102(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;)Lcom/android/emailcommon/provider/Policy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/EmailSyncAdapter;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    return-object v0
.end method

.method private addCleanupOps(Ljava/util/ArrayList;)V
    .registers 7
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
    .line 1146
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1147
    .local v1, id:Ljava/lang/Long;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1151
    .end local v1           #id:Ljava/lang/Long;
    :cond_28
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1152
    .restart local v1       #id:Ljava/lang/Long;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1155
    .end local v1           #id:Ljava/lang/Long;
    :cond_50
    return-void
.end method

.method private formatTwo(I)Ljava/lang/String;
    .registers 4
    .parameter "num"

    .prologue
    .line 1180
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1b

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1183
    :goto_1a
    return-object v0

    :cond_1b
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method private getAutomaticLookback()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 293
    sget-object v5, Lcom/android/exchange/Eas;->FILTER_1_WEEK:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEstimate(Ljava/lang/String;)I

    move-result v1

    .line 295
    .local v1, items:I
    const/16 v5, 0x41a

    if-le v1, v5, :cond_5a

    .line 297
    const/4 v2, 0x1

    .line 321
    .local v2, lookback:I
    :goto_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v5, :cond_84

    .line 324
    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput v2, v5, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 325
    const-string v5, "syncLookback"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    sget-object v5, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 332
    .local v3, uri:Landroid/net/Uri;
    :goto_2e
    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v3, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f05

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 336
    .local v4, windowEntries:[Ljava/lang/CharSequence;
    const-string v5, "EmailSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto lookback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void

    .line 298
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #lookback:I
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #windowEntries:[Ljava/lang/CharSequence;
    :cond_5a
    const/16 v5, 0x15e

    if-gt v1, v5, :cond_61

    const/4 v5, -0x1

    if-ne v1, v5, :cond_63

    .line 300
    :cond_61
    const/4 v2, 0x2

    .restart local v2       #lookback:I
    goto :goto_c

    .line 301
    .end local v2           #lookback:I
    :cond_63
    const/16 v5, 0x96

    if-le v1, v5, :cond_69

    .line 303
    const/4 v2, 0x3

    .restart local v2       #lookback:I
    goto :goto_c

    .line 304
    .end local v2           #lookback:I
    :cond_69
    const/16 v5, 0x4b

    if-le v1, v5, :cond_6f

    .line 306
    const/4 v2, 0x4

    .restart local v2       #lookback:I
    goto :goto_c

    .line 307
    .end local v2           #lookback:I
    :cond_6f
    const/4 v5, 0x5

    if-ge v1, v5, :cond_82

    .line 309
    const-string v5, "0"

    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEstimate(Ljava/lang/String;)I

    move-result v1

    .line 310
    if-ltz v1, :cond_80

    const/16 v5, 0x64

    if-ge v1, v5, :cond_80

    .line 311
    const/4 v2, 0x6

    .restart local v2       #lookback:I
    goto :goto_c

    .line 313
    .end local v2           #lookback:I
    :cond_80
    const/4 v2, 0x5

    .restart local v2       #lookback:I
    goto :goto_c

    .line 316
    .end local v2           #lookback:I
    :cond_82
    const/4 v2, 0x5

    .restart local v2       #lookback:I
    goto :goto_c

    .line 328
    .restart local v0       #cv:Landroid/content/ContentValues;
    :cond_84
    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput v2, v5, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 329
    const-string v5, "syncLookback"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    sget-object v5, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_2e
.end method

.method private getEmailFilter()Ljava/lang/String;
    .registers 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v1, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    .line 158
    .local v0, syncLookback:I
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v1, :cond_10

    .line 160
    :cond_c
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v0, v1, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 162
    :cond_10
    packed-switch v0, :pswitch_data_2c

    .line 178
    :pswitch_13
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_1_WEEK:Ljava/lang/String;

    :goto_15
    return-object v1

    .line 164
    :pswitch_16
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_AUTO:Ljava/lang/String;

    goto :goto_15

    .line 166
    :pswitch_19
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_1_DAY:Ljava/lang/String;

    goto :goto_15

    .line 168
    :pswitch_1c
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_3_DAYS:Ljava/lang/String;

    goto :goto_15

    .line 170
    :pswitch_1f
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_1_WEEK:Ljava/lang/String;

    goto :goto_15

    .line 172
    :pswitch_22
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_2_WEEKS:Ljava/lang/String;

    goto :goto_15

    .line 174
    :pswitch_25
    sget-object v1, Lcom/android/exchange/Eas;->FILTER_1_MONTH:Ljava/lang/String;

    goto :goto_15

    .line 176
    :pswitch_28
    const-string v1, "0"

    goto :goto_15

    .line 162
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

.method private getEstimate(Ljava/lang/String;)I
    .registers 16
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v8, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v8}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 408
    .local v8, s:Lcom/android/exchange/adapter/Serializer;
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x402c

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_af

    const/4 v4, 0x1

    .line 409
    .local v4, ex10:Z
    :goto_14
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v10, v10, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4028

    cmpg-double v10, v10, v12

    if-gez v10, :cond_b2

    const/4 v2, 0x1

    .line 410
    .local v2, ex03:Z
    :goto_23
    if-nez v4, :cond_b5

    if-nez v2, :cond_b5

    const/4 v3, 0x1

    .line 412
    .local v3, ex07:Z
    :goto_28
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, className:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v9

    .line 414
    .local v9, syncKey:Ljava/lang/String;
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "gie, sending "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    const/4 v11, 0x2

    const-string v12, " syncKey: "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v9, v10, v11

    invoke-virtual {p0, v10}, Lcom/android/exchange/adapter/EmailSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 416
    const/16 v10, 0x185

    invoke-virtual {v8, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    const/16 v11, 0x187

    invoke-virtual {v10, v11}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 417
    const/16 v10, 0x188

    invoke-virtual {v8, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 418
    if-eqz v3, :cond_b8

    .line 420
    const/16 v10, 0x18a

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 421
    const/16 v10, 0x18

    invoke-virtual {v8, v10, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 422
    const/16 v10, 0xb

    invoke-virtual {v8, v10, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 435
    :goto_6b
    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 437
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v11, "GetItemEstimate"

    new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v13, 0x7530

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/exchange/EasSyncService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lcom/android/exchange/EasResponse;

    move-result-object v7

    .line 440
    .local v7, resp:Lcom/android/exchange/EasResponse;
    :try_start_8d
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getStatus()I

    move-result v1

    .line 441
    .local v1, code:I
    const/16 v10, 0xc8

    if-ne v1, v10, :cond_f7

    .line 442
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f7

    .line 443
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 444
    .local v6, is:Ljava/io/InputStream;
    new-instance v5, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;

    invoke-direct {v5, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;-><init>(Ljava/io/InputStream;)V

    .line 445
    .local v5, gieParser:Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
    invoke-virtual {v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->parse()Z

    .line 447
    #getter for: Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->mEstimate:I
    invoke-static {v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;->access$000(Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;)I
    :try_end_aa
    .catchall {:try_start_8d .. :try_end_aa} :catchall_f2

    move-result v10

    .line 451
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    .line 454
    .end local v5           #gieParser:Lcom/android/exchange/adapter/EmailSyncAdapter$GetItemEstimateParser;
    .end local v6           #is:Ljava/io/InputStream;
    :goto_ae
    return v10

    .line 408
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #code:I
    .end local v2           #ex03:Z
    .end local v3           #ex07:Z
    .end local v4           #ex10:Z
    .end local v7           #resp:Lcom/android/exchange/EasResponse;
    .end local v9           #syncKey:Ljava/lang/String;
    :cond_af
    const/4 v4, 0x0

    goto/16 :goto_14

    .line 409
    .restart local v4       #ex10:Z
    :cond_b2
    const/4 v2, 0x0

    goto/16 :goto_23

    .line 410
    .restart local v2       #ex03:Z
    :cond_b5
    const/4 v3, 0x0

    goto/16 :goto_28

    .line 423
    .restart local v0       #className:Ljava/lang/String;
    .restart local v3       #ex07:Z
    .restart local v9       #syncKey:Ljava/lang/String;
    :cond_b8
    if-eqz v2, :cond_d3

    .line 425
    const/16 v10, 0x189

    invoke-virtual {v8, v10, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 426
    const/16 v10, 0xb

    invoke-virtual {v8, v10, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 427
    const/16 v10, 0x18a

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 428
    const/16 v10, 0x18

    invoke-virtual {v8, v10, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_6b

    .line 431
    :cond_d3
    const/16 v10, 0xb

    invoke-virtual {v8, v10, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 432
    const/16 v10, 0x18a

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v11, v11, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 433
    const/16 v10, 0x17

    invoke-virtual {v8, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    const/16 v11, 0x18

    invoke-virtual {v10, v11, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_6b

    .line 451
    .restart local v7       #resp:Lcom/android/exchange/EasResponse;
    :catchall_f2
    move-exception v10

    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    throw v10

    .restart local v1       #code:I
    :cond_f7
    invoke-virtual {v7}, Lcom/android/exchange/EasResponse;->close()V

    .line 454
    const/4 v10, -0x1

    goto :goto_ae
.end method

.method private messageReferenced(Landroid/content/ContentResolver;J)Z
    .registers 11
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1217
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sourceMessageKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1220
    .local v6, c:Landroid/database/Cursor;
    :try_start_17
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1f

    move-result v0

    .line 1222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1220
    return v0

    .line 1222
    :catchall_1f
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public cleanup()V
    .registers 6

    .prologue
    .line 1159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1163
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mailboxKey=? AND (flags&512)!=0"

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1167
    :cond_37
    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V

    .line 1170
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_48
    .catch Landroid/content/OperationApplicationException; {:try_start_3a .. :try_end_45} :catch_46

    .line 1177
    :goto_45
    return-void

    .line 1174
    :catch_46
    move-exception v1

    goto :goto_45

    .line 1172
    :catch_48
    move-exception v1

    goto :goto_45
.end method

.method public formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 6
    .parameter "calendar"

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0x2d

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1194
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1196
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1198
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1200
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1204
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    const-string v1, ".000Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1141
    const-string v0, "Email"

    return-object v0
.end method

.method public isLooping()Z
    .registers 2

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    return v0
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 467
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/EmailSyncAdapter;)V

    .line 270
    .local v0, p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    .line 271
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->parse()Z

    move-result v1

    .line 273
    .local v1, res:Z
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->isLooping()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 275
    iget-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 276
    :cond_1e
    const/4 v1, 0x1

    .line 287
    .end local v1           #res:Z
    :cond_1f
    :goto_1f
    return v1

    .line 280
    .restart local v1       #res:Z
    :cond_20
    const-string v2, "0"

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 282
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEmailFilter()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/exchange/Eas;->FILTER_AUTO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 283
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getAutomaticLookback()V

    goto :goto_1f
.end method

.method sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z
    .registers 14
    .parameter "s"
    .parameter
    .parameter "first"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

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

    .line 1239
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1242
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1246
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1248
    :cond_2a
    :goto_2a
    :try_start_2a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1249
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1251
    .local v7, serverId:Ljava/lang/String;
    if-eqz v7, :cond_2a

    .line 1254
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->messageReferenced(Landroid/content/ContentResolver;J)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1255
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

    .line 1266
    .end local v7           #serverId:Ljava/lang/String;
    :catchall_52
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1257
    .restart local v7       #serverId:Ljava/lang/String;
    :cond_57
    if-eqz p3, :cond_5f

    .line 1258
    const/16 v1, 0x16

    :try_start_5b
    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1259
    const/4 p3, 0x0

    .line 1262
    :cond_5f
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1263
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catchall {:try_start_5b .. :try_end_7a} :catchall_52

    goto :goto_2a

    .line 1266
    .end local v7           #serverId:Ljava/lang/String;
    :cond_7b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1269
    return p3
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 34
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1274
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1276
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1277
    const/4 v5, 0x0

    .line 1438
    :goto_15
    return v5

    .line 1281
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v5, v5, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2a

    .line 1282
    :cond_28
    const/4 v5, 0x0

    goto :goto_15

    .line 1286
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter;->sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z

    move-result v14

    .line 1288
    .local v14, firstCommand:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_75

    .line 1292
    if-eqz v14, :cond_4b

    .line 1293
    const/16 v5, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1294
    const/4 v14, 0x0

    .line 1296
    :cond_4b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;

    .line 1297
    .local v27, req:Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    const/16 v5, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;->serverId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_53

    .line 1302
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v27           #req:Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    :cond_75
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    const/4 v8, 0x6

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v29

    .line 1306
    .local v29, trashMailboxId:J
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mailboxKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1310
    .local v10, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1312
    :try_start_ae
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1313
    .local v13, cv:Landroid/content/ContentValues;
    :goto_b3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_251

    .line 1314
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1316
    .local v19, id:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d9
    .catchall {:try_start_ae .. :try_end_d9} :catchall_e4

    move-result-object v12

    .line 1323
    .local v12, currentCursor:Landroid/database/Cursor;
    :try_start_da
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_24c

    move-result v5

    if-nez v5, :cond_e9

    .line 1428
    :try_start_e0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_e4

    goto :goto_b3

    .line 1432
    .end local v12           #currentCursor:Landroid/database/Cursor;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v19           #id:J
    :catchall_e4
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1327
    .restart local v12       #currentCursor:Landroid/database/Cursor;
    .restart local v13       #cv:Landroid/content/ContentValues;
    .restart local v19       #id:J
    :cond_e9
    const/4 v5, 0x2

    :try_start_ea
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_24c

    move-result-object v28

    .line 1328
    .local v28, serverId:Ljava/lang/String;
    if-nez v28, :cond_f4

    .line 1428
    :try_start_f0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_e4

    goto :goto_b3

    .line 1332
    :cond_f4
    const/16 v16, 0x0

    .line 1333
    .local v16, flagChange:Z
    const/16 v26, 0x0

    .line 1335
    .local v26, readChange:Z
    const/4 v5, 0x1

    :try_start_f9
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1336
    .local v21, mailbox:J
    const/16 v5, 0x9

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v21, v5

    if-eqz v5, :cond_122

    .line 1341
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v6, Lcom/android/exchange/MessageMoveRequest;

    move-wide/from16 v0, v19

    move-wide/from16 v2, v21

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/exchange/MessageMoveRequest;-><init>(JJ)V

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1350
    :cond_122
    const/4 v15, 0x0

    .line 1351
    .local v15, flag:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_141

    .line 1352
    const/4 v5, 0x3

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1353
    const/4 v5, 0x6

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eq v15, v5, :cond_141

    .line 1354
    const/16 v16, 0x1

    .line 1358
    :cond_141
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1359
    .local v25, read:I
    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_14a
    .catchall {:try_start_f9 .. :try_end_14a} :catchall_24c

    move-result v5

    move/from16 v0, v25

    if-eq v0, v5, :cond_151

    .line 1360
    const/16 v26, 0x1

    .line 1363
    :cond_151
    if-nez v16, :cond_15a

    if-nez v26, :cond_15a

    .line 1428
    :try_start_155
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_158
    .catchall {:try_start_155 .. :try_end_158} :catchall_e4

    goto/16 :goto_b3

    .line 1368
    :cond_15a
    if-eqz v14, :cond_164

    .line 1369
    const/16 v5, 0x16

    :try_start_15e
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1370
    const/4 v14, 0x0

    .line 1373
    :cond_164
    const/16 v5, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    const/16 v7, 0xb

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x1d

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1376
    if-eqz v26, :cond_18a

    .line 1377
    const/16 v5, 0x95

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1385
    :cond_18a
    if-eqz v16, :cond_1f2

    .line 1386
    if-eqz v15, :cond_244

    .line 1388
    const/16 v5, 0xba

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xbb

    const-string v7, "2"

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1390
    const/16 v5, 0xbd

    const-string v6, "FollowUp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 1392
    .local v23, now:J
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 1394
    .local v11, calendar:Ljava/util/Calendar;
    move-wide/from16 v0, v23

    invoke-virtual {v11, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1397
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v31

    .line 1398
    .local v31, utc:Ljava/lang/String;
    const/16 v5, 0x25e

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x25f

    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1400
    const-wide/32 v5, 0x240c8400

    add-long v5, v5, v23

    invoke-virtual {v11, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1401
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v31

    .line 1402
    const/16 v5, 0x24c

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x24d

    move-object/from16 v0, v31

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1403
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1408
    .end local v11           #calendar:Ljava/util/Calendar;
    .end local v23           #now:J
    .end local v31           #utc:Ljava/lang/String;
    :cond_1f2
    :goto_1f2
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1411
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, v29

    if-nez v5, :cond_25c

    .line 1412
    if-eqz v14, :cond_20c

    .line 1413
    const/16 v5, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1414
    const/4 v14, 0x0

    .line 1417
    :cond_20c
    const/16 v5, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object/from16 v0, v28

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1420
    const/16 v5, 0x8

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1421
    .local v17, flags:I
    const-string v5, "flags"

    move/from16 v0, v17

    or-int/lit16 v6, v0, 0x200

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1423
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v19

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v13, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_23f
    .catchall {:try_start_15e .. :try_end_23f} :catchall_24c

    .line 1428
    :try_start_23f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_242
    .catchall {:try_start_23f .. :try_end_242} :catchall_e4

    goto/16 :goto_b3

    .line 1405
    .end local v17           #flags:I
    :cond_244
    const/16 v5, 0xba

    :try_start_246
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;
    :try_end_24b
    .catchall {:try_start_246 .. :try_end_24b} :catchall_24c

    goto :goto_1f2

    .line 1428
    .end local v15           #flag:I
    .end local v16           #flagChange:Z
    .end local v21           #mailbox:J
    .end local v25           #read:I
    .end local v26           #readChange:Z
    .end local v28           #serverId:Ljava/lang/String;
    :catchall_24c
    move-exception v5

    :try_start_24d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_251
    .catchall {:try_start_24d .. :try_end_251} :catchall_e4

    .line 1432
    .end local v12           #currentCursor:Landroid/database/Cursor;
    .end local v19           #id:J
    :cond_251
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1435
    if-nez v14, :cond_259

    .line 1436
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1438
    :cond_259
    const/4 v5, 0x0

    goto/16 :goto_15

    .line 1428
    .restart local v12       #currentCursor:Landroid/database/Cursor;
    .restart local v15       #flag:I
    .restart local v16       #flagChange:Z
    .restart local v19       #id:J
    .restart local v21       #mailbox:J
    .restart local v25       #read:I
    .restart local v26       #readChange:Z
    .restart local v28       #serverId:Ljava/lang/String;
    :cond_25c
    :try_start_25c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_25f
    .catchall {:try_start_25c .. :try_end_25f} :catchall_e4

    goto/16 :goto_b3
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .registers 14
    .parameter "protocolVersion"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "flagLoaded=2 AND mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    .local v6, c:Landroid/database/Cursor;
    :goto_24
    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 209
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_3f

    goto :goto_24

    .line 213
    :catchall_3f
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_44
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 226
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b0

    const/4 v8, 0x1

    .line 227
    .local v8, isTrashMailbox:Z
    :goto_57
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b2

    .line 228
    if-nez v8, :cond_68

    .line 229
    const/16 v0, 0x1e

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 234
    :cond_68
    :goto_68
    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 235
    const/16 v0, 0x15

    const-string v1, "5"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 236
    const/16 v0, 0x17

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 238
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEmailFilter()Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, filter:Ljava/lang/String;
    sget-object v0, Lcom/android/exchange/Eas;->FILTER_AUTO:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 241
    sget-object v7, Lcom/android/exchange/Eas;->FILTER_3_DAYS:Ljava/lang/String;

    .line 243
    :cond_87
    const/16 v0, 0x18

    invoke-virtual {p2, v0, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 245
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_bf

    .line 246
    const/16 v0, 0x445

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 248
    const/16 v0, 0x446

    const-string v1, "2"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 249
    const/16 v0, 0x447

    const-string v1, "200000"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 250
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 256
    :goto_ac
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 265
    .end local v7           #filter:Ljava/lang/String;
    .end local v8           #isTrashMailbox:Z
    :goto_af
    return-void

    .line 226
    :cond_b0
    const/4 v8, 0x0

    goto :goto_57

    .line 232
    .restart local v8       #isTrashMailbox:Z
    :cond_b2
    const/16 v1, 0x1e

    if-eqz v8, :cond_bc

    const-string v0, "0"

    :goto_b8
    invoke-virtual {p2, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_68

    :cond_bc
    const-string v0, "1"

    goto :goto_b8

    .line 253
    .restart local v7       #filter:Ljava/lang/String;
    :cond_bf
    const/16 v0, 0x22

    const-string v1, "2"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 254
    const/16 v0, 0x23

    const-string v1, "7"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_ac

    .line 258
    .end local v7           #filter:Ljava/lang/String;
    .end local v8           #isTrashMailbox:Z
    :cond_ce
    const/16 v0, 0x17

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 261
    const/16 v0, 0x22

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 262
    const/16 v0, 0x19

    const-string v1, "7"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 263
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_af
.end method

.method public wipe()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->clearRequests()V

    .line 151
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 154
    return-void
.end method
