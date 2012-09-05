.class public Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;
.super Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
.source "SevenIMAccounts.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final IM_CHAT_URI:Landroid/net/Uri;

.field public static final IM_CONTACTS_URI:Landroid/net/Uri;

.field public static final IM_PRESENCE_URI:Landroid/net/Uri;

.field public static final IM_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "content://com.seven.provider.email/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->CONTENT_URI:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.seven.provider.im/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->IM_URI:Landroid/net/Uri;

    .line 44
    const-string v0, "content://com.seven.provider.im/chats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->IM_CHAT_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.seven.provider.im/presence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->IM_PRESENCE_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.seven.provider.im/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->IM_CONTACTS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter "ctx"
    .parameter "handle"

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "app=\'4_SevenIM\'"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)V

    .line 64
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->mContext:Landroid/content/Context;

    .line 65
    const-string v0, "SevenIMAccounts"

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static isExistPackage(Landroid/content/Context;)Z
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 636
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 638
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.seven.Z7.ACTION_IM"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const/high16 v4, 0x420

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 644
    .local v2, intent_list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_22

    move-result v4

    if-eqz v4, :cond_20

    .line 652
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intent_list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1f
    return v3

    .line 647
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #intent_list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_20
    const/4 v3, 0x1

    goto :goto_1f

    .line 649
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intent_list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_22
    move-exception v0

    .line 651
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method


# virtual methods
.method public addAccountWizard(Ljava/util/ArrayList;)Z
    .registers 11
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
    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 659
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->addAccountWizard(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 683
    :goto_9
    return v2

    .line 662
    :cond_a
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v4, 0x2

    const v5, 0x7f080079

    move v3, v1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 673
    .local v0, title:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    if-eqz p1, :cond_1a

    .line 675
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->getAppType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getLocalISP(Ljava/lang/String;)Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;

    move-result-object v8

    .line 680
    .local v8, isp:Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;
    if-eqz v8, :cond_2e

    .line 681
    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->getAppType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v8, v2, v3, p1, v4}, Lcom/sec/android/socialhub/feature/FeatureFactory$LocalISP;->addSpList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Object;)V

    :cond_2e
    move v2, v1

    .line 683
    goto :goto_9
.end method

