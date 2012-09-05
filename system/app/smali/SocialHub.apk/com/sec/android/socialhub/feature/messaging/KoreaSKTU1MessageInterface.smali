.class public Lcom/sec/android/socialhub/feature/messaging/KoreaSKTU1MessageInterface;
.super Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;
.source "KoreaSKTU1MessageInterface.java"


# static fields
.field public static final MESSAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, "content://com.sec.mms.provider/unread_count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTU1MessageInterface;->MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;-><init>()V

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

    .line 59
    if-nez p1, :cond_e

    .line 61
    const-string v0, "KoreaSKTU1MessageInterface"

    const-string v1, "getCount()"

    const-string v2, "context is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_d
    :goto_d
    return v8

    .line 65
    :cond_e
    const/4 v6, 0x0

    .line 67
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 71
    .local v8, unread:I
    :try_start_10
    const-string v0, "%1$s = \'%2$s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "package"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTU1MessageInterface;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, where_mms:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/badge/BadgeManager;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/badge/BadgeColumn;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    if-eqz v6, :cond_4d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4d

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v9, :cond_4d

    .line 80
    :cond_41
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v8, v0

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_5f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4a} :catch_54

    move-result v0

    if-nez v0, :cond_41

    .line 91
    :cond_4d
    if-eqz v6, :cond_d

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    const/4 v6, 0x0

    goto :goto_d

    .line 85
    .end local v3           #where_mms:Ljava/lang/String;
    :catch_54
    move-exception v7

    .line 87
    .local v7, e:Ljava/lang/Exception;
    :try_start_55
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5f

    .line 91
    if-eqz v6, :cond_d

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    const/4 v6, 0x0

    goto :goto_d

    .line 91
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_5f
    move-exception v0

    if-eqz v6, :cond_66

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    const/4 v6, 0x0

    :cond_66
    throw v0
.end method

.method public getIntent(ILandroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .parameter "type"
    .parameter "intent"

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v0, ret:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_34

    .line 53
    const/4 v0, 0x0

    .end local v0           #ret:Landroid/content/Intent;
    :goto_9
    return-object v0

    .line 39
    .restart local v0       #ret:Landroid/content/Intent;
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTU1MessageInterface;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "sms_body"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 48
    :pswitch_28
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 36
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_a
        :pswitch_28
    .end packed-switch
.end method

.method public getMessageUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTU1MessageInterface;->MESSAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    const-string v0, "com.sec.mms"

    return-object v0
.end method
