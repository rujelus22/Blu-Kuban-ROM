.class Lcom/android/email/NotificationController$AccountContentObserver;
.super Landroid/database/ContentObserver;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountContentObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 730
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 731
    iput-object p2, p0, Lcom/android/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    .line 732
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 15
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x0

    .line 736
    iget-object v1, p0, Lcom/android/email/NotificationController$AccountContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 737
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "flags&1 != 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 740
    .local v8, c:Landroid/database/Cursor;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 741
    .local v10, newAccountList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 742
    .local v12, removedAccountList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-nez v8, :cond_26

    .line 744
    const-string v1, "Email"

    const-string v2, "#onChange(); NULL response for account id query"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_25
    return-void

    .line 748
    :cond_26
    :goto_26
    :try_start_26
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 749
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 750
    .local v6, accountId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_39

    goto :goto_26

    .line 753
    .end local v6           #accountId:J
    :catchall_39
    move-exception v1

    if-eqz v8, :cond_3f

    .line 754
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v1

    .line 753
    :cond_40
    if-eqz v8, :cond_45

    .line 754
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 760
    :cond_45
    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v1

    #getter for: Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$600(Lcom/android/email/NotificationController;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_55
    :goto_55
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 761
    .restart local v6       #accountId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 763
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 767
    .end local v6           #accountId:J
    :cond_77
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 768
    .restart local v6       #accountId:J
    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v1

    #calls: Lcom/android/email/NotificationController;->registerMessageNotification(J)V
    invoke-static {v1, v6, v7}, Lcom/android/email/NotificationController;->access$400(Lcom/android/email/NotificationController;J)V

    goto :goto_7b

    .line 771
    .end local v6           #accountId:J
    :cond_93
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_97
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 772
    .restart local v6       #accountId:J
    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v1

    #calls: Lcom/android/email/NotificationController;->unregisterMessageNotification(J)V
    invoke-static {v1, v6, v7}, Lcom/android/email/NotificationController;->access$100(Lcom/android/email/NotificationController;J)V

    .line 773
    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v1

    #calls: Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I
    invoke-static {v1, v6, v7}, Lcom/android/email/NotificationController;->access$700(Lcom/android/email/NotificationController;J)I

    move-result v11

    .line 774
    .local v11, notificationId:I
    invoke-static {}, Lcom/android/email/NotificationController;->access$900()Lcom/android/email/NotificationController;

    move-result-object v1

    #getter for: Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$800(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_97
.end method