.method public createAccount()V
    .registers 4

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->onUpdate()V

    .line 485
    const-string v0, "SevenIMAccounts"

    const-string v1, "createAccount()"

    const-string v2, "is called."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public drawAccount(Landroid/content/Context;Landroid/database/Cursor;Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "wrapper"

    .prologue
    .line 698
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    iget-object v2, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getUinboxIDFromAccount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 699
    .local v0, isp_type:I
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getDrawableByISP(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 700
    invoke-static {p1, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getISPStringFromUinboxID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 702
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 704
    invoke-virtual {p0, p3}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->updateIMPresence(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 705
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Premium_Icon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_55

    .line 710
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Email_Addr:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->mContext:Landroid/content/Context;

    const v3, 0x7f09000f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 716
    :goto_3d
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    if-eqz v1, :cond_54

    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 717
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    :cond_54
    return-void

    .line 713
    :cond_55
    iget-object v1, p3, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Email_Addr:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->mContext:Landroid/content/Context;

    const v3, 0x7f09000d

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_3d
.end method

.method public getAppType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 691
    const-string v0, "4_SevenIM"

    return-object v0
.end method

.method public getContentValues(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;I)Landroid/content/ContentValues;
    .registers 8
    .parameter "account"
    .parameter "_case"

    .prologue
    .line 404
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "email"

    iget-object v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, "account"

    iget-object v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, "user_name"

    iget-object v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v1, "email"

    iget-object v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v2, "app"

    const/4 v1, 0x2

    if-ne p2, v1, :cond_8d

    const-string v1, "4_SevenIM"

    :goto_28
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "last_id"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->last_email:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    const-string v1, "account_id"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    const-string v1, "new"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->is_new:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v1, "unread"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->unread:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v1, "real_email_id"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v1, "support_msg"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v1, "presence"

    iget v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->presence:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const-string v1, "app_type"

    const/16 v2, 0x2bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    iget-object v2, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->user_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->account:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/socialhub/unifiedinbox/UinboxOrder;->makeOrder(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;I)V

    .line 421
    return-object v0

    .line 410
    :cond_8d
    const-string v1, "3_SevenEmail"

    goto :goto_28
.end method

.method public insertAccountToDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    .registers 10
    .parameter "account"

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->updateIM(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    .line 429
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

    .line 435
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x0

    .line 437
    .local v0, content:Landroid/content/ContentValues;
    :try_start_37
    iget-object v4, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    const-string v5, "4_SevenIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 439
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->getContentValues(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 446
    :goto_46
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 449
    .local v2, update:I
    if-nez v2, :cond_88

    .line 451
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 452
    const-string v4, "SevenIMAccounts"

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

    .line 455
    :cond_88
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 462
    .end local v2           #update:I
    :goto_94
    return-void

    .line 443
    :cond_95
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->getContentValues(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;I)Landroid/content/ContentValues;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_99} :catch_9b

    move-result-object v0

    goto :goto_46

    .line 458
    :catch_9b
    move-exception v1

    .line 460
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SevenIMAccounts"

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

    goto :goto_94
.end method

.method public isExistPackage()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 612
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 614
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.seven.Z7.ACTION_IM"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const/high16 v4, 0x420

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 618
    iget-object v4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 620
    .local v2, intent_list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_24

    move-result v4

    if-eqz v4, :cond_22

    .line 628
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intent_list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_21
    return v3

    .line 623
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #intent_list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_22
    const/4 v3, 0x1

    goto :goto_21

    .line 625
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intent_list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_24
    move-exception v0

    .line 627
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public isSupport(I)Z
    .registers 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 71
    sparse-switch p1, :sswitch_data_a

    .line 83
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v0

    :sswitch_8
    return v0

    .line 71
    nop

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_8
        0x5 -> :sswitch_8
        0x14 -> :sswitch_8
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
    .line 160
    const/4 v2, 0x7

    if-ne p5, v2, :cond_7

    .line 162
    invoke-static {p1, p4}, Lcom/sec/android/socialhub/util/SocialHubUtil;->signInIMAccount(Landroid/content/Context;I)V

    .line 183
    :goto_6
    return-void

    .line 166
    :cond_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.seven.Z7.ACTION_IM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const/high16 v2, 0x420

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    const-string v2, "from_notification_bar"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v2, "account_id"

    int-to-long v3, p4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 176
    :try_start_22
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_6

    .line 178
    :catch_26
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public onClickContextMenu(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/IMessageAPI;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;I)V
    .registers 12
    .parameter "context"
    .parameter "api"
    .parameter "item"
    .parameter "menu_type"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 90
    packed-switch p4, :pswitch_data_1c

    .line 114
    :cond_6
    :goto_6
    return-void

    .line 99
    :pswitch_7
    if-eqz p2, :cond_6

    .line 101
    const-string v1, "4_SevenIM"

    new-array v4, v6, [Ljava/lang/String;

    iget-object v0, p3, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrContactId:Ljava/lang/String;

    aput-object v0, v4, v3

    new-array v5, v6, [Ljava/lang/String;

    aput-object v2, v5, v3

    move-object v0, p2

    move-object v3, v2

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/socialhub/messagelist/IMessageAPI;->removeMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    goto :goto_6

    .line 90
    nop

    :pswitch_data_1c
    .packed-switch 0x5
        :pswitch_7
    .end packed-switch
.end method

.method public onClickItem(Landroid/content/Context;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V
    .registers 9
    .parameter "context"
    .parameter "item"

    .prologue
    .line 119
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.seven.SENDTO_Z7"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget v2, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    .line 123
    .local v2, sp_type:I
    const-string v3, "imto://"

    .line 126
    .local v3, uri:Ljava/lang/String;
    packed-switch v2, :pswitch_data_7c

    .line 141
    :goto_11
    :pswitch_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrEmailAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 143
    const-string v4, "is_socialhub_opened_chat"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    :try_start_36
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_76

    .line 154
    :goto_39
    return-void

    .line 129
    :pswitch_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gtalk/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    goto :goto_11

    .line 133
    :pswitch_4e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "yahoo/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    goto :goto_11

    .line 137
    :pswitch_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msn/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 150
    :catch_76
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    .line 126
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_62
        :pswitch_4e
        :pswitch_11
        :pswitch_11
        :pswitch_3a
    .end packed-switch
.end method

.method public onMessageUpdate()V
    .registers 1

    .prologue
    .line 604
    return-void
.end method

.method public onUpdate()V
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 351
    const/4 v11, 0x0

    .line 353
    .local v11, cursor:Landroid/database/Cursor;
    const-string v1, "SevenIMAccounts"

    const-string v2, "onUpdate()"

    const-string v3, "start"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "app=\'4_SevenIM\'"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 359
    :try_start_18
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->ACC_PROJECTION:[Ljava/lang/String;

    const-string v3, " status != 5"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 361
    if-eqz v11, :cond_92

    .line 363
    :cond_2c
    :goto_2c
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 365
    const/4 v1, 0x7

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$Seven;->SAMSUNG_IM:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 367
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    const-string v1, "4_SevenIM"

    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x6

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    .line 379
    .local v0, value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    iget v1, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    iput v1, v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    .line 381
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccount:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->insertAccountToDB(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    :try_end_78
    .catchall {:try_start_18 .. :try_end_78} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_78} :catch_79

    goto :goto_2c

    .line 387
    .end local v0           #value:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    :catch_79
    move-exception v12

    .line 389
    .local v12, e:Ljava/lang/Exception;
    :try_start_7a
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_87

    .line 393
    if-eqz v11, :cond_82

    .line 394
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 396
    .end local v12           #e:Ljava/lang/Exception;
    :cond_82
    :goto_82
    const/4 v11, 0x0

    .line 398
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    .line 400
    return-void

    .line 393
    :catchall_87
    move-exception v1

    if-eqz v11, :cond_8d

    .line 394
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_8d
    const/4 v11, 0x0

    .line 398
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    .line 393
    throw v1

    :cond_92
    if-eqz v11, :cond_82

    .line 394
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_82
.end method

.method public registerMessageObserver()V
    .registers 1

    .prologue
    .line 491
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->registerMessageObserver()V

    .line 492
    return-void
.end method

.method public unregisterMessageObserver()V
    .registers 1

    .prologue
    .line 497
    invoke-super {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->unregisterMessageObserver()V

    .line 498
    return-void
.end method

.method public updateIM(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    .registers 16
    .parameter "account"

    .prologue
    .line 530
    const/4 v11, 0x0

    .line 531
    .local v11, message:Landroid/database/Cursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v6, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 533
    .local v10, last_email:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 538
    .local v13, where:Ljava/lang/String;
    :try_start_3a
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->IM_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "account"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "type"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 540
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_78
    .catchall {:try_start_3a .. :try_end_78} :catchall_120
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_78} :catch_fa

    .line 542
    const/4 v9, 0x0

    .local v9, index:I
    move v2, v10

    .end local v10           #last_email:I
    .local v2, last_email:I
    :goto_7a
    :try_start_7a
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_ab

    .line 544
    const-string v0, "contact"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 546
    .local v7, contact:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 548
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_93
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a5

    .line 553
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 556
    :cond_a5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 542
    add-int/lit8 v9, v9, 0x1

    goto :goto_7a

    .line 560
    .end local v7           #contact:Ljava/lang/String;
    :cond_ab
    const/4 v3, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->verifyMessage(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;IIIZ)V

    .line 562
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v12, value:Landroid/content/ContentValues;
    const-string v0, "last_id"

    iget v1, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->last_email:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    const-string v0, "unread"

    iget v1, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->unread:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    const-string v0, "new"

    iget v1, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->is_new:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    const-string v0, "presence"

    iget v1, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->presence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v12, v13, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f3
    .catchall {:try_start_7a .. :try_end_f3} :catchall_129
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_f3} :catch_12b

    .line 589
    if-eqz v11, :cond_f9

    .line 591
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 592
    .end local v9           #index:I
    .end local v12           #value:Landroid/content/ContentValues;
    :goto_f8
    const/4 v11, 0x0

    .line 597
    :cond_f9
    return-void

    .line 581
    .end local v2           #last_email:I
    .restart local v10       #last_email:I
    :catch_fa
    move-exception v8

    move v2, v10

    .line 583
    .end local v10           #last_email:I
    .restart local v2       #last_email:I
    .local v8, e:Ljava/lang/Exception;
    :goto_fc
    :try_start_fc
    const-string v0, "SevenIMAccounts"

    const-string v1, "updateIM()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11a
    .catchall {:try_start_fc .. :try_end_11a} :catchall_129

    .line 589
    if-eqz v11, :cond_f9

    .line 591
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_f8

    .line 589
    .end local v2           #last_email:I
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v10       #last_email:I
    :catchall_120
    move-exception v0

    move v2, v10

    .end local v10           #last_email:I
    .restart local v2       #last_email:I
    :goto_122
    if-eqz v11, :cond_128

    .line 591
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 592
    const/4 v11, 0x0

    .line 589
    :cond_128
    throw v0

    :catchall_129
    move-exception v0

    goto :goto_122

    .line 581
    .restart local v9       #index:I
    :catch_12b
    move-exception v8

    goto :goto_fc
.end method

.method public updateIMPresence(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 6
    .parameter "wrapper"

    .prologue
    const/16 v3, 0x8

    .line 722
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 723
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, resid:I
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_34

    .line 744
    :goto_17
    :pswitch_17
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 745
    return-void

    .line 728
    :pswitch_1d
    const v0, 0x7f020109

    .line 729
    goto :goto_17

    .line 731
    :pswitch_21
    const v0, 0x7f02010b

    .line 732
    goto :goto_17

    .line 734
    :pswitch_25
    const v0, 0x7f02010d

    .line 735
    goto :goto_17

    .line 738
    :pswitch_29
    const v0, 0x7f02010f

    .line 739
    goto :goto_17

    .line 741
    :pswitch_2d
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17

    .line 725
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_29
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_17
        :pswitch_17
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method
