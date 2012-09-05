.class Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;
.super Landroid/os/AsyncTask;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAllMailboxes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountKey:J

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;J)V
    .registers 4
    .parameter
    .parameter "accountId"

    .prologue
    .line 2964
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2965
    iput-wide p2, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->mAccountKey:J

    .line 2966
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .registers 10
    .parameter "params"

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$3000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type<64 AND type!=8 AND flagVisible=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->mAccountKey:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2961
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 2981
    if-eqz p1, :cond_41

    .line 2982
    :try_start_2
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAllMailboxParentIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2983
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2984
    :goto_f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2985
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2987
    .local v1, parentServerId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAllMailboxParentIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_f

    .line 2993
    .end local v1           #parentServerId:Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 2994
    .local v0, e:Ljava/lang/Exception;
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_3a

    .line 2997
    if-eqz p1, :cond_2d

    .line 2998
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3001
    :cond_2d
    return-void

    .line 2989
    :cond_2e
    :try_start_2e
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxListAdapter:Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$3000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment$MailboxListAdapter;->notifyDataSetChanged()V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_24

    .line 2997
    if-eqz p1, :cond_2d

    goto :goto_2a

    :catchall_3a
    move-exception v2

    if-eqz p1, :cond_40

    .line 2998
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2997
    :cond_40
    throw v2

    :cond_41
    if-eqz p1, :cond_2d

    goto :goto_2a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2961
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxListFragment$LoadAllMailboxes;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
