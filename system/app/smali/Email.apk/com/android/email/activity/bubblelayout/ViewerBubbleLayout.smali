.class public Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;
.super Landroid/widget/LinearLayout;
.source "ViewerBubbleLayout.java"


# instance fields
.field mAddress:Ljava/lang/String;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBubbleButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleRecipientLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mExpectedLayoutWidth:I

.field mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mExpectedLayoutWidth:I

    .line 62
    iput v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mType:I

    .line 92
    iput-object p1, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->showBubbleButtonClickMenu(Landroid/view/View;)V

    return-void
.end method

.method private addButton(Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;)Ljava/lang/Boolean;
    .registers 10
    .parameter "button"

    .prologue
    const/4 v7, 0x0

    .line 303
    const/4 v5, 0x0

    .line 304
    .local v5, totalWidth:I
    const/4 v1, 0x0

    .line 305
    .local v1, containerWidth:I
    const/4 v0, 0x0

    .line 306
    .local v0, bottomLayoutChildCount:I
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 307
    .local v4, indexOfLastLayout:I
    const/4 v2, 0x0

    .line 309
    .local v2, expectedButtonWidth:I
    if-nez p1, :cond_12

    .line 310
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 360
    :goto_11
    return-object v6

    .line 312
    :cond_12
    invoke-virtual {p1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getExpectedWidth()I

    move-result v2

    .line 316
    if-lez v4, :cond_1c

    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    if-nez v6, :cond_49

    .line 317
    :cond_1c
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 322
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    :goto_30
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 332
    const/4 v3, 0x0

    .local v3, i:I
    :goto_37
    if-ge v3, v0, :cond_56

    .line 333
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;

    invoke-virtual {v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getExpectedWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 324
    .end local v3           #i:I
    :cond_49
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    goto :goto_30

    .line 335
    .restart local v3       #i:I
    :cond_56
    add-int/2addr v5, v2

    .line 338
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 339
    if-nez v1, :cond_69

    .line 340
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getWidth()I

    move-result v6

    if-nez v6, :cond_76

    invoke-direct {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getExpectedLayoutWidth()I

    move-result v1

    .line 344
    :cond_69
    :goto_69
    if-gt v5, v1, :cond_7b

    .line 345
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    :goto_70
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_11

    .line 340
    :cond_76
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getWidth()I

    move-result v1

    goto :goto_69

    .line 346
    :cond_7b
    if-ne v5, v2, :cond_83

    .line 352
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_70

    .line 354
    :cond_83
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 355
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_70
.end method

.method private getExpectedLayoutWidth()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mExpectedLayoutWidth:I

    return v0
.end method

.method private makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;
    .registers 5
    .parameter "context"
    .parameter "data"

    .prologue
    .line 484
    new-instance v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;

    invoke-direct {v0, p1, p2}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;-><init>(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)V

    .line 487
    .local v0, button:Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;
    new-instance v1, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout$1;-><init>(Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v1, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    return-object v0
.end method

.method private makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6
    .parameter "context"

    .prologue
    .line 452
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 453
    .local v0, ll:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 455
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 458
    return-object v0
.end method

.method private showBubbleButtonClickMenu(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 504
    check-cast p1, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;

    .line 505
    invoke-virtual {p1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;

    move-result-object v0

    .line 506
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/activity/ContactPreviewPopup;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 508
    const-string v2, "index"

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleData;->getIndex()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    const-string v0, "type"

    iget v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mType:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    iget v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mType:I

    packed-switch v0, :pswitch_data_84

    .line 540
    :goto_29
    return-void

    .line 512
    :pswitch_2a
    const-string v0, "from"

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    :goto_31
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getContactProviderStatus()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3e

    .line 529
    const-string v0, "changing_locale_for_contact"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 534
    :cond_3e
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_7d

    .line 535
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x7011214

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_29

    .line 515
    :pswitch_4f
    const-string v0, "to"

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v0, "to_len"

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_31

    .line 519
    :pswitch_66
    const-string v0, "cc"

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v0, "cc_len"

    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_31

    .line 538
    :cond_7d
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_29

    .line 510
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_4f
        :pswitch_66
    .end packed-switch
.end method


# virtual methods
.method public addButton(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .parameter "friendly"
    .parameter "address"
    .parameter "index"

    .prologue
    .line 284
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/email/activity/bubblelayout/BubbleData;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/bubblelayout/BubbleData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-direct {p0, v6, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->makeOneBubbleButton(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->addButton(Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getContactProviderStatus()I
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 550
    const/4 v7, 0x0

    .line 551
    .local v7, providerStatus:I
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

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

    .line 555
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2d

    .line 557
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 558
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2e

    move-result v7

    .line 561
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_2d
    return v7

    .line 561
    :catchall_2e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public declared-synchronized rebuildBubbleLayout(I)V
    .registers 10
    .parameter "newWidth"

    .prologue
    .line 167
    monitor-enter p0

    const/4 v5, 0x0

    .line 168
    .local v5, totalWidth:I
    const/4 v4, 0x0

    .line 171
    .local v4, layoutWidth:I
    :try_start_3
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 175
    .local v3, layoutChildCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v3, :cond_1a

    .line 176
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 178
    :cond_1a
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 181
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 182
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 183
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    :goto_36
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;

    .line 190
    .local v0, bb:Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;
    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getExpectedWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 193
    if-lez p1, :cond_63

    move v4, p1

    .line 194
    :goto_50
    if-gt v5, v4, :cond_6a

    .line 195
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_58

    goto :goto_3c

    .line 167
    .end local v0           #bb:Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #layoutChildCount:I
    :catchall_58
    move-exception v6

    monitor-exit p0

    throw v6

    .line 186
    .restart local v1       #i:I
    .restart local v3       #layoutChildCount:I
    :cond_5b
    :try_start_5b
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_36

    .line 193
    .restart local v0       #bb:Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_63
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    goto :goto_50

    .line 196
    :cond_6a
    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getExpectedWidth()I

    move-result v6

    if-ne v5, v6, :cond_76

    .line 202
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3c

    .line 204
    :cond_76
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->makeOneLineLinearLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 205
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v6, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;->getExpectedWidth()I
    :try_end_8d
    .catchall {:try_start_5b .. :try_end_8d} :catchall_58

    move-result v5

    goto :goto_3c

    .line 212
    .end local v0           #bb:Lcom/android/email/activity/bubblelayout/ViewerBubbleButton;
    :cond_8f
    monitor-exit p0

    return-void
.end method

.method public registerChildViewsFromOwnXML()V
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    .line 101
    return-void
.end method

.method public resetLayout()V
    .registers 4

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 218
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 222
    .local v1, layoutChildCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_1c

    .line 223
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 225
    :cond_1c
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mBubbleRecipientLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 226
    return-void
.end method

.method public setExpectedLayoutWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mExpectedLayoutWidth:I

    .line 113
    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .registers 3
    .parameter "type"
    .parameter "address"

    .prologue
    .line 543
    iput p1, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mType:I

    .line 544
    iput-object p2, p0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->mAddress:Ljava/lang/String;

    .line 545
    return-void
.end method
