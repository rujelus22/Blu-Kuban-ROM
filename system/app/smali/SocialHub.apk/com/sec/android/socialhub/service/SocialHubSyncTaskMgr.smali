.class public Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;
.super Ljava/lang/Object;
.source "SocialHubSyncTaskMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;
    }
.end annotation


# instance fields
.field private mAllSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

.field private mEmailSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

.field private mIMSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

.field private mSnsSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mAllSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMsgSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 25
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mEmailSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 26
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mSnsSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 27
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mIMSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 29
    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    const-string v1, "AllSyncTask"

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mAllSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 34
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    const-string v1, "MsgSyncTask"

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMsgSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 35
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    const-string v1, "EmailSyncTask"

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mEmailSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 36
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    const-string v1, "SnsSyncTask"

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mSnsSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 37
    new-instance v0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    const-string v1, "IMSyncTask"

    invoke-direct {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mIMSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMap:Ljava/util/HashMap;

    .line 41
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mAllSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMsgSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mEmailSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mIMSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mSnsSync:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public checkPossibleSync(Landroid/os/Message;)Z
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 56
    const/4 v1, 0x0

    .line 58
    .local v1, message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/sec/android/socialhub/service/message/RequestMessage;

    if-eqz v4, :cond_c

    .line 60
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    .line 63
    .restart local v1       #message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :cond_c
    if-nez v1, :cond_18

    .line 65
    const-string v4, "SocialHubSyncTaskMgr"

    const-string v5, "checkPossibleSync()"

    const-string v6, "message is null!!"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_17
    return v3

    .line 69
    :cond_18
    iget-object v4, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->getAccountType(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, accountType:I
    const/4 v4, 0x3

    if-ne v0, v4, :cond_22

    .line 73
    const/4 v0, 0x2

    .line 76
    :cond_22
    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 78
    .local v2, task:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;
    if-nez v2, :cond_3a

    .line 80
    const-string v4, "SocialHubSyncTaskMgr"

    const-string v5, "checkPossibleSync()"

    const-string v6, "task is null!!"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 84
    :cond_3a
    invoke-virtual {v2, p1}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->checkPossibleSync(Landroid/os/Message;)Z

    move-result v3

    goto :goto_17
.end method

.method public endSync(Landroid/os/Handler;I)V
    .registers 11
    .parameter "handler"
    .parameter "reqID"

    .prologue
    .line 95
    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 96
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 98
    .local v1, key:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;

    .line 99
    .local v3, task:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;
    invoke-virtual {v3, p2}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->hasReqID(I)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 101
    invoke-virtual {v3, p1, p2}, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->endSync(Landroid/os/Handler;I)V

    .line 107
    .end local v1           #key:Ljava/lang/Integer;
    .end local v3           #task:Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;
    :goto_28
    return-void

    .line 106
    :cond_29
    const-string v4, "SocialHubSyncTaskMgr"

    const-string v5, "endSync()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqID - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not get sync"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method
