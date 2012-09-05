.class public Lcom/android/email/activity/ContactPreviewPopup;
.super Landroid/app/Activity;
.source "ContactPreviewPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private addrList:[Lcom/android/emailcommon/mail/Address;

.field private btnCompose:Landroid/widget/Button;

.field private btnContact:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private leftSpinImg:Landroid/widget/ImageView;

.field private lookupUri:Landroid/net/Uri;

.field private mAccountAddr:Ljava/lang/String;

.field private mAccountId:J

.field private mCc:Ljava/lang/String;

.field private mCclength:I

.field private mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

.field private mFrom:Ljava/lang/String;

.field private mImage:Landroid/widget/ImageView;

.field private mIndex:I

.field private mMessageId:J

.field private mPhoneNumber:Ljava/lang/String;

.field private mTo:Ljava/lang/String;

.field private mTolength:I

.field private mTotalLen:I

.field private mType:I

.field private nametext:Landroid/widget/TextView;

.field private noMoreLeft:Z

.field private noMoreRight:Z

.field private personEmail:Lcom/android/emailcommon/mail/Address;

.field private rightSpinImg:Landroid/widget/ImageView;

.field private text2:Landroid/widget/TextView;

.field private text3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mFrom:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTo:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCc:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTolength:I

    .line 44
    iput v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCclength:I

    .line 45
    iput v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    .line 46
    iput v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    .line 48
    iput-wide v3, p0, Lcom/android/email/activity/ContactPreviewPopup;->mMessageId:J

    .line 49
    iput-wide v3, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountId:J

    .line 60
    iput v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    .line 76
    iput-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    .line 77
    iput-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ContactPreviewPopup;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/ContactPreviewPopup;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    return-object v0
.end method

.method private showContactStatusChangingLocale()V
    .registers 3

    .prologue
    .line 321
    const v0, 0x7f0805db

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 323
    return-void
.end method


