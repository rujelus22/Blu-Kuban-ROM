.class public abstract Lcom/android/exchange/AbstractSyncService;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/AbstractSyncService$ValidationResult;
    }
.end annotation


# instance fields
.field public TAG:Ljava/lang/String;

.field public mAccount:Lcom/android/emailcommon/provider/Account;

.field public mChangeCount:I

.field public mContext:Landroid/content/Context;

.field protected mExitStatus:I

.field public mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field protected mMailboxId:J

.field protected mMailboxName:Ljava/lang/String;

.field protected mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/exchange/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mRequestTime:J

.field protected volatile mStop:Z

.field public volatile mSyncReason:I

.field protected final mSynchronizer:Ljava/lang/Object;

.field protected volatile mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Mailbox;)V
    .registers 5
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 67
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 68
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 69
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 74
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 110
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 112
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 113
    iget-object v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 114
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 67
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 68
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 69
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 74
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 119
    return-void
.end method

.method public static validate(Ljava/lang/Class;Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5
    .parameter
    .parameter "hostAuth"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;",
            "Lcom/android/emailcommon/provider/HostAuth;",
            "Landroid/content/Context;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/exchange/AbstractSyncService;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 136
    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    invoke-virtual {v0, p1, p2}, Lcom/android/exchange/AbstractSyncService;->validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 140
    .end local v0           #svc:Lcom/android/exchange/AbstractSyncService;
    :goto_a
    return-object v1

    .line 138
    :catch_b
    move-exception v1

    .line 140
    :goto_c
    const/4 v1, 0x0

    goto :goto_a

    .line 137
    :catch_e
    move-exception v1

    goto :goto_c
.end method


# virtual methods
.method public addRequest(Lcom/android/exchange/Request;)V
    .registers 3
    .parameter "req"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public abstract alarm()Z
.end method

.method public clearRequests()V
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 295
    return-void
.end method

.method public errorLog(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_e

    .line 247
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_e
    return-void
.end method

.method public getSynchronizer()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    return-object v0
.end method

.method public hasConnectivity()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 258
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 260
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .local v2, tries:I
    move v3, v2

    .line 261
    .end local v2           #tries:I
    .local v3, tries:I
    :goto_d
    add-int/lit8 v2, v3, 0x1

    .end local v3           #tries:I
    .restart local v2       #tries:I
    if-ge v3, v4, :cond_1f

    .line 264
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 265
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_18

    .line 273
    .end local v1           #info:Landroid/net/NetworkInfo;
    :goto_17
    return v4

    .line 269
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_18
    const-wide/16 v5, 0x2710

    :try_start_1a
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_21

    :goto_1d
    move v3, v2

    .line 272
    .end local v2           #tries:I
    .restart local v3       #tries:I
    goto :goto_d

    .line 273
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v3           #tries:I
    .restart local v2       #tries:I
    :cond_1f
    const/4 v4, 0x0

    goto :goto_17

    .line 270
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :catch_21
    move-exception v5

    goto :goto_1d
.end method

.method public hasPendingRequests()Z
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isStopped()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    return v0
.end method

.method public abstract reset()V
.end method

.method public abstract stop()V
.end method

.method public userLog(Ljava/lang/String;I)V
    .registers 6
    .parameter "string"
    .parameter "code"

    .prologue
    .line 199
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_1e

    .line 200
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 202
    :cond_1e
    return-void
.end method

.method public userLog(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "string"
    .parameter "code"
    .parameter "string2"

    .prologue
    .line 193
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_22

    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 196
    :cond_22
    return-void
.end method

.method public userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "str"
    .parameter "e"

    .prologue
    .line 205
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_11

    .line 206
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :goto_9
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_10

    .line 211
    invoke-static {p2}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/Exception;)V

    .line 213
    :cond_10
    return-void

    .line 208
    :cond_11
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .registers 10
    .parameter "strings"

    .prologue
    .line 222
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_19

    .line 224
    array-length v6, p1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    .line 225
    const/4 v6, 0x0

    aget-object v3, p1, v6

    .line 233
    .local v3, logText:Ljava/lang/String;
    :goto_b
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-boolean v6, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v6, :cond_19

    .line 235
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v3           #logText:Ljava/lang/String;
    :cond_19
    return-void

    .line 227
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 228
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_24
    if-ge v1, v2, :cond_2e

    aget-object v5, v0, v1

    .line 229
    .local v5, string:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 231
    .end local v5           #string:Ljava/lang/String;
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #logText:Ljava/lang/String;
    goto :goto_b
.end method

.method public abstract validateAccount(Lcom/android/emailcommon/provider/HostAuth;Landroid/content/Context;)Landroid/os/Bundle;
.end method
