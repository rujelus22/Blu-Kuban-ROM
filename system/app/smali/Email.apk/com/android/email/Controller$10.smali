.class Lcom/android/email/Controller$10;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->moveMessages([JJ)Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$messageIds:[J

.field final synthetic val$newMailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;[JJ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$10;->val$messageIds:[J

    iput-wide p3, p0, Lcom/android/email/Controller$10;->val$newMailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 838
    iget-object v9, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/Controller$10;->val$messageIds:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 839
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_53

    .line 840
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 841
    .local v2, cv:Landroid/content/ContentValues;
    const-string v9, "mailboxKey"

    iget-wide v10, p0, Lcom/android/email/Controller$10;->val$newMailboxId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 842
    iget-object v9, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 843
    .local v7, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/email/Controller$10;->val$messageIds:[J

    .local v1, arr$:[J
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_30
    if-ge v3, v4, :cond_40

    aget-wide v5, v1, v3

    .line 844
    .local v5, messageId:J
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 846
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v7, v8, v2, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 843
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 848
    .end local v5           #messageId:J
    .end local v8           #uri:Landroid/net/Uri;
    :cond_40
    iget-object v9, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    invoke-virtual {v9, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/Account;)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 849
    iget-object v9, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;
    invoke-static {v9}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v9

    iget-wide v10, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v9, v10, v11}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    .line 852
    .end local v1           #arr$:[J
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :cond_53
    return-void
.end method
