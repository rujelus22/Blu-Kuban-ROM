.class Lcom/android/email/Controller$6;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->resetVisibleLimits()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;)V
    .registers 2
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 651
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 653
    .local v8, c:Landroid/database/Cursor;
    :try_start_b
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 657
    :cond_16
    :goto_16
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 658
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 659
    .local v6, accountId:J
    iget-object v1, p0, Lcom/android/email/Controller$6;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v7}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 660
    .local v10, protocol:Ljava/lang/String;
    const-string v1, "eas"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 661
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 662
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "visibleLimit"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_b .. :try_end_54} :catchall_55

    goto :goto_16

    .line 669
    .end local v6           #accountId:J
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #protocol:Ljava/lang/String;
    :catchall_55
    move-exception v1

    if-eqz v8, :cond_5b

    .line 670
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5b
    throw v1

    .line 669
    :cond_5c
    if-eqz v8, :cond_61

    .line 670
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 673
    :cond_61
    return-void
.end method
