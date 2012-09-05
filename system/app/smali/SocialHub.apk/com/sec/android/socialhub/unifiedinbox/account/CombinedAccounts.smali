.class public Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;
.super Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
.source "CombinedAccounts.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final EMAIL_MAILBOX_CONTENT_URI:Landroid/net/Uri;

.field public static final EMAIL_MESSAGE_CONTENT_URI:Landroid/net/Uri;

.field private static final NATIVE_EMAIL_URI:Landroid/net/Uri;

.field private static final OBSERVER_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private messageObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->CONTENT_URI:Landroid/net/Uri;

    .line 51
    sget-object v0, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->EMAIL_ACCOUNT_UPDATE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->OBSERVER_CONTENT_URI:Landroid/net/Uri;

    .line 53
    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->EMAIL_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "content://com.android.email.provider/mailbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->EMAIL_MAILBOX_CONTENT_URI:Landroid/net/Uri;

    .line 59
    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->NATIVE_EMAIL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter "ctx"
    .parameter "handle"

    .prologue
    .line 70
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "app=\'2_Email\'"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)V

    .line 71
    const-string v0, "CombinedAccounts"

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->unregisterObserver()V

    .line 73
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->OBSERVER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->registerObserver(Landroid/net/Uri;Landroid/os/Handler;)V

    .line 74
    return-void
.end method

.method private doActionForEmail(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
    .registers 16
    .parameter "context"
    .parameter "item"
    .parameter "type"

    .prologue
    .line 202
    const-string v8, "_id"

    .line 204
    .local v8, id:Ljava/lang/String;
    iget-object v0, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 206
    .local v10, messageId:J
    const/4 v6, 0x0

    .line 207
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v9, intent:Landroid/content/Intent;
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/contents/EmailContents;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    if-eqz v6, :cond_51

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 216
    const/4 v6, 0x0

    .line 224
    packed-switch p3, :pswitch_data_a6

    .line 246
    :goto_42
    :pswitch_42
    const-string v0, "message_id"

    invoke-virtual {v9, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 248
    invoke-virtual {p1, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4a} :catch_70

    .line 256
    if-eqz v6, :cond_50

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    :goto_4f
    const/4 v6, 0x0

    .line 262
    :cond_50
    return-void

    .line 220
    :cond_51
    :try_start_51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_64
    .catchall {:try_start_51 .. :try_end_64} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_64} :catch_70

    .line 256
    if-eqz v6, :cond_50

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4f

    .line 227
    :pswitch_6a
    :try_start_6a
    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6f} :catch_70

    goto :goto_42

    .line 250
    :catch_70
    move-exception v7

    .line 252
    .local v7, e:Ljava/lang/Exception;
    :try_start_71
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_80

    .line 256
    if-eqz v6, :cond_50

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4f

    .line 231
    .end local v7           #e:Ljava/lang/Exception;
    :pswitch_7a
    :try_start_7a
    const-string v0, "com.android.email.intent.action.REPLY"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7f} :catch_70

    goto :goto_42

    .line 256
    :catchall_80
    move-exception v0

    if-eqz v6, :cond_87

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    const/4 v6, 0x0

    .line 256
    :cond_87
    throw v0

    .line 235
    :pswitch_88
    :try_start_88
    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_42

    .line 239
    :pswitch_8e
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v0, "vnd.android.cursor.item/email"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v0, "com.android.email.LogProvider"

    const-string v1, "com.android.email.LogProvider"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v0, "com.android.email.MessageView_message_id"

    invoke-virtual {v9, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_a4
    .catchall {:try_start_88 .. :try_end_a4} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_a4} :catch_70

    goto :goto_42

    .line 224
    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_7a
        :pswitch_88
        :pswitch_42
        :pswitch_42
        :pswitch_6a
    .end packed-switch
.end method

