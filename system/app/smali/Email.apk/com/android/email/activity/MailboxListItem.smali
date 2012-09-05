.class public Lcom/android/email/activity/MailboxListItem;
.super Landroid/widget/RelativeLayout;
.source "MailboxListItem.java"


# static fields
.field private static sDropAvailableBgColor:Ljava/lang/Integer;

.field private static sDropUnavailableBgDrawable:Landroid/graphics/drawable/Drawable;

.field private static sDropUnavailableFgColor:Ljava/lang/Integer;

.field private static sImageHitWidth:I

.field private static sTextCountColorDarkTheme:Ljava/lang/Integer;

.field private static sTextCountColorWhiteTheme:Ljava/lang/Integer;

.field private static sTextCountSelectedColorDarkTheme:Ljava/lang/Integer;

.field private static sTextCountSelectedColorWhiteTheme:Ljava/lang/Integer;

.field private static sTextMailboxColorDarkTheme:Ljava/lang/Integer;

.field private static sTextMailboxColorWhiteTheme:Ljava/lang/Integer;

.field private static sTextMailboxDisableColorDarkTheme:Ljava/lang/Integer;

.field private static sTextMailboxDisableColorWhiteTheme:Ljava/lang/Integer;

.field private static sTextMailboxSelectedColorDarkTheme:Ljava/lang/Integer;

.field private static sTextMailboxSelectedColorWhiteTheme:Ljava/lang/Integer;


# instance fields
.field public mAdapter:Lcom/android/email/activity/MailboxesAdapter;

.field public mBackgroundColor:I

.field private mCachedViewPositions:Z

.field public mCountBackground:Landroid/widget/ImageView;

.field private mDownEvent:Z

.field public mDragImpossibleIcon:Landroid/widget/ImageView;

.field public mFactor:I

.field public mFlagNoSelected:I

.field public mFolderIcon:Landroid/widget/ImageView;

.field public mHasChild:I

.field public mIsChecked:Z

.field public mIsSelected:Z

.field private mLabelCount:Landroid/widget/TextView;

.field private mLabelName:Landroid/widget/TextView;

.field public mMailboxId:J

.field public mMailboxType:Ljava/lang/Integer;

.field public mNameText:Ljava/lang/String;

.field public mNameView:Landroid/widget/TextView;

.field public mNameViewWidth:I

.field public mSelectedIconVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListItem;->mIsChecked:Z

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListItem;->mIsChecked:Z

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListItem;->mIsChecked:Z

    .line 132
    return-void
.end method

