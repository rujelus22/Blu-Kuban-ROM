.class public Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;
.super Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
.source "MessageAccounts.java"


# static fields
.field public static final MESSAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;->MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter "ctx"
    .parameter "handle"

    .prologue
    .line 45
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;->MESSAGE_URI:Landroid/net/Uri;

    const-string v1, "app=\'1_Messaging\'"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)V

    .line 46
    const-string v0, "SMSAccounts"

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public addAccountWizard(Ljava/util/ArrayList;)Z
    .registers 3
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
    .line 394
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 395
    const/4 v0, 0x0

    .line 397
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public createAccount()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 353
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v1, v2}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateAccountBadge(Landroid/content/Context;ILandroid/net/Uri;Z)V

    .line 354
    return-void
.end method

.method public drawAccount(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "wrapper"

    .prologue
    .line 410
    invoke-static {p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getMessageIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 411
    const v0, 0x7f08008a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 412
    iget-object v0, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    return-void
.end method

.method public getAppType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    const-string v0, "1_Messaging"

    return-object v0
.end method

.method public initialize()V
    .registers 6

    .prologue
    .line 276
    invoke-static {}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppMessaging;->getNullAccount()Landroid/content/ContentValues;

    move-result-object v0

    .line 278
    .local v0, mAccount:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "app=\'1_Messaging\'"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_20

    .line 280
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 283
    :cond_20
    const-string v1, "SMSAccounts"

    const-string v2, "initialize()"

    const-string v3, "is complete!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->initialize()V

    .line 286
    return-void
.end method

.method public isSupport(I)Z
    .registers 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 52
    sparse-switch p1, :sswitch_data_a

    .line 64
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v0

    :sswitch_8
    return v0

    .line 52
    nop

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_8
        0x5 -> :sswitch_8
        0x14 -> :sswitch_8
    .end sparse-switch
.end method

.method protected loadAccount()V
    .registers 16

    .prologue
    .line 292
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->selection:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;->getUinboxCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 294
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_12

    .line 296
    const-string v3, "SMSAccounts"

    const-string v4, "loadAccount"

    const-string v6, "initialize() : Cursor is null"

    invoke-static {v3, v4, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_11
    return-void

    .line 302
    :cond_12
    :try_start_12
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 304
    .local v11, count:I
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 306
    const/4 v14, 0x0

    .local v14, index:I
    :goto_1c
    if-ge v14, v11, :cond_55

    .line 308
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, app:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, account:Ljava/lang/String;
    const/4 v3, 0x7

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 313
    .local v5, unread:I
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    .line 330
    .local v0, value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 306
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    .line 335
    .end local v0           #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .end local v1           #app:Ljava/lang/String;
    .end local v2           #account:Ljava/lang/String;
    .end local v5           #unread:I
    :cond_55
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v4, "loadAccount()"

    const-string v6, "is completed"

    invoke-static {v3, v4, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_12 .. :try_end_5e} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_5e} :catch_65

    .line 343
    if-eqz v12, :cond_63

    .line 344
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 346
    .end local v11           #count:I
    .end local v14           #index:I
    :cond_63
    :goto_63
    const/4 v12, 0x0

    goto :goto_11

    .line 337
    :catch_65
    move-exception v13

    .line 339
    .local v13, e:Ljava/lang/Exception;
    :try_start_66
    const-string v3, "UnifiedInbox"

    const-string v4, "Abstract Account"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initialize() : Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_66 .. :try_end_84} :catchall_8a

    .line 343
    if-eqz v12, :cond_63

    .line 344
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_63

    .line 343
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_8a
    move-exception v3

    if-eqz v12, :cond_90

    .line 344
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_90
    const/4 v12, 0x0

    .line 343
    throw v3
.end method

.method public onClickCompose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .parameter "context"
    .parameter "app"
    .parameter "email"
    .parameter "accountId"
    .parameter "presense"

    .prologue
    .line 255
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v2, "sms_body"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    :try_start_2d
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    .line 271
    :goto_30
    return-void

    .line 267
    :catch_31
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method public onClickContextMenu(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
    .registers 9
    .parameter "context"
    .parameter "api"
    .parameter "item"
    .parameter "menu_type"

    .prologue
    .line 181
    packed-switch p4, :pswitch_data_26

    .line 214
    :goto_3
    return-void

    .line 185
    :pswitch_4
    new-instance v0, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;

    iget-object v1, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrThreadID:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    .local v0, mBuilder:Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;
    const v1, 0x7f08001c

    new-instance v2, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$2;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08001b

    new-instance v3, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$1;

    invoke-direct {v3, p0}, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts$1;-><init>(Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/SocialhubMsgDeleteDialog;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 181
    :pswitch_data_26
    .packed-switch 0x5
        :pswitch_4
    .end packed-switch
.end method

.method public onClickItem(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 8
    .parameter "context"
    .parameter "item"

    .prologue
    .line 219
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v2, "thread_id"

    iget-object v3, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 226
    iget v2, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    sparse-switch v2, :sswitch_data_40

    .line 243
    :goto_1f
    :try_start_1f
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_3b

    .line 249
    :goto_22
    return-void

    .line 229
    :sswitch_23
    const-string v2, "message_type"

    const-string v3, "sms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1f

    .line 233
    :sswitch_2b
    const-string v2, "message_type"

    const-string v3, "mms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1f

    .line 237
    :sswitch_33
    const-string v2, "message_type"

    const-string v3, "wpm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1f

    .line 245
    :catch_3b
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 226
    :sswitch_data_40
    .sparse-switch
        0xc8 -> :sswitch_2b
        0x12c -> :sswitch_23
        0x136 -> :sswitch_33
    .end sparse-switch
.end method

.method public onMessageUpdate()V
    .registers 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/MessageAccounts;->onUpdate()V

    .line 389
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 376
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    .line 377
    return-void
.end method

.method public registerMessageObserver()V
    .registers 1

    .prologue
    .line 382
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->registerMessageObserver()V

    .line 383
    return-void
.end method