.method public static isExistPackage(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 981
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.seven.Z7"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_c

    .line 982
    const/4 v1, 0x1

    .line 987
    :goto_b
    return v1

    .line 984
    :catch_c
    move-exception v0

    .line 986
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "CombinedAccounts"

    const-string v2, "isExistPackage()"

    const-string v3, "Seven Service does not exist."

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private updateDisplayName()V
    .registers 12

    .prologue
    .line 279
    const/4 v6, 0x0

    .line 283
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 292
    if-eqz v6, :cond_7f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 296
    :cond_25
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v9, value:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(app=\'2_Email\' or app = \'3_SevenEmail\') and real_email_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 301
    .local v10, where:Ljava/lang/String;
    const-string v0, "display_name"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v10, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 307
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    .line 308
    .local v7, dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->displayName:Ljava/lang/String;

    .line 311
    .end local v7           #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :cond_79
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7c} :catch_86

    move-result v0

    if-nez v0, :cond_25

    .line 320
    .end local v9           #value:Landroid/content/ContentValues;
    .end local v10           #where:Ljava/lang/String;
    :cond_7f
    if-eqz v6, :cond_85

    .line 322
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    :goto_84
    const/4 v6, 0x0

    .line 326
    :cond_85
    return-void

    .line 314
    :catch_86
    move-exception v8

    .line 316
    .local v8, e:Ljava/lang/Exception;
    :try_start_87
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_90

    .line 320
    if-eqz v6, :cond_85

    .line 322
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_84

    .line 320
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_90
    move-exception v0

    if-eqz v6, :cond_97

    .line 322
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    const/4 v6, 0x0

    .line 320
    :cond_97
    throw v0
.end method


# virtual methods
.method public addAccount(Landroid/database/Cursor;Z)V
    .registers 29
    .parameter "email"
    .parameter "isCombined"

    .prologue
    .line 415
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 416
    .local v24, count:I
    const/4 v7, 0x0

    .line 418
    .local v7, emailID:I
    if-gtz v24, :cond_11

    .line 420
    const-string v2, "CombinedAccounts"

    const-string v3, "addAccount()"

    const-string v4, "email count is 0"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :goto_10
    return-void

    .line 424
    :cond_11
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 428
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19a

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->isEASAccounts(Landroid/content/Context;I)I

    move-result v11

    .line 434
    .local v11, is_eas:I
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_159

    .line 436
    const/16 v23, 0x0

    .line 439
    .local v23, c:Landroid/database/Cursor;
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->NATIVE_EMAIL_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxEmailProvider;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sevenAccountKey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 448
    const/4 v1, 0x0

    .line 450
    .local v1, value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    if-eqz v23, :cond_7a

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_f3

    .line 452
    :cond_7a
    const-string v2, "CombinedAccounts"

    const-string v3, "onUpdate()"

    const-string v4, "it\'s native account!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    .end local v1           #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    const-string v2, "2_Email"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    .line 470
    .restart local v1       #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    iput v7, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    .line 473
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->insertAccountToDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8
    .catchall {:try_start_3a .. :try_end_b8} :catchall_150
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_b8} :catch_145

    .line 517
    :goto_b8
    if-eqz v23, :cond_bf

    .line 519
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 520
    .end local v1           #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :goto_bd
    const/16 v23, 0x0

    .line 553
    .end local v23           #c:Landroid/database/Cursor;
    :cond_bf
    :goto_bf
    const-string v2, "CombinedAccounts"

    const-string v3, "onUpdate()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inserted account id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", account size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .end local v11           #is_eas:I
    :goto_eb
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_10

    .line 480
    .restart local v1       #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .restart local v11       #is_eas:I
    .restart local v23       #c:Landroid/database/Cursor;
    :cond_f3
    :try_start_f3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    .line 482
    const/4 v2, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 484
    .local v18, sevenId:I
    const-string v2, "CombinedAccounts"

    const-string v3, "onUpdate()"

    const-string v4, "it\'s seven account!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    .end local v1           #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    const-string v13, "3_SevenEmail"

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v1

    move/from16 v22, v11

    invoke-direct/range {v12 .. v22}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    .line 500
    .restart local v1       #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    iput v7, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    .line 502
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->updateAccountToDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_143
    .catchall {:try_start_f3 .. :try_end_143} :catchall_150
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_143} :catch_145

    goto/16 :goto_b8

    .line 511
    .end local v1           #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .end local v18           #sevenId:I
    :catch_145
    move-exception v25

    .line 513
    .local v25, e:Ljava/lang/Exception;
    :try_start_146
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_149
    .catchall {:try_start_146 .. :try_end_149} :catchall_150

    .line 517
    if-eqz v23, :cond_bf

    .line 519
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_bd

    .line 517
    .end local v25           #e:Ljava/lang/Exception;
    :catchall_150
    move-exception v2

    if-eqz v23, :cond_158

    .line 519
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 520
    const/16 v23, 0x0

    .line 517
    :cond_158
    throw v2

    .line 526
    .end local v23           #c:Landroid/database/Cursor;
    :cond_159
    const-string v2, "CombinedAccounts"

    const-string v3, "onUpdate()"

    const-string v4, "it\'s native account!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/4 v1, 0x0

    .line 530
    .restart local v1       #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    .end local v1           #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    const-string v2, "2_Email"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    .line 544
    .restart local v1       #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    iput v7, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->insertAccountToDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_bf

    .line 558
    .end local v1           #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .end local v11           #is_eas:I
    :cond_19a
    const-string v2, "CombinedAccounts"

    const-string v3, "onUpdate()"

    const-string v4, "Already contains it."

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_eb
.end method

