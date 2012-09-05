.class public Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;
.super Ljava/lang/Object;
.source "PicasaSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncContext"
.end annotation


# instance fields
.field public api:Lcom/google/android/picasasync/PicasaApi;

.field private mAccount:Landroid/accounts/Account;

.field private mAuthToken:Ljava/lang/String;

.field private volatile mStopSync:Z

.field private mThread:Ljava/lang/Thread;

.field public result:Landroid/content/SyncResult;

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PicasaSyncHelper;Landroid/content/SyncResult;Ljava/lang/Thread;)V
    .registers 6
    .parameter
    .parameter "syncResult"
    .parameter "thread"

    .prologue
    .line 592
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncResult;

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    .line 594
    new-instance v0, Lcom/google/android/picasasync/PicasaApi;

    #getter for: Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$200(Lcom/google/android/picasasync/PicasaSyncHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/PicasaApi;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/picasasync/PicasaApi;

    .line 595
    iput-object p3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mThread:Ljava/lang/Thread;

    .line 596
    return-void
.end method


# virtual methods
.method public refreshAuthToken()V
    .registers 8

    .prologue
    .line 599
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->this$0:Lcom/google/android/picasasync/PicasaSyncHelper;

    #getter for: Lcom/google/android/picasasync/PicasaSyncHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/picasasync/PicasaSyncHelper;->access$200(Lcom/google/android/picasasync/PicasaSyncHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 600
    .local v1, manager:Landroid/accounts/AccountManager;
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 601
    const-string v2, "com.google"

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_15
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    .line 606
    :try_start_18
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    const-string v3, "lh2"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    .line 608
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->api:Lcom/google/android/picasasync/PicasaApi;

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/PicasaApi;->setAuthToken(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2a} :catch_5a

    .line 612
    :goto_2a
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    if-nez v2, :cond_59

    .line 613
    const-string v2, "PicasaSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get auth token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->result:Landroid/content/SyncResult;

    iget-object v2, v2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 616
    :cond_59
    return-void

    .line 609
    :catch_5a
    move-exception v0

    .line 610
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PicasaSync"

    const-string v3, "getAuthToken fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method public setAccount(Ljava/lang/String;)Z
    .registers 4
    .parameter "user"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 620
    :cond_e
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAccount:Landroid/accounts/Account;

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

    .line 624
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->refreshAuthToken()V

    .line 626
    :cond_1d
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mAuthToken:Ljava/lang/String;

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
    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mStopSync:Z

    .line 631
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 632
    :cond_c
    return-void
.end method

.method public syncInterrupted()Z
    .registers 2

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/google/android/picasasync/PicasaSyncHelper$SyncContext;->mStopSync:Z

    return v0
.end method
