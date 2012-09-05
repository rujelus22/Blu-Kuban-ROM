.class public Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;
.super Ljava/lang/Object;
.source "KoreaSKTMessageInterface.java"

# interfaces
.implements Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;


# static fields
.field public static final MESSAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    const-string v0, "content://sec.message.mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "unread"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;->MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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

    .line 73
    if-nez p1, :cond_e

    .line 75
    const-string v0, "KoreaSKTMessageInterface"

    const-string v1, "getCount()"

    const-string v2, "context is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_d
    :goto_d
    return v8

    .line 79
    :cond_e
    const/4 v6, 0x0

    .line 81
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 85
    .local v8, unread:I
    :try_start_10
    const-string v0, "%1$s = \'%2$s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "package"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, where_mms:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/badge/BadgeManager;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/badge/BadgeColumn;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 88
    if-eqz v6, :cond_4d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4d

    .line 90
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v9, :cond_4d

    .line 94
    :cond_41
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v8, v0

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_5f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4a} :catch_54

    move-result v0

    if-nez v0, :cond_41

    .line 105
    :cond_4d
    if-eqz v6, :cond_d

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    const/4 v6, 0x0

    goto :goto_d

    .line 99
    .end local v3           #where_mms:Ljava/lang/String;
    :catch_54
    move-exception v7

    .line 101
    .local v7, e:Ljava/lang/Exception;
    :try_start_55
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5f

    .line 105
    if-eqz v6, :cond_d

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    const/4 v6, 0x0

    goto :goto_d

    .line 105
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_5f
    move-exception v0

    if-eqz v6, :cond_66

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    const/4 v6, 0x0

    :cond_66
    throw v0
.end method

.method public getIntent(ILandroid/content/Intent;)Landroid/content/Intent;
    .registers 7
    .parameter "type"
    .parameter "intent"

    .prologue
    .line 47
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v1, ret:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_38

    .line 67
    const/4 v2, 0x0

    :goto_9
    return-object v2

    .line 52
    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    .end local v1           #ret:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .restart local v1       #ret:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.mms.kor"

    const-string v3, "com.sec.android.mms.kor.GateActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    const-string v2, "ACTION"

    const-string v3, "Compose"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v2, v1

    .line 59
    goto :goto_9

    .line 62
    .end local v0           #component:Landroid/content/ComponentName;
    :pswitch_2b
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v1

    .line 65
    goto :goto_9

    .line 49
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_a
        :pswitch_2b
    .end packed-switch
.end method

.method public getMessageUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/sec/android/socialhub/feature/messaging/KoreaSKTMessageInterface;->MESSAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const-string v0, "com.sec.android.mms.kor"

    return-object v0
.end method

.method public isSupport(I)Z
    .registers 3
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 24
    packed-switch p1, :pswitch_data_6

    .line 29
    :pswitch_4
    return v0

    .line 24
    nop

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
