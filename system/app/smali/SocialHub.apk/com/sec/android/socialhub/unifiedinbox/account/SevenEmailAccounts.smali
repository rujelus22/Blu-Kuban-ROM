.class public Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;
.super Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
.source "SevenEmailAccounts.java"


# static fields
.field private static final COMBIND_ACCOUNT_URI:Landroid/net/Uri;

.field private static final COMBINED_MAIL_URI:Landroid/net/Uri;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final EMAIL_URI:Landroid/net/Uri;

.field private static final FOLDER_URI:Landroid/net/Uri;


# instance fields
.field private emailObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "content://com.seven.provider.email/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://com.seven.provider.email/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->EMAIL_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.seven.provider.email/folders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->FOLDER_URI:Landroid/net/Uri;

    .line 35
    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->COMBIND_ACCOUNT_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.android.email.provider/messagecb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->COMBINED_MAIL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter "ctx"
    .parameter "handle"

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "app=\'3_SevenEmail\'"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)V

    .line 55
    const-string v0, "SevenEmailAccounts"

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/database/Cursor;Z)V
    .registers 19
    .parameter "email"
    .parameter "isCombined"

    .prologue
    .line 79
    if-eqz p1, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_12

    .line 81
    :cond_8
    const-string v2, "SevenEmailAccounts"

    const-string v3, "addEmail()"

    const-string v4, "email count is 0"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_11
    :goto_11
    return-void

    .line 85
    :cond_12
    const/4 v15, 0x0

    .line 86
    .local v15, sevenID:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 88
    .local v12, count:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    const-string v2, "SevenEmailAccounts"

    const-string v3, "SevenEmailAccounts::addEmail()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "email count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v14, 0x0

    .local v14, index:I
    :goto_39
    if-ge v14, v12, :cond_11

    .line 95
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 96
    const-string v2, "SevenEmailAccounts"

    const-string v3, "addEmail()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sevenID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    .line 101
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, enterprise:Ljava/lang/String;
    if-nez v13, :cond_7d

    .line 104
    const-string v2, "SevenEmailAccounts"

    const-string v3, "addAccount()"

    const-string v4, "enterprise is null"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 107
    :cond_7d
    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->SAMSUNG_IM:Ljava/lang/CharSequence;

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 109
    const-string v2, "SevenEmailAccounts"

    const-string v3, "addAccount()"

    const-string v4, "It\'s IM Accounts!!! so, didn\'t add it"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 93
    .end local v13           #enterprise:Ljava/lang/String;
    :goto_91
    add-int/lit8 v14, v14, 0x1

    goto :goto_39

    .line 115
    .restart local v13       #enterprise:Ljava/lang/String;
    :cond_94
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 117
    .local v7, id:I
    new-instance v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->SAMSUNG_IM:Ljava/lang/CharSequence;

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_106

    const-string v2, "4_SevenIM"

    :goto_a7
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    .line 131
    .local v1, value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    const-string v2, "SevenEmailAccounts"

    const-string v3, "addAccount()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Email account added, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget v2, v1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    if-lez v2, :cond_fd

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->SAMSUNG_IM:Ljava/lang/CharSequence;

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fd

    .line 137
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->getAccountID_FromEmail(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;Z)V

    .line 139
    :cond_fd
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->insertAccountToDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    .line 141
    .end local v1           #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .end local v7           #id:I
    .end local v13           #enterprise:Ljava/lang/String;
    :cond_102
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_91

    .line 117
    .restart local v7       #id:I
    .restart local v13       #enterprise:Ljava/lang/String;
    :cond_106
    const-string v2, "3_SevenEmail"

    goto :goto_a7
