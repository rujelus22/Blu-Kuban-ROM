.class Lcom/android/email/activity/MailboxListFragment$19;
.super Landroid/os/Handler;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
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
    .line 2141
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$19;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 2144
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_60

    .line 2165
    :goto_6
    return-void

    .line 2146
    :pswitch_7
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$19;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$2200(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_56

    .line 2147
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$19;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MailboxListFragment$19;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2150
    .local v1, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$19;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$200(Lcom/android/email/activity/MailboxListFragment;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2151
    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    .line 2152
    :cond_33
    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 2153
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 2154
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2156
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$19;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2163
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_56
    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$19;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MailboxesAdapter;->notifyDataSetChanged()V

    goto :goto_6

    .line 2144
    :pswitch_data_60
    .packed-switch 0xfa0
        :pswitch_7
    .end packed-switch
.end method