.method private getmFormattedName(I)Ljava/lang/CharSequence;
    .registers 6
    .parameter "moreSpace"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/email/activity/MailboxListItem;->mNameText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MailboxListItem;->mNameViewWidth:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindViewInit(Lcom/android/email/activity/MailboxesAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListItem;->mCachedViewPositions:Z

    .line 142
    return-void
.end method

.method public isDropTarget(J)Z
    .registers 9
    .parameter "itemMailbox"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    iget-wide v2, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_10

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    .line 195
    :cond_11
    :goto_11
    return v0

    .line 189
    :cond_12
    sget-boolean v2, Lcom/android/email/activity/MessageView;->isSms:Z

    if-eqz v2, :cond_1e

    .line 190
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->VALID_SMS_DROP_TARGET:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 193
    goto :goto_11

    .line 195
    :cond_1e
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->INVALID_DROP_TARGETS:[Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    goto :goto_11
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 148
    sget-object v1, Lcom/android/email/activity/MailboxListItem;->sDropAvailableBgColor:Ljava/lang/Integer;

    if-nez v1, :cond_bf

    .line 149
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sDropAvailableBgColor:Ljava/lang/Integer;

    .line 151
    const v1, 0x7f0203b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableFgColor:Ljava/lang/Integer;

    .line 153
    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxColorWhiteTheme:Ljava/lang/Integer;

    .line 155
    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextCountColorWhiteTheme:Ljava/lang/Integer;

    .line 157
    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxSelectedColorWhiteTheme:Ljava/lang/Integer;

    .line 159
    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorWhiteTheme:Ljava/lang/Integer;

    .line 161
    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextCountSelectedColorWhiteTheme:Ljava/lang/Integer;

    .line 163
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 164
    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxColorDarkTheme:Ljava/lang/Integer;

    .line 166
    const v1, 0x7f0b0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextCountColorDarkTheme:Ljava/lang/Integer;

    .line 168
    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxSelectedColorDarkTheme:Ljava/lang/Integer;

    .line 170
    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorDarkTheme:Ljava/lang/Integer;

    .line 172
    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MailboxListItem;->sTextCountSelectedColorDarkTheme:Ljava/lang/Integer;

    .line 175
    :cond_b6
    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MailboxListItem;->sImageHitWidth:I

    .line 180
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_bf
    const v1, 0x7f100162

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelName:Landroid/widget/TextView;

    .line 181
    const v1, 0x7f100165

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MailboxListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MailboxListItem;->mLabelCount:Landroid/widget/TextView;

    .line 182
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 289
    const/4 v3, 0x0

    .line 290
    .local v3, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v8, v9

    .line 292
    .local v8, touchX:I
    const-string v9, "persist.sys.language"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, currentLang:Ljava/lang/String;
    const/4 v0, 0x0

    .line 295
    .local v0, bLayoutRtl:Z
    sget v9, Lcom/android/email/activity/MailboxListItem;->sImageHitWidth:I

    iget v10, p0, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    add-int v5, v9, v10

    .line 296
    .local v5, imageRight:I
    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    .line 298
    .local v4, imageLeft:I
    if-eqz v0, :cond_33

    .line 299
    const/16 v7, 0x258

    .line 301
    .local v7, mailFolderItemWidth:I
    const v9, 0x7f100160

    :try_start_1f
    invoke-virtual {p0, v9}, Lcom/android/email/activity/MailboxListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 302
    .local v6, layoutItemView:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_46

    move-result v7

    .line 306
    .end local v6           #layoutItemView:Landroid/view/View;
    :goto_27
    iget v9, p0, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    sub-int v5, v7, v9

    .line 307
    sget v9, Lcom/android/email/activity/MailboxListItem;->sImageHitWidth:I

    sub-int v9, v7, v9

    iget v10, p0, Lcom/android/email/activity/MailboxListItem;->mFactor:I

    sub-int v4, v9, v10

    .line 309
    .end local v7           #mailFolderItemWidth:I
    :cond_33
    iget-boolean v9, p0, Lcom/android/email/activity/MailboxListItem;->mCachedViewPositions:Z

    if-nez v9, :cond_39

    .line 310
    iput-boolean v11, p0, Lcom/android/email/activity/MailboxListItem;->mCachedViewPositions:Z

    .line 312
    :cond_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_82

    .line 347
    :cond_40
    :goto_40
    :pswitch_40
    if-eqz v3, :cond_7c

    .line 348
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListItem;->invalidate()V

    .line 352
    :goto_45
    return v3

    .line 303
    .restart local v7       #mailFolderItemWidth:I
    :catch_46
    move-exception v2

    .line 304
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_27

    .line 314
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #mailFolderItemWidth:I
    :pswitch_4b
    if-ge v8, v5, :cond_53

    if-le v8, v4, :cond_53

    .line 315
    const/4 v3, 0x1

    .line 316
    iput-boolean v11, p0, Lcom/android/email/activity/MailboxListItem;->mDownEvent:Z

    goto :goto_40

    .line 317
    :cond_53
    iget v9, p0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    if-ne v9, v11, :cond_40

    .line 318
    const/4 v3, 0x1

    goto :goto_40

    .line 323
    :pswitch_59
    iput-boolean v12, p0, Lcom/android/email/activity/MailboxListItem;->mDownEvent:Z

    goto :goto_40

    .line 328
    :pswitch_5c
    iget-boolean v9, p0, Lcom/android/email/activity/MailboxListItem;->mDownEvent:Z

    if-eqz v9, :cond_74

    .line 330
    if-ge v8, v5, :cond_74

    if-le v8, v4, :cond_74

    .line 331
    const/4 v3, 0x1

    .line 332
    iget v9, p0, Lcom/android/email/activity/MailboxListItem;->mHasChild:I

    if-ne v9, v11, :cond_40

    .line 333
    invoke-virtual {p0, v12}, Lcom/android/email/activity/MailboxListItem;->playSoundEffect(I)V

    .line 334
    iget-object v9, p0, Lcom/android/email/activity/MailboxListItem;->mAdapter:Lcom/android/email/activity/MailboxesAdapter;

    iget-wide v10, p0, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-virtual {v9, v10, v11}, Lcom/android/email/activity/MailboxesAdapter;->updateMailboxVisivility(J)V

    goto :goto_40

    .line 340
    :cond_74
    iget v9, p0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    if-ne v9, v11, :cond_79

    .line 341
    const/4 v3, 0x1

    .line 343
    :cond_79
    iput-boolean v12, p0, Lcom/android/email/activity/MailboxListItem;->mDownEvent:Z

    goto :goto_40

    .line 350
    :cond_7c
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_45

    .line 312
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_5c
        :pswitch_40
        :pswitch_59
    .end packed-switch
.end method

.method public setDropTargetBackground(ZJ)V
    .registers 14
    .parameter "dragInProgress"
    .parameter "itemMailbox"

    .prologue
    const/16 v9, 0x3c

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xff

    .line 208
    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    if-ne v4, v7, :cond_72

    .line 209
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 210
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 211
    .local v1, labelNameColor:I
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 235
    .local v0, labelCountColor:I
    :goto_1e
    const/4 v3, 0x0

    .line 236
    .local v3, moreSpace:I
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_37

    .line 237
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 239
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mSelectedIconVisibility:I

    if-nez v4, :cond_b8

    .line 240
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 241
    const/4 v3, 0x0

    .line 246
    :goto_32
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_37
    if-eqz p1, :cond_fa

    .line 249
    invoke-virtual {p0, p2, p3}, Lcom/android/email/activity/MailboxListItem;->isDropTarget(J)Z

    move-result v4

    if-eqz v4, :cond_c0

    iget v4, p0, Lcom/android/email/activity/MailboxListItem;->mFlagNoSelected:I

    if-eq v4, v7, :cond_c0

    .line 251
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_4c

    .line 252
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    :cond_4c
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_5a

    .line 255
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 256
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mCountBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 283
    :cond_5a
    :goto_5a
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mLabelName:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mLabelCount:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    return-void

    .line 213
    .end local v0           #labelCountColor:I
    .end local v1           #labelNameColor:I
    .end local v3           #moreSpace:I
    :cond_65
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 214
    .restart local v1       #labelNameColor:I
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxDisableColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #labelCountColor:I
    goto :goto_1e

    .line 217
    .end local v0           #labelCountColor:I
    .end local v1           #labelNameColor:I
    :cond_72
    iget-boolean v4, p0, Lcom/android/email/activity/MailboxListItem;->mIsSelected:Z

    if-eqz v4, :cond_96

    .line 218
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 219
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxSelectedColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 220
    .restart local v1       #labelNameColor:I
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextCountSelectedColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #labelCountColor:I
    goto :goto_1e

    .line 222
    .end local v0           #labelCountColor:I
    .end local v1           #labelNameColor:I
    :cond_89
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxSelectedColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 223
    .restart local v1       #labelNameColor:I
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextCountSelectedColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #labelCountColor:I
    goto :goto_1e

    .line 226
    .end local v0           #labelCountColor:I
    .end local v1           #labelNameColor:I
    :cond_96
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 227
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 228
    .restart local v1       #labelNameColor:I
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextCountColorDarkTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #labelCountColor:I
    goto/16 :goto_1e

    .line 230
    .end local v0           #labelCountColor:I
    .end local v1           #labelNameColor:I
    :cond_aa
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextMailboxColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 231
    .restart local v1       #labelNameColor:I
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sTextCountColorWhiteTheme:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #labelCountColor:I
    goto/16 :goto_1e

    .line 243
    .restart local v2       #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3       #moreSpace:I
    :cond_b8
    const/16 v4, 0xe

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 244
    const/16 v3, 0xe

    goto/16 :goto_32

    .line 259
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_c0
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_d9

    .line 260
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mNameView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-direct {p0, v5}, Lcom/android/email/activity/MailboxListItem;->getmFormattedName(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_d9
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableFgColor:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 266
    sget-object v4, Lcom/android/email/activity/MailboxListItem;->sDropUnavailableFgColor:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 267
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_5a

    .line 268
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 269
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mCountBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    goto/16 :goto_5a

    .line 273
    :cond_fa
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_10c

    .line 274
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mDragImpossibleIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mNameView:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/android/email/activity/MailboxListItem;->getmFormattedName(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_10c
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_5a

    .line 279
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mFolderIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 280
    iget-object v4, p0, Lcom/android/email/activity/MailboxListItem;->mCountBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    goto/16 :goto_5a
.end method