.method public addAccountWizard(Ljava/util/ArrayList;)Z
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 994
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z

    move-result v8

    .line 996
    .local v8, isPremium:Z
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v2, 0x0

    const v5, 0x7f080077

    move v3, v1

    move v4, v1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 1007
    .local v0, title:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    if-eqz p1, :cond_17

    .line 1009
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->getAppType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getLocalISP(Ljava/lang/String;)Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;

    move-result-object v9

    .line 1014
    .local v9, isp:Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;
    if-eqz v9, :cond_2e

    .line 1015
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->getAppType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v9, v2, v3, p1, v4}, Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;->addSpList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 1017
    :cond_2e
    return v1
.end method

.method public createAccount()V
    .registers 5

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->onUpdate()V

    .line 270
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateAccountBadge(Landroid/content/Context;ILandroid/net/Uri;Z)V

    .line 274
    const-string v0, "CombinedAccounts"

    const-string v1, "createAccount()"

    const-string v2, "is called."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public drawAccount(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1080
    iget-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getUinboxIDFromAccount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1081
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getDrawableByISP(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 1082
    invoke-static {p1, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getISPStringFromUinboxID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 1083
    iget-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1084
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    .line 1085
    iget-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/ListColorView;->setAccountColor(I)V

    .line 1087
    iget-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1088
    iget-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    :goto_49
    return-void

    .line 1094
    :cond_4a
    iget-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_49
.end method

.method public getAppType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1073
    const-string v0, "2_Email"

    return-object v0
.end method

.method public getCombinedEmailCursor()Landroid/database/Cursor;
    .registers 10

    .prologue
    .line 351
    const/4 v7, 0x0

    .line 355
    .local v7, ret:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->NATIVE_EMAIL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxEmailProvider;->PROJECTION:[Ljava/lang/String;

    const-string v3, "sevenAccountKey <= 0"

    const/4 v4, 0x0

    const-string v5, "accountKey ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 357
    const-string v0, "CombinedAccounts"

    const-string v1, "getCombinedEmailCursor()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " account num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_37

    :goto_35
    move-object v8, v7

    .line 365
    .end local v7           #ret:Landroid/database/Cursor;
    .local v8, ret:Landroid/database/Cursor;
    return-object v8

    .line 359
    .end local v8           #ret:Landroid/database/Cursor;
    .restart local v7       #ret:Landroid/database/Cursor;
    :catch_37
    move-exception v6

    .line 361
    .local v6, e:Ljava/lang/Exception;
    :try_start_38
    const-string v0, "CombinedAccounts"

    const-string v1, "getCombinedEmailCursor()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_38 .. :try_end_56} :catchall_57

    goto :goto_35

    .line 365
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_57
    move-exception v0

    goto :goto_35
.end method

.method public getNumberOfAccount()I
    .registers 8

    .prologue
    .line 331
    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 333
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 335
    .local v0, count:I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 337
    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    .line 338
    .local v1, dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    iget-object v5, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    const-string v6, "2_Email"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v5, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    const-string v6, "3_SevenEmail"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 341
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 345
    .end local v1           #dto:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .end local v3           #key:Ljava/lang/String;
    :cond_3a
    return v0
.end method

.method public insertAccountToDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    .registers 9
    .parameter "account"

    .prologue
    const/4 v6, 0x0

    .line 880
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 882
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "email"

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v2, "account"

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->account:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v2, "account_id"

    iget v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 885
    const-string v2, "user_name"

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->user_name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v2, "app"

    const-string v3, "2_Email"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v2, "last_id"

    iget v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->last_email:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 888
    const-string v2, "unread"

    iget v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->unread:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    const-string v2, "new"

    iget v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->is_new:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string v2, "real_email_id"

    iget v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 891
    const-string v2, "support_msg"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    const-string v2, "app_type"

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 895
    const-string v2, "is_eas"

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    iget v4, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->isEASAccounts(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v1, v3, v6, v4}, Lcom/sec/android/socialhub/unifiedinbox/UinboxOrder;->makeOrder(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;I)V

    .line 901
    :try_start_87
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 902
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v2, "CombinedAccounts"

    const-string v3, "insertAccountToDB()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inserted account is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_87 .. :try_end_b5} :catchall_e9
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b5} :catch_c1

    .line 911
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    :goto_bd
    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 913
    return-void

    .line 905
    :catch_c1
    move-exception v0

    .line 907
    .local v0, e:Ljava/lang/Exception;
    :try_start_c2
    const-string v2, "CombinedAccounts"

    const-string v3, "insertAccountToDB()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_c2 .. :try_end_e0} :catchall_e9

    .line 911
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_bd

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_e9
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    throw v2
.end method

.method public isEASAccounts(Landroid/content/Context;I)I
    .registers 14
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1028
    const/4 v6, 0x0

    .line 1031
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/contents/EmailContents$HostAuthColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "protocol"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "accountKey"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1045
    if-eqz v6, :cond_42

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3f} :catch_5f

    move-result v0

    if-nez v0, :cond_49

    .line 1061
    :cond_42
    if-eqz v6, :cond_47

    .line 1063
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_47
    move v0, v10

    .line 1066
    :goto_48
    return v0

    .line 1048
    :cond_49
    const/4 v0, 0x1

    :try_start_4a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1050
    .local v8, protocol:Ljava/lang/String;
    if-eqz v8, :cond_71

    const-string v0, "eas"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_55} :catch_5f

    move-result v0

    if-eqz v0, :cond_71

    .line 1061
    if-eqz v6, :cond_5d

    .line 1063
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5d
    move v0, v9

    .line 1052
    goto :goto_48

    .line 1055
    .end local v8           #protocol:Ljava/lang/String;
    :catch_5f
    move-exception v7

    .line 1057
    .local v7, e:Ljava/lang/Exception;
    :try_start_60
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_6a

    .line 1061
    if-eqz v6, :cond_68

    .line 1063
    .end local v7           #e:Ljava/lang/Exception;
    :goto_65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_68
    move v0, v10

    .line 1066
    goto :goto_48

    .line 1061
    :catchall_6a
    move-exception v0

    if-eqz v6, :cond_70

    .line 1063
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1061
    :cond_70
    throw v0

    .restart local v8       #protocol:Ljava/lang/String;
    :cond_71
    if-eqz v6, :cond_68

    goto :goto_65
.end method

.method public isExistPackage()Z
    .registers 5

    .prologue
    .line 967
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.seven.Z7"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    .line 968
    const/4 v1, 0x1

    .line 973
    :goto_d
    return v1

    .line 970
    :catch_e
    move-exception v0

    .line 972
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "CombinedAccounts"

    const-string v2, "isExistPackage()"

    const-string v3, "Seven Service does not exist."

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isSupport(I)Z
    .registers 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 80
    sparse-switch p1, :sswitch_data_a

    .line 104
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v0

    :sswitch_8
    return v0

    .line 80
    nop

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_8
        0x3 -> :sswitch_8
        0x4 -> :sswitch_8
        0x5 -> :sswitch_8
        0x6 -> :sswitch_8
        0x15 -> :sswitch_8
    .end sparse-switch
.end method

.method public onClickCompose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .parameter "context"
    .parameter "app"
    .parameter "email"
    .parameter "accountId"
    .parameter "presense"

    .prologue
    .line 183
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v2, "com.android.email"

    const-string v3, "com.android.email.activity.MessageCompose"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v2, "account_id"

    int-to-long v3, p4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 192
    :try_start_17
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 198
    :goto_1a
    return-void

    .line 194
    :catch_1b
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public onClickContextMenu(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
    .registers 14
    .parameter "context"
    .parameter "api"
    .parameter "item"
    .parameter "menu_type"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 111
    packed-switch p4, :pswitch_data_64

    .line 170
    :cond_6
    :goto_6
    return-void

    .line 116
    :pswitch_7
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->doActionForEmail(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V

    goto :goto_6

    .line 120
    :pswitch_b
    if-eqz p2, :cond_6

    .line 122
    iget v1, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    if-nez v1, :cond_2e

    move v7, v0

    .line 124
    .local v7, req_state:I
    :goto_12
    const-string v1, "2_Email"

    const/4 v3, 0x2

    new-array v5, v0, [Ljava/lang/String;

    iget-object v6, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    aput-object v6, v5, v4

    new-array v6, v0, [Ljava/lang/String;

    aput-object v2, v6, v4

    move-object v0, p2

    move-object v4, v2

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->updateMessage(Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v8

    .line 135
    .local v8, ret:I
    const/4 v0, -0x1

    if-le v8, v0, :cond_6

    .line 137
    iput v7, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    .line 138
    invoke-static {p1, p3}, Lcom/sec/android/socialhub/messagelist/MessageListBinder;->drawReadState(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    goto :goto_6

    .end local v7           #req_state:I
    .end local v8           #ret:I
    :cond_2e
    move v7, v4

    .line 122
    goto :goto_12

    .line 144
    :pswitch_30
    if-eqz p2, :cond_6

    .line 146
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08001b

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08001c

    new-instance v2, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_6

    .line 111
    nop

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_b
        :pswitch_30
        :pswitch_7
    .end packed-switch
.end method

.method public onClickItem(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 4
    .parameter "context"
    .parameter "item"

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->doActionForEmail(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V

    .line 176
    return-void
.end method

.method public onMessageUpdate()V
    .registers 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->updateEmail()V

    .line 960
    return-void
.end method

.method public declared-synchronized onUpdate()V
    .registers 9

    .prologue
    .line 606
    monitor-enter p0

    const/4 v0, 0x0

    .line 607
    .local v0, cEmail:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 611
    .local v1, cRealEmail:Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_4
    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$EmailContent;->EMAIL_ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id ASC"

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->getOtherCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_14

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_59

    .line 615
    :cond_14
    const-string v4, "CombinedAccounts"

    const-string v5, "onUpdate()"

    const-string v6, "cEmail is null. maybe Email Application is not installed."

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 617
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "app=\'2_Email\'"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 618
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3c} :catch_9a

    .line 647
    if-eqz v0, :cond_41

    .line 648
    :try_start_3e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 650
    :cond_41
    if-eqz v1, :cond_46

    .line 651
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_46
    const/4 v0, 0x0

    .line 654
    const/4 v1, 0x0

    .line 655
    const-string v4, "CombinedAccounts"

    const-string v5, "onUpdate()"

    const-string v6, "end"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-direct {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->updateDisplayName()V

    .line 659
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_8c

    .line 661
    :goto_57
    monitor-exit p0

    return-void

    .line 622
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->getCombinedEmailCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 624
    const/4 v3, 0x0

    .line 626
    .local v3, is_combined:Z
    if-nez v1, :cond_8f

    .line 628
    const-string v4, "CombinedAccounts"

    const-string v5, "onUpdate()"

    const-string v6, "It\'s Native Email"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/4 v3, 0x0

    .line 637
    :goto_6a
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->addAccount(Landroid/database/Cursor;Z)V

    .line 638
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->removeAccount(Landroid/database/Cursor;Z)V
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_70} :catch_9a

    .line 647
    if-eqz v0, :cond_75

    .line 648
    :try_start_72
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 650
    :cond_75
    if-eqz v1, :cond_7a

    .line 651
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_7a
    const/4 v0, 0x0

    .line 654
    const/4 v1, 0x0

    .line 655
    const-string v4, "CombinedAccounts"

    const-string v5, "onUpdate()"

    const-string v6, "end"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-direct {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->updateDisplayName()V

    .line 659
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V
    :try_end_8b
    .catchall {:try_start_72 .. :try_end_8b} :catchall_8c

    goto :goto_57

    .line 606
    .end local v3           #is_combined:Z
    :catchall_8c
    move-exception v4

    monitor-exit p0

    throw v4

    .line 633
    .restart local v3       #is_combined:Z
    :cond_8f
    const/4 v3, 0x1

    .line 634
    :try_start_90
    const-string v4, "CombinedAccounts"

    const-string v5, "onUpdate()"

    const-string v6, "It\'s Combined Email"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_99} :catch_9a

    goto :goto_6a

    .line 641
    .end local v3           #is_combined:Z
    :catch_9a
    move-exception v2

    .line 643
    .local v2, e:Ljava/lang/Exception;
    :try_start_9b
    const-string v4, "CombinedAccounts"

    const-string v5, "onUpdate()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception e :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_9b .. :try_end_b9} :catchall_d5

    .line 647
    if-eqz v0, :cond_be

    .line 648
    :try_start_bb
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 650
    :cond_be
    if-eqz v1, :cond_c3

    .line 651
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_c3
    const/4 v0, 0x0

    .line 654
    const/4 v1, 0x0

    .line 655
    const-string v4, "CombinedAccounts"

    const-string v5, "onUpdate()"

    const-string v6, "end"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-direct {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->updateDisplayName()V

    .line 659
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    goto :goto_57

    .line 647
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_d5
    move-exception v4

    if-eqz v0, :cond_db

    .line 648
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 650
    :cond_db
    if-eqz v1, :cond_e0

    .line 651
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_e0
    const/4 v0, 0x0

    .line 654
    const/4 v1, 0x0

    .line 655
    const-string v5, "CombinedAccounts"

    const-string v6, "onUpdate()"

    const-string v7, "end"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-direct {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->updateDisplayName()V

    .line 659
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    .line 647
    throw v4
    :try_end_f2
    .catchall {:try_start_bb .. :try_end_f2} :catchall_8c
.end method

.method public registerMessageObserver()V
    .registers 5

    .prologue
    .line 666
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->registerMessageObserver()V

    .line 668
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->messageObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_10

    .line 670
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$2;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->handle:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$2;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->messageObserver:Landroid/database/ContentObserver;

    .line 684
    :cond_10
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->messageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_22

    .line 686
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->messageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 695
    :cond_22
    return-void
.end method

.method public removeAccount(Landroid/database/Cursor;Z)V
    .registers 14
    .parameter "email"
    .parameter "isCombined"

    .prologue
    .line 566
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 567
    .local v0, count:I
    const/4 v3, 0x0

    .line 569
    .local v3, emailID:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 571
    if-gtz v0, :cond_13

    .line 573
    const-string v7, "CombinedAccounts"

    const-string v8, "removeAccount()"

    const-string v9, "email count is 0"

    invoke-static {v7, v8, v9}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_13
    iget-object v7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 577
    .local v5, key:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v1, del:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 581
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 584
    .end local v6           #str:Ljava/lang/String;
    :cond_32
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 586
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_4d

    .line 590
    :cond_3b
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 591
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 592
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_3b

    .line 595
    :cond_4d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_88

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 597
    .local v2, del_id:Ljava/lang/String;
    const-string v7, "CombinedAccounts"

    const-string v8, "removeAccount()"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleted account id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    invoke-virtual {p0, v7}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->removeAccountFromDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    .line 599
    iget-object v7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 601
    .end local v2           #del_id:Ljava/lang/String;
    :cond_88
    return-void
.end method

.method public removeAccountFromDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    .registers 10
    .parameter "account"

    .prologue
    const/4 v7, 0x0

    .line 918
    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    const-string v4, "3_SevenEmail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 920
    const-string v3, "CombinedAccounts"

    const-string v4, "removeAccountFromDB()"

    const-string v5, "it\'s not Email Account"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :goto_18
    return-void

    .line 924
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app=\'2_Email\' and account_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, where:Ljava/lang/String;
    :try_start_2e
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 935
    .local v0, del:I
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7d

    .line 937
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    :goto_4d
    const-string v3, "CombinedAccounts"

    const-string v4, "removeAccountFromDB()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number of remove account is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " where = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_2e .. :try_end_71} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_71} :catch_87

    .line 952
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    .end local v0           #del:I
    :goto_79
    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_18

    .line 941
    .restart local v0       #del:I
    :cond_7d
    :try_start_7d
    const-string v3, "CombinedAccounts"

    const-string v4, "removeAccountFromDB()"

    const-string v5, "it\'s not contains!!!!!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_86} :catch_87

    goto :goto_4d

    .line 946
    .end local v0           #del:I
    :catch_87
    move-exception v1

    .line 948
    .local v1, e:Ljava/lang/Exception;
    :try_start_88
    const-string v3, "CombinedAccounts"

    const-string v4, "removeAccountFromDB()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_88 .. :try_end_a6} :catchall_af

    .line 952
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_79

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_af
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    throw v3
.end method

.method public unregisterMessageObserver()V
    .registers 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->messageObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_f

    .line 702
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->messageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 705
    :cond_f
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->unregisterMessageObserver()V

    .line 706
    return-void
.end method

.method public updateAccountToDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    .registers 8
    .parameter "account"

    .prologue
    .line 857
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 858
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "real_email_id"

    iget v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    const-string v2, "app_type"

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "app"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3_SevenEmail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 873
    .local v0, ret:I
    const-string v2, "CombinedAccounts"

    const-string v3, "updateEmail()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method public declared-synchronized updateEmail()V
    .registers 4

    .prologue
    .line 710
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 728
    monitor-exit p0

    return-void

    .line 710
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
