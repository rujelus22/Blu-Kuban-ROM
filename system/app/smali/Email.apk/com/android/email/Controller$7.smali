.class Lcom/android/email/Controller$7;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->loadMoreMessages(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$7;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 686
    iget-object v4, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/Controller$7;->val$mailboxId:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 687
    .local v2, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v2, :cond_10

    .line 712
    :cond_f
    :goto_f
    return-void

    .line 690
    :cond_10
    iget v4, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_20

    .line 692
    :try_start_16
    iget-object v4, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    iget-wide v5, v2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v4, v5, v6}, Lcom/android/email/Controller;->searchMore(J)V
    :try_end_1d
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_f

    .line 693
    :catch_1e
    move-exception v4

    goto :goto_f

    .line 698
    :cond_20
    iget-object v4, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 700
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_f

    .line 704
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 705
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "field"

    const-string v5, "visibleLimit"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v4, "add"

    const/16 v5, 0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    sget-object v4, Lcom/android/emailcommon/provider/Mailbox;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/email/Controller$7;->val$mailboxId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 708
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 710
    iget v4, v2, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    add-int/lit8 v4, v4, 0x19

    iput v4, v2, Lcom/android/emailcommon/provider/Mailbox;->mVisibleLimit:I

    .line 711
    iget-object v4, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;
    invoke-static {v4}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/Controller$7;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;
    invoke-static {v5}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v5

    invoke-virtual {v4, v0, v2, v5}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/email/MessagingListener;)V

    goto :goto_f
.end method
