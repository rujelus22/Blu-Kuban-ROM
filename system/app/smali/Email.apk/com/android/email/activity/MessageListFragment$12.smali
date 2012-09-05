.class Lcom/android/email/activity/MessageListFragment$12;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->showSendingFailDetail(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2971
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$12;->this$0:Lcom/android/email/activity/MessageListFragment;

    iput-wide p2, p0, Lcom/android/email/activity/MessageListFragment$12;->val$messageId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 2974
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$12;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$1400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/Controller;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment$12;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v1

    .line 2976
    .local v1, draftsId:J
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$12;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/activity/MessageListFragment;->access$1500(Lcom/android/email/activity/MessageListFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2977
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2978
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "mailboxKey"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2979
    const-string v5, "mailboxType"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2980
    const-string v5, "syncServerId"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2981
    const-string v5, "retrySendTimes"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2982
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/android/email/activity/MessageListFragment$12;->val$messageId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2983
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v3, v4, v0, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2986
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$12;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-wide v6, p0, Lcom/android/email/activity/MessageListFragment$12;->val$messageId:J

    #calls: Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V
    invoke-static {v5, v1, v2, v6, v7}, Lcom/android/email/activity/MessageListFragment;->access$1600(Lcom/android/email/activity/MessageListFragment;JJ)V

    .line 2988
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2989
    return-void
.end method
