.class Lcom/android/email/activity/MailboxListFragment$5;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->deleteMailbox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v8, 0x0

    .line 1156
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1157
    const/4 v4, -0x1

    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$702(I)I

    .line 1158
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/email/activity/MailboxesAdapter;->setIsCreateOrRename(Z)V

    .line 1159
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z
    invoke-static {v4, v8}, Lcom/android/email/activity/MailboxListFragment;->access$302(Lcom/android/email/activity/MailboxListFragment;Z)Z

    .line 1160
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$800(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1161
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f080035

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1166
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 1167
    .local v0, controller:Lcom/android/email/Controller;
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v6, 0x7f080522

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/email/activity/MailboxListFragment;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/email/activity/MailboxListFragment;->access$900(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V

    .line 1169
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v4

    if-eqz v4, :cond_9d

    const-string v4, "eas"

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1170
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/email/Controller;->deleteFolder(J)Landroid/os/AsyncTask;

    .line 1171
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedMailboxId:J
    invoke-static {v6}, Lcom/android/email/activity/MailboxListFragment;->access$1200(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_9c

    .line 1173
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAccountId:J
    invoke-static {v6}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v6

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    #setter for: Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J
    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MailboxListFragment;->access$1302(Lcom/android/email/activity/MailboxListFragment;J)J

    .line 1174
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J
    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1300(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/android/email/activity/MailboxListFragment;->setSelectedMailbox(JZZ)V

    .line 1206
    :cond_9c
    :goto_9c
    return-void

    .line 1176
    :cond_9d
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v4

    if-eqz v4, :cond_9c

    const-string v4, "imap"

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 1177
    const/4 v2, 0x0

    .line 1179
    .local v2, deleteOfcurrentMailbox:Z
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxesAdapter;->getDeleteMode()Z

    move-result v4

    if-eqz v4, :cond_119

    .line 1181
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/MailboxesAdapter;->getSelectedSet()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1183
    .local v3, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v1, deleteIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_d5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 1185
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d5

    .line 1187
    :cond_e3
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #calls: Lcom/android/email/activity/MailboxListFragment;->deleteMailbox(Ljava/util/ArrayList;)Z
    invoke-static {v4, v1}, Lcom/android/email/activity/MailboxListFragment;->access$1500(Lcom/android/email/activity/MailboxListFragment;Ljava/util/ArrayList;)Z

    move-result v2

    .line 1189
    if-eqz v2, :cond_10f

    .line 1190
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAccountId:J
    invoke-static {v6}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v6

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    #setter for: Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J
    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MailboxListFragment;->access$1302(Lcom/android/email/activity/MailboxListFragment;J)J

    .line 1192
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J
    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1300(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/android/email/activity/MailboxListFragment;->setSelectedMailbox(JZZ)V

    .line 1195
    :cond_10f
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    goto :goto_9c

    .line 1198
    .end local v1           #deleteIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_119
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J
    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v5

    #calls: Lcom/android/email/activity/MailboxListFragment;->deleteMailbox(J)Z
    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MailboxListFragment;->access$1600(Lcom/android/email/activity/MailboxListFragment;J)Z

    move-result v2

    .line 1199
    if-eqz v2, :cond_9c

    .line 1200
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAccountId:J
    invoke-static {v6}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v6

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    #setter for: Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J
    invoke-static {v4, v5, v6}, Lcom/android/email/activity/MailboxListFragment;->access$1302(Lcom/android/email/activity/MailboxListFragment;J)J

    .line 1202
    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment$5;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->newMailboxId_toINBOX:J
    invoke-static {v5}, Lcom/android/email/activity/MailboxListFragment;->access$1300(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v8, v8}, Lcom/android/email/activity/MailboxListFragment;->setSelectedMailbox(JZZ)V

    goto/16 :goto_9c
.end method
