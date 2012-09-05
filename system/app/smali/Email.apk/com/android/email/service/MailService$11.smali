.class final Lcom/android/email/service/MailService$11;
.super Ljava/lang/Thread;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->updateBadgeProvider(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 1613
    iput-object p1, p0, Lcom/android/email/service/MailService$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1617
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const-string v6, "updateBadge"

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1619
    iget-object v5, p0, Lcom/android/email/service/MailService$11;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/email/service/MailService;->getCountofAccounts(Landroid/content/Context;)I

    move-result v0

    .line 1621
    .local v0, cnt:I
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/android/email/service/MailService$11;->setPriority(I)V

    .line 1624
    const-wide/16 v5, 0x3e8

    :try_start_16
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_69

    .line 1629
    :goto_19
    iget-object v5, p0, Lcom/android/email/service/MailService$11;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1631
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1633
    .local v3, newValues:Landroid/content/ContentValues;
    const-string v5, "package"

    const-string v6, "com.android.email"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const-string v5, "class"

    const-string v6, "com.android.email.activity.Welcome"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    const-string v5, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1639
    const-string v4, "package=\'com.android.email\' AND class=\'com.android.email.activity.Welcome\'"

    .line 1643
    .local v4, where:Ljava/lang/String;
    :try_start_3d
    const-string v5, "content://com.sec.badge/apps"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_60

    .line 1649
    :goto_47
    const-string v5, "Email-MailService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MailCountUpdate: updateBadgeProvider | Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    return-void

    .line 1645
    :catch_60
    move-exception v2

    .line 1646
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Email-MailService"

    const-string v6, "updateBadgeProvider failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 1626
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #newValues:Landroid/content/ContentValues;
    .end local v4           #where:Ljava/lang/String;
    :catch_69
    move-exception v5

    goto :goto_19
.end method
