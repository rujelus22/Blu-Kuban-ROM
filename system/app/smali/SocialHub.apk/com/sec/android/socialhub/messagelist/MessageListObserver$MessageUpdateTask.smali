.class Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;
.super Landroid/os/AsyncTask;
.source "MessageListObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/messagelist/MessageListObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/AsyncQueryHandler;",
        "Ljava/lang/Void;",
        "Landroid/database/ContentObserver;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;


# direct methods
.method private constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 109
    const-string v0, "MessageUpdateTask"

    iput-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageListObserver;Lcom/sec/android/socialhub/messagelist/MessageListObserver$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;-><init>(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/AsyncQueryHandler;)Landroid/database/ContentObserver;
    .registers 12
    .parameter "arg0"

    .prologue
    .line 114
    const-string v0, "MessageUpdateTask"

    const-string v1, "doInBackground"

    const-string v3, "MessageTable is changed!!!"

    invoke-static {v0, v1, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #calls: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->checkRunningActivity()Z
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$100(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 119
    const-string v0, "MessageUpdateTask"

    const-string v1, "doInBackground"

    const-string v3, "mCurrent(tabstate) is null."

    invoke-static {v0, v1, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    .line 155
    :goto_21
    return-object v0

    .line 123
    :cond_22
    const/4 v8, 0x0

    .line 125
    .local v8, sortOrder:Ljava/lang/String;
    sget v0, Lcom/sec/android/socialhub/messagelist/MessageListView;->mListbyMode:I

    packed-switch v0, :pswitch_data_e4

    .line 137
    const-string v8, "date DESC"

    .line 141
    :goto_2a
    invoke-static {}, Lcom/sec/android/socialhub/badge/BadgeManager;->getInstance()Lcom/sec/android/socialhub/badge/BadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$200(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateLocalBadge(Landroid/content/Context;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mSelection:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$300(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mSelection:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$300(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bd

    .line 145
    const-string v2, "Observer"

    .line 146
    .local v2, ObserverTag:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mDeleteWrapper:Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$400(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/messagelist/MessageDeleteViewWrapper;->setListItemCount()V

    .line 147
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$700(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mToken:I
    invoke-static {v1}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$500(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)I

    move-result v1

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mProjection:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$600(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mSelection:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$300(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " LIMIT "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x9c4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "MessageUpdateTask"

    const-string v1, "doInBackground()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start query = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mSelection:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$300(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v2           #ObserverTag:Ljava/lang/String;
    :goto_ad
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    goto/16 :goto_21

    .line 128
    :pswitch_b1
    const-string v8, "date DESC"

    .line 129
    goto/16 :goto_2a

    .line 131
    :pswitch_b5
    const-string v8, "date ASC"

    .line 132
    goto/16 :goto_2a

    .line 134
    :pswitch_b9
    sget-object v8, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->SENDER_SORT_ORDER:Ljava/lang/String;

    .line 135
    goto/16 :goto_2a

    .line 152
    :cond_bd
    const-string v0, "MessageUpdateTask"

    const-string v1, "doInBackground"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mSelection:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$300(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". because of selection startQuery does not called."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    .line 125
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_b5
        :pswitch_b9
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 107
    check-cast p1, [Landroid/content/AsyncQueryHandler;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->doInBackground([Landroid/content/AsyncQueryHandler;)Landroid/database/ContentObserver;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .registers 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 175
    const-string v0, "MessageUpdateTask"

    const-string v1, "onCancelled()"

    const-string v2, "canceld!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method protected onPostExecute(Landroid/database/ContentObserver;)V
    .registers 5
    .parameter "observer"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$200(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    const-string v0, "MessageUpdateTask"

    const-string v1, "onPostExecute()"

    const-string v2, "register Observer!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 107
    check-cast p1, Landroid/database/ContentObserver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->onPostExecute(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageListObserver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/socialhub/messagelist/MessageListObserver;->access$200(Lcom/sec/android/socialhub/messagelist/MessageListObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/messagelist/MessageListObserver$MessageUpdateTask;->this$0:Lcom/sec/android/socialhub/messagelist/MessageListObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 161
    const-string v0, "MessageUpdateTask"

    const-string v1, "onPreExecute()"

    const-string v2, "unregister Observer!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method