# virtual methods
.method public UpdateContactInfo(Lcom/android/emailcommon/mail/Address;)V
    .registers 14
    .parameter "personEmail"

    .prologue
    const/4 v7, 0x4

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 468
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 469
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, address:Ljava/lang/String;
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 472
    .local v3, dataUri:Landroid/net/Uri;
    invoke-static {v5, v3}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    .line 474
    const/4 v2, 0x0

    .line 475
    .local v2, contactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;
    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v1

    .line 476
    .local v1, cache:Lcom/android/email/ContactInfoCache;
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/email/ContactInfoCache;->init(Landroid/content/Context;)V

    .line 477
    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v1

    .line 478
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    .line 479
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    invoke-virtual {v1, v6, v11}, Lcom/android/email/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v2

    .line 481
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-eqz v6, :cond_aa

    .line 482
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->text2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->text3:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/email/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :goto_52
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-eqz v6, :cond_6b

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 493
    :cond_6b
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    :goto_72
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    invoke-virtual {v1, v6, v11}, Lcom/android/email/ContactInfoCache;->getContactInfo(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v4

    .line 500
    .local v4, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    if-eqz v4, :cond_d2

    iget-object v6, v4, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_d2

    .line 501
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    iget-object v9, v4, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    :goto_85
    iget-object v9, p0, Lcom/android/email/activity/ContactPreviewPopup;->leftSpinImg:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    if-eqz v6, :cond_db

    move v6, v7

    :goto_8c
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->rightSpinImg:Landroid/widget/ImageView;

    iget-boolean v9, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    if-eqz v9, :cond_dd

    :goto_95
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-nez v6, :cond_df

    .line 509
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    const v7, 0x7f0802e2

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 513
    :goto_a4
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    return-void

    .line 486
    .end local v4           #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    :cond_aa
    iget-object v9, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    const-string v6, ""

    :goto_ba
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->text2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52

    .line 486
    :cond_c7
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v6

    goto :goto_ba

    .line 495
    :cond_cc
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_72

    .line 503
    .restart local v4       #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    :cond_d2
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    const v9, 0x7f020151

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_85

    :cond_db
    move v6, v8

    .line 505
    goto :goto_8c

    :cond_dd
    move v7, v8

    .line 506
    goto :goto_95

    .line 511
    :cond_df
    iget-object v6, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    const v7, 0x7f0802e3

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_a4
.end method

.method public getContactProviderStatus()I
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 303
    const/4 v7, 0x0

    .line 304
    .local v7, providerStatus:I
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "data1"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2d

    .line 310
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 311
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2e

    move-result v7

    .line 314
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_2d
    return v7

    .line 314
    :catchall_2e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public onAddToContact(Lcom/android/emailcommon/mail/Address;)V
    .registers 6
    .parameter "personEmail"

    .prologue
    .line 330
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, address:Ljava/lang/String;
    const-string v3, "email"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, senderPersonal:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 339
    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    :cond_1f
    const-string v3, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/email/activity/ContactPreviewPopup;->startActivity(Landroid/content/Intent;)V

    .line 344
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/ContactPreviewPopup;->setResult(I)V

    .line 345
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->finish()V

    .line 347
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 6
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 521
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 524
    const v0, 0x1030059

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 526
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_102

    .line 464
    :cond_a
    :goto_a
    :pswitch_a
    return-void

    .line 356
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getContactProviderStatus()I

    move-result v0

    if-ne v0, v1, :cond_15

    .line 357
    invoke-direct {p0}, Lcom/android/email/activity/ContactPreviewPopup;->showContactStatusChangingLocale()V

    goto :goto_a

    .line 363
    :cond_15
    iget-boolean v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-eq v0, v4, :cond_a

    .line 365
    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    .line 366
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    iget v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    .line 367
    iput-boolean v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    .line 368
    iput-boolean v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    .line 370
    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    if-nez v0, :cond_35

    .line 371
    iput-boolean v4, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    .line 372
    :cond_35
    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iget v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3f

    .line 373
    iput-boolean v4, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    .line 375
    :cond_3f
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ContactPreviewPopup;->UpdateContactInfo(Lcom/android/emailcommon/mail/Address;)V

    goto :goto_a

    .line 382
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getContactProviderStatus()I

    move-result v0

    if-ne v0, v1, :cond_4f

    .line 383
    invoke-direct {p0}, Lcom/android/email/activity/ContactPreviewPopup;->showContactStatusChangingLocale()V

    goto :goto_a

    .line 389
    :cond_4f
    iget-boolean v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-eq v0, v4, :cond_a

    .line 391
    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    .line 392
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    iget v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    .line 393
    iput-boolean v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    .line 394
    iput-boolean v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    .line 396
    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    if-nez v0, :cond_6f

    .line 397
    iput-boolean v4, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    .line 398
    :cond_6f
    iget v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iget v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_79

    .line 399
    iput-boolean v4, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    .line 401
    :cond_79
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ContactPreviewPopup;->UpdateContactInfo(Lcom/android/emailcommon/mail/Address;)V

    goto :goto_a

    .line 406
    :pswitch_7f
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 415
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    const-class v3, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    const-string v2, "com.android.email.activity._ACCOUNT_ID"

    iget-wide v3, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 417
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v1}, Lcom/android/email/activity/ContactPreviewPopup;->startActivity(Landroid/content/Intent;)V

    .line 420
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->finish()V

    goto/16 :goto_a

    .line 429
    :pswitch_ab
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 433
    iget-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 442
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/email/activity/ContactPreviewPopup;->startActivity(Landroid/content/Intent;)V

    .line 444
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ContactPreviewPopup;->setResult(I)V

    .line 447
    :goto_e5
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->finish()V

    goto/16 :goto_a

    .line 446
    :cond_ea
    invoke-virtual {p0, v0}, Lcom/android/email/activity/ContactPreviewPopup;->onAddToContact(Lcom/android/emailcommon/mail/Address;)V

    goto :goto_e5

    .line 452
    :pswitch_ee
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_a

    .line 453
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->finish()V

    goto/16 :goto_a

    .line 351
    nop

    :pswitch_data_102
    .packed-switch 0x7f1000f5
        :pswitch_b
        :pswitch_a
        :pswitch_45
        :pswitch_ee
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_ab
        :pswitch_7f
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x3

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 87
    .local v5, lpWindow:Landroid/view/WindowManager$LayoutParams;
    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    const/high16 v8, 0x3f00

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 89
    const v8, 0x10a0005

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 91
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 93
    const v8, 0x7f04005e

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 100
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "changing_locale_for_contact"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 103
    .local v4, isChangingLocaleForContact:Z
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getContactProviderStatus()I

    move-result v8

    if-ne v8, v13, :cond_44

    if-ne v4, v12, :cond_44

    .line 105
    invoke-direct {p0}, Lcom/android/email/activity/ContactPreviewPopup;->showContactStatusChangingLocale()V

    .line 106
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->finish()V

    .line 285
    :cond_43
    :goto_43
    return-void

    .line 112
    :cond_44
    const-string v8, "type"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    .line 113
    const-string v8, "index"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    .line 115
    const-string v8, "from"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mFrom:Ljava/lang/String;

    .line 116
    const-string v8, "to"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTo:Ljava/lang/String;

    .line 117
    const-string v8, "cc"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCc:Ljava/lang/String;

    .line 119
    const-string v8, "to_len"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTolength:I

    .line 120
    const-string v8, "cc_len"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCclength:I

    .line 122
    const v8, 0x7f1000f5

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->leftSpinImg:Landroid/widget/ImageView;

    .line 123
    const v8, 0x7f1000f7

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->rightSpinImg:Landroid/widget/ImageView;

    .line 125
    new-instance v8, Lcom/android/emailcommon/mail/Address;

    const-string v10, ""

    invoke-direct {v8, v10}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    .line 126
    iput-boolean v9, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    .line 127
    iput-boolean v9, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    .line 129
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-ne v8, v12, :cond_1e1

    .line 130
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mFrom:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    .line 164
    :cond_ab
    :goto_ab
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    if-eqz v8, :cond_43

    .line 167
    const v8, 0x7f1000f6

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 169
    .local v7, titletext:Landroid/widget/TextView;
    const v8, 0x7f1000f9

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    .line 170
    const v8, 0x7f1000fa

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->text2:Landroid/widget/TextView;

    .line 171
    const v8, 0x7f1000fb

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->text3:Landroid/widget/TextView;

    .line 173
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-ne v8, v12, :cond_231

    .line 174
    const v8, 0x7f0801d0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 178
    :goto_e3
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-ne v8, v12, :cond_eb

    .line 179
    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    .line 180
    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    .line 185
    :cond_eb
    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->leftSpinImg:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    if-eqz v8, :cond_239

    const/4 v8, 0x4

    :goto_f2
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->rightSpinImg:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    if-eqz v8, :cond_23c

    const/4 v8, 0x4

    :goto_fc
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/android/email/activity/ContactPreviewPopup;->getContactProviderStatus()I

    move-result v8

    if-ne v8, v13, :cond_23f

    .line 193
    if-eqz p1, :cond_12c

    .line 194
    const-string v8, "com.android.email.activity.LOOKUP_URI"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    .line 195
    const-string v8, "com.android.email.activity.CONTACT_ENTRY"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/android/email/ContactInfoCache$CacheEntry;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    .line 196
    const-string v8, "com.android.email.activity.PHONE_NUMBER"

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mPhoneNumber:Ljava/lang/String;

    .line 218
    :cond_12c
    :goto_12c
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_278

    .line 219
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    iget-object v10, v10, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->text2:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->text3:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :goto_14b
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_164

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a1

    .line 230
    :cond_164
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :goto_16b
    const v8, 0x7f1000f8

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    .line 238
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    if-eqz v8, :cond_2a8

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    iget-object v8, v8, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_2a8

    .line 239
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    iget-object v10, v10, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    :goto_189
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-nez v8, :cond_2b2

    .line 247
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 251
    :goto_197
    const v8, 0x7f1000fc

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    .line 252
    const v8, 0x7f1000fd

    invoke-virtual {p0, v8}, Lcom/android/email/activity/ContactPreviewPopup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;

    .line 254
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_2b9

    .line 255
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    const v10, 0x7f0802e3

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(I)V

    .line 259
    :goto_1b9
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;

    const v10, 0x7f080284

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(I)V

    .line 261
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->leftSpinImg:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->rightSpinImg:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    new-instance v8, Lcom/android/email/activity/ContactPreviewPopup$1;

    invoke-direct {v8, p0}, Lcom/android/email/activity/ContactPreviewPopup$1;-><init>(Lcom/android/email/activity/ContactPreviewPopup;)V

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/android/email/activity/ContactPreviewPopup$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_43

    .line 131
    .end local v7           #titletext:Landroid/widget/TextView;
    :cond_1e1
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mType:I

    if-ne v8, v11, :cond_20b

    .line 132
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTo:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    .line 134
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    iget v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    aget-object v8, v8, v10

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    .line 135
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTolength:I

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    .line 140
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    if-nez v8, :cond_1ff

    .line 141
    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    .line 142
    :cond_1ff
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iget v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_ab

    .line 143
    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    goto/16 :goto_ab

    .line 148
    :cond_20b
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCc:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    .line 150
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->addrList:[Lcom/android/emailcommon/mail/Address;

    iget v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    aget-object v8, v8, v10

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    .line 151
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mCclength:I

    iput v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    .line 156
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    if-nez v8, :cond_225

    .line 157
    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreLeft:Z

    .line 158
    :cond_225
    iget v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mIndex:I

    iget v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->mTotalLen:I

    add-int/lit8 v10, v10, -0x1

    if-ne v8, v10, :cond_ab

    .line 159
    iput-boolean v12, p0, Lcom/android/email/activity/ContactPreviewPopup;->noMoreRight:Z

    goto/16 :goto_ab

    .line 176
    .restart local v7       #titletext:Landroid/widget/TextView;
    :cond_231
    const v8, 0x7f0802e1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e3

    :cond_239
    move v8, v9

    .line 185
    goto/16 :goto_f2

    :cond_23c
    move v8, v9

    .line 186
    goto/16 :goto_fc

    .line 200
    :cond_23f
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 201
    .local v6, resolver:Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, address:Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 204
    .local v2, dataUri:Landroid/net/Uri;
    invoke-static {v6, v2}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    .line 211
    new-instance v1, Lcom/android/email/ContactInfoCache;

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->context:Landroid/content/Context;

    invoke-direct {v1, v8}, Lcom/android/email/ContactInfoCache;-><init>(Landroid/content/Context;)V

    .line 214
    .local v1, contactInfo:Lcom/android/email/ContactInfoCache;
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    invoke-virtual {v1, v8, v12}, Lcom/android/email/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    .line 215
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/email/ContactInfoCache;->queryContactInfoByEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mPhoneNumber:Ljava/lang/String;

    goto/16 :goto_12c

    .line 223
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contactInfo:Lcom/android/email/ContactInfoCache;
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :cond_278
    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mAccountAddr:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v11}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29a

    const-string v8, ""

    :goto_28a
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->text2:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14b

    .line 223
    :cond_29a
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->personEmail:Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v8

    goto :goto_28a

    .line 232
    :cond_2a1
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->nametext:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_16b

    .line 242
    :cond_2a8
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    const v10, 0x7f020151

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_189

    .line 249
    :cond_2b2
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    goto/16 :goto_197

    .line 257
    :cond_2b9
    iget-object v8, p0, Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;

    const v10, 0x7f0802e2

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1b9
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 293
    const-string v0, "com.android.email.activity.LOOKUP_URI"

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->lookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    const-string v0, "com.android.email.activity.CONTACT_ENTRY"

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mContactEntry:Lcom/android/email/ContactInfoCache$CacheEntry;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 295
    const-string v0, "com.android.email.activity.PHONE_NUMBER"

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method
