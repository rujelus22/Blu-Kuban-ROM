.class public abstract Lcom/android/exchange/adapter/AbstractSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractSyncAdapter.java"


# instance fields
.field public mAccount:Lcom/android/emailcommon/provider/Account;

.field public final mAccountManagerAccount:Landroid/accounts/Account;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field public mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 5
    .parameter "service"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    .line 75
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 76
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 78
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 80
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 81
    return-void
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract getCollectionName()Ljava/lang/String;
.end method

.method public getSyncKey()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Reset SyncKey to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 131
    :cond_17
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public incrementChangeCount()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget v1, v0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    .line 89
    return-void
.end method

.method public isLooping()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSyncable()Z
.end method

.method public abstract parse(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation
.end method

.method public abstract sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setPimSyncOptions(Ljava/lang/Double;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .registers 8
    .parameter "protocolVersion"
    .parameter "filter"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/16 v0, 0x1e

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 101
    const/16 v0, 0x13

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 102
    const/16 v0, 0x15

    const-string v1, "4"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 103
    const/16 v0, 0x17

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 105
    if-eqz p2, :cond_1d

    .line 106
    const/16 v0, 0x18

    invoke-virtual {p3, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 109
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_41

    .line 110
    const/16 v0, 0x445

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 112
    const/16 v0, 0x446

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 113
    const/16 v0, 0x447

    const-string v1, "200000"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 114
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 118
    :goto_3d
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 119
    return-void

    .line 116
    :cond_41
    const/16 v0, 0x19

    const-string v1, "7"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_3d
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .registers 4
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p1, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .registers 3
    .parameter "strings"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public abstract wipe()V
.end method
