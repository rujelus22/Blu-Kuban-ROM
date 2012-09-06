.class public Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncContext"
.end annotation


# instance fields
.field public api:Lcom/google/android/apps/plus/iu/PicasaApi;

.field private mAccount:Landroid/accounts/Account;

.field private mAuthToken:Ljava/lang/String;

.field private volatile mStopSync:Z

.field private mThread:Ljava/lang/Thread;

.field public result:Landroid/content/SyncResult;

.field final synthetic this$0:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/iu/PicasaSyncHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V
    .registers 6
    .parameter
    .parameter "syncResult"
    .parameter "thread"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->this$0:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncResult;

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    .line 260
    new-instance v0, Lcom/google/android/apps/plus/iu/PicasaApi;

    #getter for: Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->access$100(Lcom/google/android/apps/plus/iu/PicasaSyncHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/iu/PicasaApi;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/apps/plus/iu/PicasaApi;

    .line 261
    iput-object p3, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mThread:Ljava/lang/Thread;

    .line 262
    return-void
.end method


# virtual methods
.method public refreshAuthToken()V
    .registers 8

    .prologue
    const/4 v5, 0x5

    .line 265
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->this$0:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    #getter for: Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->access$100(Lcom/google/android/apps/plus/iu/PicasaSyncHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 266
    .local v1, manager:Landroid/accounts/AccountManager;
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 267
    const-string v2, "com.google"

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_16
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    .line 272
    :try_start_19
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    const-string v3, "lh2"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    .line 274
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/apps/plus/iu/PicasaApi;

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/iu/PicasaApi;->setAuthToken(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_63

    .line 280
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    if-nez v2, :cond_62

    .line 281
    const-string v2, "PicasaSync"

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 282
    const-string v2, "PicasaSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get auth token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_57
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 286
    :cond_62
    return-void

    .line 275
    :catch_63
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PicasaSync"

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 277
    const-string v2, "PicasaSync"

    const-string v3, "getAuthToken fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public setAccount(Ljava/lang/String;)Z
    .registers 4
    .parameter "user"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 290
    :cond_e
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->refreshAuthToken()V

    .line 296
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public stopSync()V
    .registers 2

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mStopSync:Z

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 302
    :cond_c
    return-void
.end method

.method public syncInterrupted()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/PicasaSyncHelper$SyncContext;->mStopSync:Z

    return v0
.end method
