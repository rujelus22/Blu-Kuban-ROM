.class public Lcom/android/email/activity/MessageViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragment$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

.field mDefaultReplyAll:Z

.field mEnableReplyForwardButtons:Z

.field private mFavoriteIcon:Landroid/widget/ImageView;

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mForwardButton:Landroid/view/View;

.field private mImmutableMessageId:Ljava/lang/Long;

.field private mMeetingMaybe:Landroid/view/View;

.field private mMeetingNo:Landroid/view/View;

.field private mMeetingYes:Landroid/view/View;

.field private mMoreButton:Landroid/view/View;

.field private mPreviousMeetingResponse:I

.field private mReplyAllButton:Landroid/view/View;

.field private mReplyButton:Landroid/view/View;

.field private mSupportsMove:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    .line 138
    sget-object v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    return-void
.end method

.method private enableReplyForwardButtons(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragment;->mEnableReplyForwardButtons:Z

    .line 254
    if-eqz p1, :cond_32

    const/4 v0, 0x0

    .line 258
    .local v0, visibility:I
    :goto_5
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMoreButton:Landroid/view/View;

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragment;->mDefaultReplyAll:Z

    if-eqz v1, :cond_12

    .line 259
    :cond_d
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllButton:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 264
    :cond_12
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMoreButton:Landroid/view/View;

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragment;->mDefaultReplyAll:Z

    if-nez v1, :cond_1f

    .line 265
    :cond_1a
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyButton:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 268
    :cond_1f
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardButton:Landroid/view/View;

    if-eqz v1, :cond_28

    .line 269
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_28
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMoreButton:Landroid/view/View;

    if-eqz v1, :cond_31

    .line 272
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMoreButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_31
    return-void

    .line 254
    .end local v0           #visibility:I
    :cond_32
    const/16 v0, 0x8

    goto :goto_5
.end method

.method private initializeArgCache()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 169
    :goto_4
    return-void

    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messageId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    goto :goto_4
.end method

.method public static newInstance(J)Lcom/android/email/activity/MessageViewFragment;
    .registers 6
    .parameter "messageId"

    .prologue
    .line 148
    const-wide/16 v2, -0x1

    cmp-long v2, p0, v2

    if-nez v2, :cond_c

    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 151
    :cond_c
    new-instance v1, Lcom/android/email/activity/MessageViewFragment;

    invoke-direct {v1}, Lcom/android/email/activity/MessageViewFragment;-><init>()V

    .line 152
    .local v1, instance:Lcom/android/email/activity/MessageViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "messageId"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 155
    return-object v1
.end method

.method private onClickFavorite()V
    .registers 6

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v2

    if-nez v2, :cond_7

    .line 345
    :goto_6
    return-void

    .line 332
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 335
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-nez v2, :cond_2f

    const/4 v1, 0x1

    .line 336
    .local v1, newFavorite:Z
    :goto_10
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_31

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_16
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->setStarContentDescription(Z)V

    .line 340
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    .line 343
    iput-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 344
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/email/Controller;->setMessageFavorite(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_6

    .line 335
    .end local v1           #newFavorite:Z
    :cond_2f
    const/4 v1, 0x0

    goto :goto_10

    .line 336
    .restart local v1       #newFavorite:Z
    :cond_31
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_16
.end method

.method private onDelete()V
    .registers 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onBeforeMessageGone()V

    .line 493
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/ActivityHelper;->deleteMessage(Landroid/content/Context;J)V

    .line 494
    return-void
.end method

.method private onInviteLinkClicked()V
    .registers 7

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v4

    if-nez v4, :cond_7

    .line 387
    :goto_6
    return-void

    .line 379
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 380
    .local v2, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    new-instance v4, Lcom/android/emailcommon/mail/PackedString;

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    const-string v5, "DTSTART"

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, startTime:Ljava/lang/String;
    if-eqz v3, :cond_24

    .line 382
    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 383
    .local v0, epochTimeMillis:J
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v4, v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onCalendarLinkClicked(J)V

    goto :goto_6

    .line 385
    .end local v0           #epochTimeMillis:J
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "meetingInfo without DTSTART "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onMarkAsUnread()V
    .registers 2

    .prologue
    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 498
    return-void
.end method

.method private onMove()V
    .registers 6

    .prologue
    .line 479
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v3

    aput-wide v3, v1, v2

    invoke-static {v1, p0}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance([JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    .line 481
    .local v0, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method private onRespondToInvite(II)V
    .registers 7
    .parameter "response"
    .parameter "toastResId"

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v1

    if-nez v1, :cond_7

    .line 375
    :goto_6
    return-void

    .line 367
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 369
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget v1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    if-eq v1, p1, :cond_1a

    .line 370
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->sendMeetingResponse(JI)V

    .line 371
    iput p1, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    .line 373
    :cond_1a
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 374
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1, p1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    goto :goto_6
.end method

.method private setStarContentDescription(Z)V
    .registers 5
    .parameter "isFavorite"

    .prologue
    .line 318
    if-eqz p1, :cond_15

    .line 319
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 325
    :goto_14
    return-void

    .line 322
    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_14
.end method


# virtual methods
.method public getMessageId()J
    .registers 3

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->initializeArgCache()V

    .line 176
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mImmutableMessageId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v2

    if-nez v2, :cond_7

    .line 441
    :goto_6
    return-void

    .line 394
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_72

    .line 440
    :goto_e
    :pswitch_e
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onClick(Landroid/view/View;)V

    goto :goto_6

    .line 396
    :pswitch_12
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReply()V

    goto :goto_6

    .line 399
    :pswitch_18
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReplyAll()V

    goto :goto_6

    .line 402
    :pswitch_1e
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessageViewFragment$Callback;->onForward()V

    goto :goto_6

    .line 406
    :pswitch_24
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onClickFavorite()V

    goto :goto_6

    .line 410
    :pswitch_28
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onInviteLinkClicked()V

    goto :goto_6

    .line 414
    :pswitch_2c
    const/4 v2, 0x1

    const v3, 0x7f08008c

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_6

    .line 418
    :pswitch_34
    const/4 v2, 0x2

    const v3, 0x7f08008d

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_6

    .line 422
    :pswitch_3c
    const/4 v2, 0x3

    const v3, 0x7f08008e

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V

    goto :goto_6

    .line 427
    :pswitch_44
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mMoreButton:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 428
    .local v1, popup:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 429
    .local v0, menu:Landroid/view/Menu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0d0003

    invoke-virtual {v2, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 433
    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragment;->mDefaultReplyAll:Z

    if-eqz v2, :cond_6e

    const v2, 0x7f0e00ac

    :goto_64
    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 434
    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 435
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_e

    .line 433
    :cond_6e
    const v2, 0x7f0e00ab

    goto :goto_64

    .line 394
    :pswitch_data_72
    .packed-switch 0x7f0e00aa
        :pswitch_24
        :pswitch_12
        :pswitch_18
        :pswitch_44
        :pswitch_1e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_28
        :pswitch_e
        :pswitch_2c
        :pswitch_34
        :pswitch_3c
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->setHasOptionsMenu(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 187
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 188
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 243
    const v0, 0x7f0d0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 244
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e00aa

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 214
    const v1, 0x7f0e00ab

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyButton:Landroid/view/View;

    .line 215
    const v1, 0x7f0e00ac

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllButton:Landroid/view/View;

    .line 216
    const v1, 0x7f0e00ae

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardButton:Landroid/view/View;

    .line 217
    const v1, 0x7f0e00b6

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingYes:Landroid/view/View;

    .line 218
    const v1, 0x7f0e00b7

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingMaybe:Landroid/view/View;

    .line 219
    const v1, 0x7f0e00b8

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingNo:Landroid/view/View;

    .line 220
    const v1, 0x7f0e00ad

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMoreButton:Landroid/view/View;

    .line 222
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMoreButton:Landroid/view/View;

    if-eqz v1, :cond_66

    .line 226
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMoreButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_66
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardButton:Landroid/view/View;

    if-eqz v1, :cond_6f

    .line 229
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mForwardButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_6f
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingYes:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingMaybe:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mMeetingNo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v1, 0x7f0e00b4

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 238
    return-object v0
.end method

.method public onMarkMessageAsRead(Z)V
    .registers 6
    .parameter "isRead"

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v1

    if-nez v1, :cond_7

    .line 360
    :cond_6
    :goto_6
    return-void

    .line 352
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 353
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v1, p1, :cond_6

    .line 354
    iput-boolean p1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 355
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->setMessageRead(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 356
    if-nez p1, :cond_6

    .line 357
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onMessageSetUnread()V

    goto :goto_6
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 445
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->isMessageOpen()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 446
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    .line 458
    :cond_e
    :pswitch_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 448
    :pswitch_10
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReply()V

    goto :goto_f

    .line 451
    :pswitch_16
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onReplyAll()V

    goto :goto_f

    .line 454
    :pswitch_1c
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onForward()V

    goto :goto_f

    .line 446
    :pswitch_data_22
    .packed-switch 0x7f0e00ab
        :pswitch_10
        :pswitch_16
        :pswitch_e
        :pswitch_1c
    .end packed-switch
.end method

.method protected onMessageShown(JLcom/android/emailcommon/provider/Mailbox;)V
    .registers 10
    .parameter "messageId"
    .parameter "mailbox"

    .prologue
    .line 297
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JLcom/android/emailcommon/provider/Mailbox;)V

    .line 299
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 300
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/Account;->supportsMoveMessages(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p3}, Lcom/android/emailcommon/provider/Mailbox;->canHaveMessagesMoved()Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x1

    .line 302
    .local v2, supportsMove:Z
    :goto_1c
    iget-boolean v3, p0, Lcom/android/email/activity/MessageViewFragment;->mSupportsMove:Z

    if-eq v3, v2, :cond_2b

    .line 303
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragment;->mSupportsMove:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 305
    .local v1, host:Landroid/app/Activity;
    if-eqz v1, :cond_2b

    .line 306
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 311
    .end local v1           #host:Landroid/app/Activity;
    :cond_2b
    iget v3, p3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-static {v3}, Lcom/android/emailcommon/provider/Mailbox;->isMailboxTypeReplyAndForwardable(I)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragment;->enableReplyForwardButtons(Z)V

    .line 312
    return-void

    .line 300
    .end local v2           #supportsMove:Z
    :cond_35
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public onMoveToMailboxSelected(J[J)V
    .registers 5
    .parameter "newMailboxId"
    .parameter "messageIds"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragment$Callback;->onBeforeMessageGone()V

    .line 488
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/content/Context;J[J)V

    .line 489
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 464
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a

    .line 475
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 466
    :sswitch_d
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMove()V

    goto :goto_c

    .line 469
    :sswitch_11
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onDelete()V

    goto :goto_c

    .line 472
    :sswitch_15
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragment;->onMarkAsUnread()V

    goto :goto_c

    .line 464
    nop

    :sswitch_data_1a
    .sparse-switch
        0x7f0e00e9 -> :sswitch_11
        0x7f0e00ea -> :sswitch_d
        0x7f0e00ef -> :sswitch_15
    .end sparse-switch
.end method

.method protected onPostLoadBody()V
    .registers 3

    .prologue
    .line 507
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->onMarkMessageAsRead(Z)V

    .line 510
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 511
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragment;->setStarContentDescription(Z)V

    .line 512
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    .line 248
    const v0, 0x7f0e00ea

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragment;->mSupportsMove:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 249
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 192
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onResume()V

    .line 193
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment;->mMoreButton:Landroid/view/View;

    if-eqz v4, :cond_34

    .line 194
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "reply_all"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/email/activity/MessageViewFragment;->mDefaultReplyAll:Z

    .line 197
    const/16 v1, 0x8

    .line 198
    .local v1, replyVisibility:I
    const/16 v0, 0x8

    .line 199
    .local v0, replyAllVisibility:I
    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragment;->mEnableReplyForwardButtons:Z

    if-eqz v4, :cond_2a

    .line 200
    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragment;->mDefaultReplyAll:Z

    if-eqz v4, :cond_35

    move v1, v2

    .line 201
    :goto_25
    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragment;->mDefaultReplyAll:Z

    if-eqz v4, :cond_37

    move v0, v3

    .line 203
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment;->mReplyAllButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .end local v0           #replyAllVisibility:I
    .end local v1           #replyVisibility:I
    :cond_34
    return-void

    .restart local v0       #replyAllVisibility:I
    .restart local v1       #replyVisibility:I
    :cond_35
    move v1, v3

    .line 200
    goto :goto_25

    :cond_37
    move v0, v2

    .line 201
    goto :goto_2a
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 4
    .parameter "activity"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected resetView()V
    .registers 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I

    .line 285
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 277
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    .line 278
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;

    invoke-super {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V

    .line 279
    return-void
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 516
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 518
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    .line 522
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragment;->addTabFlags(I)V

    .line 524
    :cond_18
    return-void

    .line 518
    :cond_19
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_b
.end method
