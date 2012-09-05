.class Lcom/android/email/activity/MailboxListFragment$12;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->createMailboxDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;

.field final synthetic val$root:Z

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;Landroid/widget/EditText;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$12;->val$text:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/android/email/activity/MailboxListFragment$12;->val$root:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 18
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1511
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1512
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$12;->val$text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1514
    .local v9, folderName:Ljava/lang/String;
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1516
    .local v14, temp:[Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c3

    array-length v0, v14

    if-lez v0, :cond_c3

    .line 1518
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v8

    .line 1519
    .local v8, controller:Lcom/android/email/Controller;
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$1700(Lcom/android/email/activity/MailboxListFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$12;->val$text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1520
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v2, 0x7f080520

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/email/activity/MailboxListFragment;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MailboxListFragment;->access$900(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V

    .line 1521
    const-wide/16 v10, -0x1

    .line 1522
    .local v10, newFolderId:J
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment$12;->val$root:Z

    if-eqz v0, :cond_ac

    .line 1523
    const-wide/16 v12, -0x1

    .line 1524
    .local v12, rootId:J
    const/4 v7, 0x0

    .line 1525
    .local v7, c:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayName=\'__eas\' AND accountKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1528
    .local v3, selection:Ljava/lang/String;
    :try_start_6a
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1529
    .local v6, a:Landroid/app/Activity;
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1533
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1534
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_8e
    .catchall {:try_start_6a .. :try_end_8e} :catchall_9f

    move-result-wide v12

    .line 1537
    :cond_8f
    if-eqz v7, :cond_9a

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 1538
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1541
    :cond_9a
    move-wide v10, v12

    .line 1546
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #a:Landroid/app/Activity;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v12           #rootId:J
    :goto_9b
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/email/Controller;->createFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;

    .line 1551
    .end local v8           #controller:Lcom/android/email/Controller;
    .end local v10           #newFolderId:J
    :goto_9e
    return-void

    .line 1537
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #controller:Lcom/android/email/Controller;
    .restart local v10       #newFolderId:J
    .restart local v12       #rootId:J
    :catchall_9f
    move-exception v0

    if-eqz v7, :cond_ab

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 1538
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1537
    :cond_ab
    throw v0

    .line 1543
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v12           #rootId:J
    :cond_ac
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$1800(Lcom/android/email/activity/MailboxListFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getId()J

    move-result-wide v10

    goto :goto_9b

    .line 1548
    .end local v8           #controller:Lcom/android/email/Controller;
    .end local v10           #newFolderId:J
    :cond_c3
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$12;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v2, 0x7f080386

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9e
.end method
