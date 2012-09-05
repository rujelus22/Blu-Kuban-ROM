.class Lcom/android/mms/data/Conversation$2;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Conversation;

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 502
    const-string v0, "Mms/Conversation"

    const-string v1, "markAsRead() thread"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 505
    :try_start_f
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_a2

    move-result v0

    if-eqz v0, :cond_20

    .line 507
    :try_start_17
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_a2
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_20} :catch_a7

    .line 512
    :cond_20
    :goto_20
    :try_start_20
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    if-eqz v0, :cond_92

    .line 513
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #calls: Lcom/android/mms/data/Conversation;->getReadContentValues()V
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$600(Lcom/android/mms/data/Conversation;)V

    .line 519
    const/4 v7, 0x1

    .line 521
    .local v7, needUpdate:Z
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$100(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "(read=0)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_a2

    move-result-object v6

    .line 523
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4e

    .line 525
    :try_start_44
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_9d

    move-result v0

    if-lez v0, :cond_9b

    const/4 v7, 0x1

    .line 527
    :goto_4b
    :try_start_4b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_4e
    if-eqz v7, :cond_8c

    .line 532
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update read for thread uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_4b .. :try_end_6a} :catchall_a2

    .line 536
    const-wide/16 v0, 0x3e8

    :try_start_6c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 537
    const-string v0, "Mms/Conversation"

    const-string v1, "update read DB : sleep"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_76} :catch_a5

    .line 541
    :goto_76
    :try_start_76
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    #getter for: Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$100(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$700()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "(read=0)"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 545
    :cond_8c
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->access$800(Lcom/android/mms/data/Conversation;Z)V

    .line 547
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #needUpdate:Z
    :cond_92
    monitor-exit v9
    :try_end_93
    .catchall {:try_start_76 .. :try_end_93} :catchall_a2

    .line 555
    const-string v0, "Mms/Conversation"

    const-string v1, "markAsRead() thread"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void

    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #needUpdate:Z
    :cond_9b
    move v7, v8

    .line 525
    goto :goto_4b

    .line 527
    :catchall_9d
    move-exception v0

    :try_start_9e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 547
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #needUpdate:Z
    :catchall_a2
    move-exception v0

    monitor-exit v9
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_a2

    throw v0

    .line 539
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #needUpdate:Z
    :catch_a5
    move-exception v0

    goto :goto_76

    .line 508
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #needUpdate:Z
    :catch_a7
    move-exception v0

    goto/16 :goto_20
.end method