.end method

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
    .line 671
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;>;"
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 672
    const/4 v0, 0x0

    .line 674
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public checkAccount(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;II)V
    .registers 7
    .parameter "account"
    .parameter "key"
    .parameter "option"

    .prologue
    .line 510
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    const-string v1, "4_SevenIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 512
    const-string v0, "SevenEmailAccounts"

    const-string v1, "checkAccount()"

    const-string v2, "Error please check this!!!!! It\'s seven IM!!! "

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_13
    return-void

    .line 517
    :cond_14
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->updateEmail(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    goto :goto_13
.end method

.method public createAccount()V
    .registers 4

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->onUpdate()V

    .line 429
    const-string v0, "SevenEmailAccounts"

    const-string v1, "createAccount()"

    const-string v2, "is called."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public drawAccount(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "wrapper"

    .prologue
    const/4 v3, 0x0

    .line 687
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    iget-object v2, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getUinboxIDFromAccount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 688
    .local v0, isp_type:I
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getDrawableByISP(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 689
    invoke-static {p1, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getISPStringFromUinboxID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 691
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 693
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Premium_Icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 694
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_38

    .line 696
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

    iget-object v2, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/view/ListColorView;->setAccountColor(I)V

    .line 699
    :cond_38
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_4f

    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 700
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    :cond_4f
    return-void
.end method

.method public getAccountID_FromEmail(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;Z)V
    .registers 13
    .parameter "account"
    .parameter "update"

    .prologue
    const/4 v9, 0x1

    .line 297
    const-string v0, "SevenEmailAccounts"

    const-string v1, "getAccountID_FromEmail()"

    const-string v2, "is called"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v6, 0x0

    .line 301
    .local v6, cEmail:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sevenAccountKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, where:Ljava/lang/String;
    :try_start_20
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->isCombinedEmail()Z

    move-result v8

    .line 307
    .local v8, flag:Z
    if-nez v8, :cond_40

    .line 309
    const-string v0, "SevenEmailAccounts"

    const-string v1, "getAccountID_FromEmail()"

    const-string v2, "It\'s Native Email. So, won\'t get real id."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_39} :catch_6d

    .line 330
    if-eqz v6, :cond_3e

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    .end local v8           #flag:Z
    :cond_3e
    :goto_3e
    const/4 v6, 0x0

    .line 335
    return-void

    .line 313
    .restart local v8       #flag:Z
    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->COMBIND_ACCOUNT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 315
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    .line 317
    if-ne p2, v9, :cond_67

    .line 319
    const-string v0, "SevenEmailAccounts"

    const-string v1, "getAccountID_FromEmail()"

    const-string v2, "update == true!!! insert account to DB"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->insertAccountToDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    :try_end_67
    .catchall {:try_start_40 .. :try_end_67} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_67} :catch_6d

    .line 330
    :cond_67
    if-eqz v6, :cond_3e

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    .line 323
    .end local v8           #flag:Z
    :catch_6d
    move-exception v7

    .line 325
    .local v7, e:Ljava/lang/Exception;
    :try_start_6e
    const-string v0, "SevenEmailAccounts"

    const-string v1, "getAccountID_FromEmail()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_6e .. :try_end_8c} :catchall_92

    .line 330
    if-eqz v6, :cond_3e

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    .line 330
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_92
    move-exception v0

    if-eqz v6, :cond_98

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_98
    const/4 v6, 0x0

    .line 330
    throw v0
.end method

.method public declared-synchronized getAccountIdFromEmail(Ljava/lang/String;)I
    .registers 5
    .parameter "email"

    .prologue
    .line 276
    monitor-enter p0

    const/4 v1, -0x1

    .line 278
    .local v1, id:I
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 280
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    .line 282
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    iget v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    if-lez v2, :cond_1a

    .line 284
    iget v1, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1f

    .line 292
    .end local v0           #account:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :cond_18
    :goto_18
    monitor-exit p0

    return v1

    .line 288
    .restart local v0       #account:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :cond_1a
    const/4 v2, 0x1

    :try_start_1b
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->getAccountID_FromEmail(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;Z)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_18

    .line 276
    .end local v0           #account:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getAppType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 680
    const-string v0, "3_SevenEmail"

    return-object v0
.end method

.method public getContentValues(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;I)Landroid/content/ContentValues;
    .registers 8
    .parameter "account"
    .parameter "_case"

    .prologue
    .line 340
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "email"

    iget-object v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v1, "account"

    iget-object v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "user_name"

    iget-object v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v2, "app"

    const/4 v1, 0x2

    if-ne p2, v1, :cond_70

    const-string v1, "4_SevenIM"

    :goto_21
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "last_id"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->last_email:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v1, "account_id"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    const-string v1, "new"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->is_new:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    const-string v1, "unread"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->unread:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const-string v1, "real_email_id"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v1, "support_msg"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    iget-object v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->account:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/UinboxOrder;->makeOrder(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    return-object v0

    .line 345
    :cond_70
    const-string v1, "3_SevenEmail"

    goto :goto_21
.end method

.method public insertAccountToDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    .registers 10
    .parameter "account"

    .prologue
    .line 364
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

    iget-object v5, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x0

    .line 371
    .local v0, content:Landroid/content/ContentValues;
    :try_start_34
    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    const-string v5, "4_SevenIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 373
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->getContentValues(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 380
    :goto_43
    const-string v4, "app_type"

    const/16 v5, 0x19a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 385
    .local v2, update:I
    if-nez v2, :cond_97

    .line 387
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 388
    const-string v4, "SevenEmailAccounts"

    const-string v5, "insertAccountToDB()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", email_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .end local v2           #update:I
    :cond_97
    :goto_97
    return-void

    .line 377
    :cond_98
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->getContentValues(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;I)Landroid/content/ContentValues;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_9c} :catch_9e

    move-result-object v0

    goto :goto_43

    .line 393
    :catch_9e
    move-exception v1

    .line 395
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SevenEmailAccounts"

    const-string v5, "insertAccountToDB()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception e : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97
.end method

.method public onClickCompose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .parameter "context"
    .parameter "app"
    .parameter "email"
    .parameter "accountId"
    .parameter "presense"

    .prologue
    .line 75
    return-void
.end method

.method public onClickContextMenu(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
    .registers 5
    .parameter "context"
    .parameter "api"
    .parameter "item"
    .parameter "menu_type"

    .prologue
    .line 62
    return-void
.end method

.method public onClickItem(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 68
    return-void
.end method

.method public onMessageUpdate()V
    .registers 2

    .prologue
    .line 665
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->updateAccount(I)V

    .line 666
    return-void
.end method

.method public declared-synchronized onUpdate()V
    .registers 8

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    const-string v3, "SevenEmailAccounts"

    const-string v4, "onUpdate()"

    const-string v5, "start"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_93

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, seven:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 197
    .local v2, sevenCount:I
    :try_start_c
    const-string v3, " status != 5"

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->ACC_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->getOtherCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 201
    if-nez v1, :cond_52

    .line 203
    const-string v3, "SevenEmailAccounts"

    const-string v4, "onUpdate()"

    const-string v5, "seven account is null!! maybe app is not installed."

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 205
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "app=\'3_SevenEmail\'"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_121
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_3e} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3e} :catch_ee

    .line 243
    if-eqz v1, :cond_43

    .line 244
    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_43
    const/4 v1, 0x0

    .line 248
    const-string v3, "SevenEmailAccounts"

    const-string v4, "onUpdate()"

    const-string v5, "end"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_93

    .line 252
    :goto_50
    monitor-exit p0

    return-void

    .line 211
    :cond_52
    :try_start_52
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 214
    if-nez v2, :cond_96

    .line 216
    const-string v3, "SevenEmailAccounts"

    const-string v4, "onUpdate()"

    const-string v5, "A Number of Seven Account is 0 !!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 218
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "app=\'3_SevenEmail\'"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_80
    .catchall {:try_start_52 .. :try_end_80} :catchall_121
    .catch Ljava/lang/NullPointerException; {:try_start_52 .. :try_end_80} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_80} :catch_ee

    .line 243
    if-eqz v1, :cond_85

    .line 244
    :try_start_82
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_85
    const/4 v1, 0x0

    .line 248
    const-string v3, "SevenEmailAccounts"

    const-string v4, "onUpdate()"

    const-string v5, "end"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_93

    goto :goto_50

    .line 189
    .end local v1           #seven:Landroid/database/Cursor;
    .end local v2           #sevenCount:I
    :catchall_93
    move-exception v3

    monitor-exit p0

    throw v3

    .line 224
    .restart local v1       #seven:Landroid/database/Cursor;
    .restart local v2       #sevenCount:I
    :cond_96
    const/4 v3, 0x0

    :try_start_97
    invoke-virtual {p0, v1, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->addAccount(Landroid/database/Cursor;Z)V

    .line 225
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->removeAccount(Landroid/database/Cursor;Z)V
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_121
    .catch Ljava/lang/NullPointerException; {:try_start_97 .. :try_end_9e} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9e} :catch_ee

    .line 243
    if-eqz v1, :cond_a3

    .line 244
    :try_start_a0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_a3
    const/4 v1, 0x0

    .line 248
    const-string v3, "SevenEmailAccounts"

    const-string v4, "onUpdate()"

    const-string v5, "end"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V
    :try_end_b0
    .catchall {:try_start_a0 .. :try_end_b0} :catchall_93

    goto :goto_50

    .line 230
    :catch_b1
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_b2
    const-string v3, "SevenEmailAccounts"

    const-string v4, "onUpdate()"

    const-string v5, "NullPointer Exception. maybe Seven is not Installed. so clear seven data from provider."

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 234
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "app=\'3_SevenEmail\'"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_da
    .catchall {:try_start_b2 .. :try_end_da} :catchall_121

    .line 243
    if-eqz v1, :cond_df

    .line 244
    :try_start_dc
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_df
    const/4 v1, 0x0

    .line 248
    const-string v3, "SevenEmailAccounts"

    const-string v4, "onUpdate()"

    const-string v5, "end"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V
    :try_end_ec
    .catchall {:try_start_dc .. :try_end_ec} :catchall_93

    goto/16 :goto_50

    .line 237
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_ee
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    :try_start_ef
    const-string v3, "SevenEmailAccounts"

    const-string v4, "onUpdate()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_ef .. :try_end_10d} :catchall_121

    .line 243
    if-eqz v1, :cond_112

    .line 244
    :try_start_10f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_112
    const/4 v1, 0x0

    .line 248
    const-string v3, "SevenEmailAccounts"

    const-string v4, "onUpdate()"

    const-string v5, "end"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    goto/16 :goto_50

    .line 243
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_121
    move-exception v3

    if-eqz v1, :cond_127

    .line 244
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_127
    const/4 v1, 0x0

    .line 248
    const-string v4, "SevenEmailAccounts"

    const-string v5, "onUpdate()"

    const-string v6, "end"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    .line 243
    throw v3
    :try_end_135
    .catchall {:try_start_10f .. :try_end_135} :catchall_93
.end method

.method public registerMessageObserver()V
    .registers 1

    .prologue
    .line 435
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->registerMessageObserver()V

    .line 481
    return-void
.end method

.method public removeAccount(Landroid/database/Cursor;Z)V
    .registers 15
    .parameter "email"
    .parameter "isCombined"

    .prologue
    .line 147
    iget-object v8, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 148
    .local v5, key:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, del:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 151
    .local v0, count:I
    const/4 v6, 0x0

    .line 153
    .local v6, sevenID:I
    if-gtz v0, :cond_1c

    .line 155
    const-string v8, "SevenEmailAccounts"

    const-string v9, "removeEmail()"

    const-string v10, "email count is 0"

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1b
    return-void

    .line 159
    :cond_1c
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 161
    .local v7, str:Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 164
    .end local v7           #str:Ljava/lang/String;
    :cond_30
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    const/4 v4, 0x0

    .local v4, index:I
    :goto_34
    if-ge v4, v0, :cond_48

    .line 168
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 170
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 175
    :cond_48
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, del_id:Ljava/lang/String;
    const-string v8, "SevenEmailAccounts"

    const-string v9, "removeEmail()"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleted account id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v8, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    invoke-virtual {p0, v8}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->removeAccountFromDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    .line 181
    iget-object v8, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c
.end method

.method public removeAccountFromDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    .registers 8
    .parameter "account"

    .prologue
    .line 404
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 409
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_52

    .line 411
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mEmailSearcher:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .end local v1           #where:Ljava/lang/String;
    :goto_51
    return-void

    .line 415
    .restart local v1       #where:Ljava/lang/String;
    :cond_52
    const-string v2, "SevenEmailAccounts"

    const-string v3, "removeAccountFromDB()"

    const-string v4, "it\'s not contains!!!!!!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_51

    .line 419
    .end local v1           #where:Ljava/lang/String;
    :catch_5c
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SevenEmailAccounts"

    const-string v3, "removeAccountFromDB()"

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

    goto :goto_51
.end method

.method public unregisterMessageObserver()V
    .registers 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->emailObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_f

    .line 488
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->emailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 490
    :cond_f
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->unregisterMessageObserver()V

    .line 491
    return-void
.end method

.method public declared-synchronized updateAccount(I)V
    .registers 8
    .parameter "option"

    .prologue
    .line 495
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 497
    .local v0, accounts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 499
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->checkAccount(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;II)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_b

    .line 495
    .end local v0           #accounts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    :catchall_27
    move-exception v3

    monitor-exit p0

    throw v3

    .line 502
    .restart local v0       #accounts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2a
    :try_start_2a
    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 504
    const-string v3, "SevenEmailAccounts"

    const-string v4, "updateAccount()"

    const-string v5, "notify to observer"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_27

    .line 505
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateEmail(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    .registers 21
    .parameter "account"

    .prologue
    .line 523
    monitor-enter p0

    const/4 v14, 0x0

    .line 524
    .local v14, cEmail:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 529
    .local v15, cFolder:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_4
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 531
    .local v3, folderProjection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->FOLDER_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "special_id=1 AND account_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 534
    if-nez v15, :cond_49

    .line 536
    const-string v1, "UnifiedInbox"

    const-string v2, "Seven Email folder query is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_1e5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_1b9

    .line 610
    if-eqz v15, :cond_41

    .line 612
    :try_start_3d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 613
    const/4 v15, 0x0

    .line 615
    :cond_41
    if-eqz v14, :cond_47

    .line 617
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_62

    .line 618
    .end local v3           #folderProjection:[Ljava/lang/String;
    :goto_46
    const/4 v14, 0x0

    .line 621
    :cond_47
    monitor-exit p0

    return-void

    .line 540
    .restart local v3       #folderProjection:[Ljava/lang/String;
    :cond_49
    :try_start_49
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_65

    .line 542
    const-string v1, "UnifiedInbox"

    const-string v2, "Seven Email provider is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_1e5
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_56} :catch_1b9

    .line 610
    if-eqz v15, :cond_5c

    .line 612
    :try_start_58
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 613
    const/4 v15, 0x0

    .line 615
    :cond_5c
    if-eqz v14, :cond_47

    .line 617
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_62

    goto :goto_46

    .line 523
    .end local v3           #folderProjection:[Ljava/lang/String;
    :catchall_62
    move-exception v1

    monitor-exit p0

    throw v1

    .line 546
    .restart local v3       #folderProjection:[Ljava/lang/String;
    :cond_65
    :try_start_65
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 548
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 550
    .local v17, iMailboxId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is_unread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 553
    .local v7, emailSelection:Ljava/lang/String;
    const-string v1, "SevenEmailAccounts"

    const-string v2, "updateEmail()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->EMAIL_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v9, "_id ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 562
    if-nez v14, :cond_f0

    .line 564
    const-string v1, "UnifiedInbox"

    const-string v2, "Seven Email emails query is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_65 .. :try_end_e3} :catchall_1e5
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_e3} :catch_1b9

    .line 610
    if-eqz v15, :cond_e9

    .line 612
    :try_start_e5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 613
    const/4 v15, 0x0

    .line 615
    :cond_e9
    if-eqz v14, :cond_47

    .line 617
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_ee
    .catchall {:try_start_e5 .. :try_end_ee} :catchall_62

    goto/16 :goto_46

    .line 568
    :cond_f0
    :try_start_f0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 570
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 572
    .local v12, iUnread:I
    const-string v1, "SevenEmailAccounts"

    const-string v2, "updateEmail()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unread count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    if-lez v12, :cond_1ad

    .line 579
    invoke-interface {v14}, Landroid/database/Cursor;->moveToLast()Z

    .line 581
    const-string v1, "_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->verifyMessage(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;IIIZ)V

    .line 589
    :goto_129
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 591
    .local v18, value:Landroid/content/ContentValues;
    const-string v1, "last_id"

    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->last_email:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    const-string v1, "unread"

    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->unread:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    const-string v1, "new"

    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->is_new:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

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

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1a0
    .catchall {:try_start_f0 .. :try_end_1a0} :catchall_1e5
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_1a0} :catch_1b9

    .line 610
    if-eqz v15, :cond_1a6

    .line 612
    :try_start_1a2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 613
    const/4 v15, 0x0

    .line 615
    :cond_1a6
    if-eqz v14, :cond_47

    .line 617
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1ab
    .catchall {:try_start_1a2 .. :try_end_1ab} :catchall_62

    goto/16 :goto_46

    .line 586
    .end local v18           #value:Landroid/content/ContentValues;
    :cond_1ad
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    :try_start_1b4
    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->verifyMessage(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;IIIZ)V
    :try_end_1b7
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_1e5
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1b7} :catch_1b9

    goto/16 :goto_129

    .line 604
    .end local v3           #folderProjection:[Ljava/lang/String;
    .end local v7           #emailSelection:Ljava/lang/String;
    .end local v12           #iUnread:I
    .end local v17           #iMailboxId:I
    :catch_1b9
    move-exception v16

    .line 606
    .local v16, e:Ljava/lang/Exception;
    :try_start_1ba
    const-string v1, "SevenEmailAccounts"

    const-string v2, "updateMessage()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d8
    .catchall {:try_start_1ba .. :try_end_1d8} :catchall_1e5

    .line 610
    if-eqz v15, :cond_1de

    .line 612
    :try_start_1da
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 613
    const/4 v15, 0x0

    .line 615
    :cond_1de
    if-eqz v14, :cond_47

    .line 617
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_46

    .line 610
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_1e5
    move-exception v1

    if-eqz v15, :cond_1ec

    .line 612
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 613
    const/4 v15, 0x0

    .line 615
    :cond_1ec
    if-eqz v14, :cond_1f2

    .line 617
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 618
    const/4 v14, 0x0

    .line 610
    :cond_1f2
    throw v1
    :try_end_1f3
    .catchall {:try_start_1da .. :try_end_1f3} :catchall_62
.end method
