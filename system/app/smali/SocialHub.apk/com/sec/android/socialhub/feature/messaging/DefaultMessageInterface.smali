.class public Lcom/sec/android/socialhub/feature/messaging/DefaultMessageInterface;
.super Ljava/lang/Object;
.source "DefaultMessageInterface.java"

# interfaces
.implements Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;


# static fields
.field public static final MESSAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 17
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/feature/messaging/DefaultMessageInterface;->MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getUnreadCount(Landroid/content/Context;)I
    .registers 13
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feature/messaging/DefaultMessageInterface;->getMessageUri()Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, sAllThreadsUri:Landroid/net/Uri;
    const-string v6, "unread_count"

    .line 82
    .local v6, Unread_count:Ljava/lang/String;
    const/4 v7, 0x0

    .line 84
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 88
    .local v9, unread:I
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sum("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sum(message_count)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 93
    if-nez v7, :cond_4b

    .line 95
    const-string v0, "DefaultMessageInterface"

    const-string v2, "getUnreadCount()"

    const-string v3, "cursor is null"

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_43} :catch_7c

    .line 114
    if-eqz v7, :cond_49

    .line 116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 117
    const/4 v7, 0x0

    :cond_49
    move v0, v10

    .line 121
    :goto_4a
    return v0

    .line 99
    :cond_4b
    :try_start_4b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    :cond_4e
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v9, v0

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 105
    const-string v0, "DefaultMessageInterface"

    const-string v2, "getUnreadCount()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unread = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_4b .. :try_end_74} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_74} :catch_7c

    .line 114
    if-eqz v7, :cond_7a

    .line 116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 117
    const/4 v7, 0x0

    :cond_7a
    :goto_7a
    move v0, v9

    .line 121
    goto :goto_4a

    .line 108
    :catch_7c
    move-exception v8

    .line 110
    .local v8, e:Ljava/lang/Exception;
    :try_start_7d
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_87

    .line 114
    if-eqz v7, :cond_7a

    .line 116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 117
    const/4 v7, 0x0

    goto :goto_7a

    .line 114
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_87
    move-exception v0

    if-eqz v7, :cond_8e

    .line 116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 117
    const/4 v7, 0x0

    :cond_8e
    throw v0
.end method


# virtual methods
.method public getCount(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "type"

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, count:I
    packed-switch p2, :pswitch_data_a

    .line 73
    :goto_4
    return v0

    .line 69
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/feature/messaging/DefaultMessageInterface;->getUnreadCount(Landroid/content/Context;)I

    move-result v0

    goto :goto_4

    .line 66
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public getIntent(ILandroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .parameter "type"
    .parameter "intent"

    .prologue
    .line 45
    packed-switch p1, :pswitch_data_30

    .line 58
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 48
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, ret:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/feature/messaging/DefaultMessageInterface;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "sms_body"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 45
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public getMessageUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/socialhub/feature/messaging/DefaultMessageInterface;->MESSAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string v0, "com.android.mms"

    return-object v0
.end method

.method public isSupport(I)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 22
    packed-switch p1, :pswitch_data_8

    .line 27
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 25
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 22
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method
