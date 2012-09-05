.class public Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "RecipientInformationcacheSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;
    }
.end annotation


# instance fields
.field mIsLooping:Z


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .registers 4
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;->mIsLooping:Z

    .line 50
    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 9
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;

    invoke-direct {v1, p0, p1, p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;-><init>(Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 70
    .local v1, p:Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;
    const/4 v2, 0x0

    .line 72
    .local v2, res:Z
    :try_start_6
    invoke-virtual {v1}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->parse()Z
    :try_end_9
    .catch Lcom/android/emailcommon/utility/DeviceAccessException; {:try_start_6 .. :try_end_9} :catch_12
    .catch Lcom/android/exchange/adapter/Parser$EofException; {:try_start_6 .. :try_end_9} :catch_17

    move-result v2

    .line 85
    :goto_a
    invoke-virtual {v1}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->isLooping()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;->mIsLooping:Z

    move v3, v2

    .line 86
    :goto_11
    return v3

    .line 73
    :catch_12
    move-exception v0

    .line 75
    .local v0, e:Lcom/android/emailcommon/utility/DeviceAccessException;
    invoke-virtual {v0}, Lcom/android/emailcommon/utility/DeviceAccessException;->printStackTrace()V

    goto :goto_a

    .line 76
    .end local v0           #e:Lcom/android/emailcommon/utility/DeviceAccessException;
    :catch_17
    move-exception v0

    .line 78
    .local v0, e:Lcom/android/exchange/adapter/Parser$EofException;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x4028333333333333L

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2e

    .line 79
    invoke-virtual {p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;->setIntervalPing()V

    .line 80
    const/4 v3, 0x0

    goto :goto_11

    .line 82
    :cond_2e
    throw v0
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public wipe()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, cv:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 349
    .local v0, Nu_of:I
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #cv:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .restart local v1       #cv:Landroid/content/ContentValues;
    const-string v2, "syncKey"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v9, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 352
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountkey=?"

    new-array v5, v9, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 353
    const-string v2, "RecipientInformation Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIC adapter-afterdel wipe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method
