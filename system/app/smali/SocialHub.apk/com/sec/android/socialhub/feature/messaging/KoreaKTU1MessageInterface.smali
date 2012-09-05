.class public Lcom/sec/android/socialhub/feature/messaging/KoreaKTU1MessageInterface;
.super Lcom/sec/android/socialhub/feature/messaging/DefaultMessageInterface;
.source "KoreaKTU1MessageInterface.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sec/android/socialhub/feature/messaging/DefaultMessageInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount(Landroid/content/Context;I)I
    .registers 13
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 56
    if-nez p1, :cond_e

    .line 58
    const-string v0, "KoreaKTU1MessageInterface"

    const-string v1, "getCount()"

    const-string v2, "context is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_d
    :goto_d
    return v8

    .line 62
    :cond_e
    const/4 v6, 0x0

    .line 64
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 68
    .local v8, unread:I
    :try_start_10
    const-string v0, "%1$s = \'%2$s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "package"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/socialhub/feature/messaging/KoreaKTU1MessageInterface;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, where_mms:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/badge/BadgeManager;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/badge/BadgeColumn;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    if-eqz v6, :cond_4d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4d

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v9, :cond_4d

    .line 77
    :cond_41
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v8, v0

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_5f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4a} :catch_54

    move-result v0

    if-nez v0, :cond_41

    .line 88
    :cond_4d
    if-eqz v6, :cond_d

    .line 90
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    const/4 v6, 0x0

    goto :goto_d

    .line 82
    .end local v3           #where_mms:Ljava/lang/String;
    :catch_54
    move-exception v7

    .line 84
    .local v7, e:Ljava/lang/Exception;
    :try_start_55
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5f

    .line 88
    if-eqz v6, :cond_d

    .line 90
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    const/4 v6, 0x0

    goto :goto_d

    .line 88
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_5f
    move-exception v0

    if-eqz v6, :cond_66

    .line 90
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 91
    const/4 v6, 0x0

    :cond_66
    throw v0
.end method

.method public getIntent(ILandroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .parameter "type"
    .parameter "intent"

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, ret:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_3a

    .line 50
    const/4 v0, 0x0

    .end local v0           #ret:Landroid/content/Intent;
    :goto_9
    return-object v0

    .line 35
    .restart local v0       #ret:Landroid/content/Intent;
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feature/messaging/KoreaKTU1MessageInterface;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "sms_body"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 45
    :pswitch_2f
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 32
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_2f
    .end packed-switch
.end method

.method public isSupport(I)Z
    .registers 3
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 19
    packed-switch p1, :pswitch_data_6

    .line 24
    :pswitch_4
    return v0

    .line 19
    nop

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
