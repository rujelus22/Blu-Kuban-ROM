.class public Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;
.super Ljava/lang/Object;
.source "SocialHubSyncTaskMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncTask"
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field private mCnt:I

.field private mKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMsg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mCnt:I

    .line 120
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mMsg:Ljava/util/HashMap;

    .line 123
    return-void
.end method


# virtual methods
.method public checkPossibleSync(Landroid/os/Message;)Z
    .registers 10
    .parameter "orgMsg"

    .prologue
    const/4 v7, 0x2

    .line 187
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 188
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 189
    iget v3, p1, Landroid/os/Message;->what:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    const/4 v2, 0x1

    .line 195
    .local v2, ret:Z
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/sec/android/socialhub/service/message/RequestMessage;

    if-eqz v3, :cond_1a

    .line 197
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    check-cast v0, Lcom/sec/android/socialhub/service/message/RequestMessage;

    .line 200
    .restart local v0       #message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :cond_1a
    if-nez v0, :cond_4c

    .line 202
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "checkPossibleSync()"

    const-string v5, "message is null!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v2, 0x0

    .line 239
    :cond_26
    :goto_26
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    .line 241
    iget v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mCnt:I

    .line 242
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "checkPossibleSync()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task will be started. so task cnt - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_4b
    return v2

    .line 207
    :cond_4c
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "checkPossibleSync()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], reqID - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", before key size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v7, :cond_f4

    .line 211
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mMsg:Ljava/util/HashMap;

    iget v4, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 213
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    iget v4, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mMsg:Ljava/util/HashMap;

    iget v4, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_b0
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "checkPossibleSync()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] after key size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_dc
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v7, :cond_26

    .line 226
    iget v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mCnt:I

    if-nez v3, :cond_118

    .line 228
    const/4 v2, 0x1

    .line 229
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "checkPossibleSync()"

    const-string v5, "task count is 0! so start to sync!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 220
    :cond_f4
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "checkPossibleSync()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] already queue size is over limit."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v2, 0x0

    goto :goto_dc

    .line 233
    :cond_118
    const/4 v2, 0x0

    .line 234
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "checkPossibleSync()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key size is 2 and task count is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", so do not sync"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26
.end method

.method public endSync(Landroid/os/Handler;I)V
    .registers 11
    .parameter "handler"
    .parameter "reqID"

    .prologue
    const/4 v7, 0x0

    .line 143
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 145
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 146
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mMsg:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mCnt:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mCnt:I

    .line 148
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "endSync()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reqId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sync is completed. so task cnt - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", keySize - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msg - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mMsg:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c7

    .line 152
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mMsg:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 153
    .local v1, msg:Landroid/os/Message;
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/socialhub/service/message/RequestMessage;

    .line 154
    .local v2, req:Lcom/sec/android/socialhub/service/message/RequestMessage;
    if-nez v2, :cond_c8

    .line 156
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    .local v0, key:I
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mMsg:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "endSync()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remain key - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but has no valid message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v0           #key:I
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #req:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :cond_c7
    :goto_c7
    return-void

    .line 163
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #req:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :cond_c8
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "endSync()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sync task is in queue. reqID - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7

    .line 174
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #req:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :cond_e8
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v4, "endSync()"

    const-string v5, "it\'s not possible case!! something wrong!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c7
.end method

.method public hasReqID(I)Z
    .registers 7
    .parameter "reqID"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->mKey:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 133
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSyncTaskMgr$SyncTask;->TAG:Ljava/lang/String;

    const-string v2, "hasReqID()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reqID - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contains - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return v0
.end method
