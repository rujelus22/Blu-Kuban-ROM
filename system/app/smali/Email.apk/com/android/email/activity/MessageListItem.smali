.class public Lcom/android/email/activity/MessageListItem;
.super Landroid/view/View;
.source "MessageListItem.java"


# static fields
.field private static ACTIVATED_TEXT_COLOR:I

.field private static DATE_TEXT_COLOR_READ:I

.field private static DATE_TEXT_COLOR_UNREAD:I

.field private static DEFAULT_TEXT_COLOR:I

.field private static SENDERS_TEXT_COLOR_READ:I

.field private static SENDERS_TEXT_COLOR_UNREAD:I

.field private static SNIPPET_TEXT_COLOR_READ:I

.field private static SNIPPET_TEXT_COLOR_UNREAD:I

.field private static SUBJECT_TEXT_COLOR_READ:I

.field private static SUBJECT_TEXT_COLOR_UNREAD:I

.field private static sAttachmentIcon:Landroid/graphics/Bitmap;

.field private static sBadgeMargin:I

.field private static final sBoldPaint:Landroid/text/TextPaint;

.field private static final sDatePaint:Landroid/text/TextPaint;

.field private static final sDefaultPaint:Landroid/text/TextPaint;

.field private static sFavoriteIconOff:Landroid/graphics/Bitmap;

.field private static sFavoriteIconOn:Landroid/graphics/Bitmap;

.field private static sInit:Z

.field private static sInviteIcon:Landroid/graphics/Bitmap;

.field private static sItemHeightNormal:I

.field private static sItemHeightWide:I

.field private static sScaledTouchSlop:I

.field private static sSelectedIconOff:Landroid/graphics/Bitmap;

.field private static sSelectedIconOn:Landroid/graphics/Bitmap;

.field private static sStateForwarded:Landroid/graphics/Bitmap;

.field private static sStateReplied:Landroid/graphics/Bitmap;

.field private static sStateRepliedAndForwarded:Landroid/graphics/Bitmap;

.field private static sSubjectDescription:Ljava/lang/String;

.field private static sSubjectEmptyDescription:Ljava/lang/String;

.field private static sSubjectSnippetDivider:Ljava/lang/String;


# instance fields
.field mAccountId:J

.field private mAdapter:Lcom/android/email/activity/MessagesAdapter;

.field public mColorChipPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

.field private mCurentBackground:Landroid/graphics/drawable/Drawable;

.field private mDownEvent:Z

.field private mFormattedDate:Ljava/lang/CharSequence;

.field private mFormattedSender:Ljava/lang/CharSequence;

.field public mHasAttachment:Z

.field public mHasBeenForwarded:Z

.field public mHasBeenRepliedTo:Z

.field public mHasInvite:Z

.field public mIsFavorite:Z

.field private mLayout:Lcom/android/email/activity/ThreePaneLayout;

.field mMailboxId:J

.field mMessageId:J

.field private mMode:I

.field public mRead:Z

.field private mReadSelector:Landroid/graphics/drawable/Drawable;

.field public mSender:Ljava/lang/String;

.field public mSnippet:Ljava/lang/CharSequence;

.field private mSubject:Ljava/lang/String;

.field private mSubjectLayout:Landroid/text/StaticLayout;

.field public mText:Landroid/text/SpannableStringBuilder;

.field mTimeFormatted:J

.field private mUnreadSelector:Landroid/graphics/drawable/Drawable;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWideReadSelector:Landroid/graphics/drawable/Drawable;

.field private mWideUnreadSelector:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 90
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    .line 91
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    .line 92
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    .line 511
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MessageListItem;->sScaledTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 127
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 137
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 138
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 137
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 138
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 137
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 138
    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private calculateDrawingData()V
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 335
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->subjectFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 336
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->calculateSubjectText()V

    .line 337
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mText:Landroid/text/SpannableStringBuilder;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->subjectWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubjectLayout:Landroid/text/StaticLayout;

    .line 339
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->subjectLineCount:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSubjectLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 341
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubjectLayout:Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->subjectLineCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v8

    .line 342
    .local v8, end:I
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->subjectWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubjectLayout:Landroid/text/StaticLayout;

    .line 347
    .end local v8           #end:I
    :cond_50
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_63

    sget-object v9, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    .line 349
    .local v9, senderPaint:Landroid/text/TextPaint;
    :goto_56
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSender:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 350
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    .line 359
    :goto_62
    return-void

    .line 347
    .end local v9           #senderPaint:Landroid/text/TextPaint;
    :cond_63
    sget-object v9, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    goto :goto_56

    .line 352
    .restart local v9       #senderPaint:Landroid/text/TextPaint;
    :cond_66
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v10, v0, Lcom/android/email/activity/MessageListItemCoordinates;->sendersWidth:I

    .line 353
    .local v10, senderWidth:I
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v0, v0, Lcom/android/email/activity/MessageListItemCoordinates;->sendersFontSize:I

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 354
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_8b

    sget v0, Lcom/android/email/activity/MessageListItem;->SENDERS_TEXT_COLOR_READ:I

    :goto_78
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListItem;->getFontColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 356
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSender:Ljava/lang/String;

    int-to-float v1, v10

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v9, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    goto :goto_62

    .line 354
    :cond_8b
    sget v0, Lcom/android/email/activity/MessageListItem;->SENDERS_TEXT_COLOR_UNREAD:I

    goto :goto_78
.end method

.method private calculateSubjectText()V
    .registers 10

    .prologue
    const/16 v8, 0x21

    .line 314
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mText:Landroid/text/SpannableStringBuilder;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_f

    .line 332
    :cond_e
    :goto_e
    return-void

    .line 317
    :cond_f
    const/4 v0, 0x0

    .line 318
    .local v0, hasSubject:Z
    const/4 v2, 0x0

    .line 319
    .local v2, snippetStart:I
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 320
    iget-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v4, :cond_5f

    sget v4, Lcom/android/email/activity/MessageListItem;->SUBJECT_TEXT_COLOR_READ:I

    :goto_1f
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageListItem;->getFontColor(I)I

    move-result v3

    .line 322
    .local v3, subjectColor:I
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mText:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 324
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 326
    .end local v3           #subjectColor:I
    :cond_3c
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 327
    iget-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v4, :cond_62

    sget v4, Lcom/android/email/activity/MessageListItem;->SNIPPET_TEXT_COLOR_READ:I

    :goto_4a
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageListItem;->getFontColor(I)I

    move-result v1

    .line 329
    .local v1, snippetColor:I
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mText:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    .line 320
    .end local v1           #snippetColor:I
    :cond_5f
    sget v4, Lcom/android/email/activity/MessageListItem;->SUBJECT_TEXT_COLOR_UNREAD:I

    goto :goto_1f

    .line 327
    :cond_62
    sget v4, Lcom/android/email/activity/MessageListItem;->SNIPPET_TEXT_COLOR_UNREAD:I

    goto :goto_4a
.end method

.method private getFontColor(I)I
    .registers 3
    .parameter "defaultColor"

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_8

    sget p1, Lcom/android/email/activity/MessageListItem;->ACTIVATED_TEXT_COLOR:I

    .end local p1
    :cond_8
    return p1
.end method

.method private getViewMode(I)I
    .registers 3
    .parameter "width"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageListItemCoordinates;->getMode(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 155
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    .line 156
    sget-boolean v1, Lcom/android/email/activity/MessageListItem;->sInit:Z

    if-nez v1, :cond_118

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSubjectDescription:Ljava/lang/String;

    .line 159
    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSubjectEmptyDescription:Ljava/lang/String;

    .line 160
    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSubjectSnippetDivider:Ljava/lang/String;

    .line 161
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sItemHeightWide:I

    .line 163
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sItemHeightNormal:I

    .line 166
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 167
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 168
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 169
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 170
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 173
    const v1, 0x7f02001e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    .line 174
    const v1, 0x7f020020

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    .line 175
    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sBadgeMargin:I

    .line 176
    const v1, 0x7f020009

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    .line 178
    const v1, 0x7f02000b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    .line 180
    const v1, 0x7f020004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOff:Landroid/graphics/Bitmap;

    .line 182
    const v1, 0x7f020005

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOn:Landroid/graphics/Bitmap;

    .line 185
    const v1, 0x7f020022

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sStateReplied:Landroid/graphics/Bitmap;

    .line 187
    const v1, 0x7f02001f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sStateForwarded:Landroid/graphics/Bitmap;

    .line 189
    const v1, 0x7f020021

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sStateRepliedAndForwarded:Landroid/graphics/Bitmap;

    .line 192
    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->DEFAULT_TEXT_COLOR:I

    .line 193
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->ACTIVATED_TEXT_COLOR:I

    .line 194
    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SUBJECT_TEXT_COLOR_READ:I

    .line 195
    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SUBJECT_TEXT_COLOR_UNREAD:I

    .line 196
    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SNIPPET_TEXT_COLOR_READ:I

    .line 197
    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SNIPPET_TEXT_COLOR_UNREAD:I

    .line 198
    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SENDERS_TEXT_COLOR_READ:I

    .line 199
    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->SENDERS_TEXT_COLOR_UNREAD:I

    .line 200
    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->DATE_TEXT_COLOR_READ:I

    .line 201
    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->DATE_TEXT_COLOR_UNREAD:I

    .line 203
    sput-boolean v3, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 205
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_118
    return-void
.end method

.method private initializeSlop(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 514
    sget v4, Lcom/android/email/activity/MessageListItem;->sScaledTouchSlop:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    .line 515
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 516
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 517
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 519
    .local v1, density:F
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 520
    const/high16 v4, 0x3fc0

    mul-float v3, v1, v4

    .line 524
    .local v3, sizeAndDensity:F
    :goto_1e
    const/high16 v4, 0x41c0

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/android/email/activity/MessageListItem;->sScaledTouchSlop:I

    .line 526
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #density:F
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #sizeAndDensity:F
    :cond_27
    return-void

    .line 522
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #density:F
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_28
    move v3, v1

    .restart local v3       #sizeAndDensity:F
    goto :goto_1e
.end method

.method private measureHeight(II)I
    .registers 7
    .parameter "measureSpec"
    .parameter "mode"

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 383
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 385
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_f

    .line 387
    move v0, v2

    .line 401
    :cond_e
    :goto_e
    return v0

    .line 390
    :cond_f
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    if-nez v3, :cond_1e

    .line 391
    sget v0, Lcom/android/email/activity/MessageListItem;->sItemHeightWide:I

    .line 395
    :goto_15
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_e

    .line 398
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_e

    .line 393
    :cond_1e
    sget v0, Lcom/android/email/activity/MessageListItem;->sItemHeightNormal:I

    goto :goto_15
.end method

.method private populateContentDescription()V
    .registers 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSubjectDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 597
    :goto_20
    return-void

    .line 595
    :cond_21
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubjectEmptyDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListItem;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method public static resetDrawingCaches()V
    .registers 1

    .prologue
    .line 213
    invoke-static {}, Lcom/android/email/activity/MessageListItemCoordinates;->resetCaches()V

    .line 214
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 215
    return-void
.end method

.method private updateBackground()V
    .registers 5

    .prologue
    .line 276
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/activity/MessageListItemCoordinates;->isMultiPane(Landroid/content/Context;)Z

    move-result v0

    .line 277
    .local v0, isMultiPane:Z
    iget-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v2, :cond_4d

    .line 278
    if-eqz v0, :cond_35

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mLayout:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/ThreePaneLayout;->isLeftPaneVisible()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 279
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mWideReadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_29

    .line 280
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListItem;->mWideReadSelector:Landroid/graphics/drawable/Drawable;

    .line 283
    :cond_29
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mWideReadSelector:Landroid/graphics/drawable/Drawable;

    .line 306
    .local v1, newBackground:Landroid/graphics/drawable/Drawable;
    :goto_2b
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_34

    .line 308
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iput-object v1, p0, Lcom/android/email/activity/MessageListItem;->mCurentBackground:Landroid/graphics/drawable/Drawable;

    .line 311
    :cond_34
    return-void

    .line 285
    .end local v1           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_35
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mReadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4a

    .line 286
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListItem;->mReadSelector:Landroid/graphics/drawable/Drawable;

    .line 289
    :cond_4a
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mReadSelector:Landroid/graphics/drawable/Drawable;

    .restart local v1       #newBackground:Landroid/graphics/drawable/Drawable;
    goto :goto_2b

    .line 292
    .end local v1           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_4d
    if-eqz v0, :cond_6f

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mLayout:Lcom/android/email/activity/ThreePaneLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/ThreePaneLayout;->isLeftPaneVisible()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 293
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mWideUnreadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6c

    .line 294
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListItem;->mWideUnreadSelector:Landroid/graphics/drawable/Drawable;

    .line 297
    :cond_6c
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mWideUnreadSelector:Landroid/graphics/drawable/Drawable;

    .restart local v1       #newBackground:Landroid/graphics/drawable/Drawable;
    goto :goto_2b

    .line 299
    .end local v1           #newBackground:Landroid/graphics/drawable/Drawable;
    :cond_6f
    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mUnreadSelector:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_84

    .line 300
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageListItem;->mUnreadSelector:Landroid/graphics/drawable/Drawable;

    .line 303
    :cond_84
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mUnreadSelector:Landroid/graphics/drawable/Drawable;

    .restart local v1       #newBackground:Landroid/graphics/drawable/Drawable;
    goto :goto_2b
.end method


# virtual methods
.method public bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/ThreePaneLayout;)V
    .registers 3
    .parameter "adapter"
    .parameter "layout"

    .prologue
    .line 505
    iput-object p2, p0, Lcom/android/email/activity/MessageListItem;->mLayout:Lcom/android/email/activity/ThreePaneLayout;

    .line 506
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 507
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->requestLayout()V

    .line 508
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 581
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 583
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 584
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 585
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListItem;->setSelected(Z)V

    .line 408
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->updateBackground()V

    .line 409
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 410
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .parameter "canvas"

    .prologue
    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mColorChipPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_39

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->chipX:I

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->chipY:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->chipX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v4, v4, Lcom/android/email/activity/MessageListItemCoordinates;->chipWidth:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->chipY:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v5, v5, Lcom/android/email/activity/MessageListItemCoordinates;->chipHeight:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageListItem;->mColorChipPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 436
    :cond_39
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v1

    if-eqz v1, :cond_1ae

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOn:Landroid/graphics/Bitmap;

    :goto_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 440
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v1, :cond_1b2

    sget-object v7, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    .line 441
    .local v7, senderPaint:Landroid/graphics/Paint;
    :goto_63
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v1, :cond_1b6

    sget v1, Lcom/android/email/activity/MessageListItem;->SENDERS_TEXT_COLOR_READ:I

    :goto_6b
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListItem;->getFontColor(I)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->sendersFontSize:I

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mFormattedSender:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->sendersX:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->sendersY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v6, v6, Lcom/android/email/activity/MessageListItemCoordinates;->sendersAscent:I

    sub-int/2addr v1, v6

    int-to-float v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 449
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    if-eqz v1, :cond_1ba

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    if-eqz v1, :cond_1ba

    .line 450
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sStateRepliedAndForwarded:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->stateX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->stateY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 461
    :cond_c7
    :goto_c7
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDefaultPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->subjectFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->subjectX:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->subjectY:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mSubjectLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 470
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->dateFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 471
    sget-object v2, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v1, :cond_1f6

    sget v1, Lcom/android/email/activity/MessageListItem;->DATE_TEXT_COLOR_READ:I

    :goto_10b
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->dateXEnd:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-int v2, v2

    sub-int v15, v1, v2

    .line 475
    .local v15, dateX:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    int-to-float v12, v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v1, v1, Lcom/android/email/activity/MessageListItemCoordinates;->dateY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->dateAscent:I

    sub-int/2addr v1, v2

    int-to-float v13, v1

    sget-object v14, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 479
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-eqz v1, :cond_1fa

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    :goto_155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->starX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->starY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 485
    sget v1, Lcom/android/email/activity/MessageListItem;->sBadgeMargin:I

    sub-int v16, v15, v1

    .line 486
    .local v16, iconsLeft:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    if-eqz v1, :cond_18d

    .line 487
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v16, v16, v1

    .line 488
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->paperclipY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 490
    :cond_18d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    if-eqz v1, :cond_1ad

    .line 491
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v16, v16, v1

    .line 492
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sInviteIcon:Landroid/graphics/Bitmap;

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->paperclipY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 495
    :cond_1ad
    return-void

    .line 436
    .end local v7           #senderPaint:Landroid/graphics/Paint;
    .end local v15           #dateX:I
    .end local v16           #iconsLeft:I
    :cond_1ae
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_47

    .line 440
    :cond_1b2
    sget-object v7, Lcom/android/email/activity/MessageListItem;->sBoldPaint:Landroid/text/TextPaint;

    goto/16 :goto_63

    .line 441
    .restart local v7       #senderPaint:Landroid/graphics/Paint;
    :cond_1b6
    sget v1, Lcom/android/email/activity/MessageListItem;->SENDERS_TEXT_COLOR_UNREAD:I

    goto/16 :goto_6b

    .line 452
    :cond_1ba
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mHasBeenRepliedTo:Z

    if-eqz v1, :cond_1d8

    .line 453
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sStateReplied:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->stateX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->stateY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_c7

    .line 455
    :cond_1d8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageListItem;->mHasBeenForwarded:Z

    if-eqz v1, :cond_c7

    .line 456
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sStateForwarded:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v2, v2, Lcom/android/email/activity/MessageListItemCoordinates;->stateX:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v3, v3, Lcom/android/email/activity/MessageListItemCoordinates;->stateY:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_c7

    .line 471
    :cond_1f6
    sget v1, Lcom/android/email/activity/MessageListItem;->DATE_TEXT_COLOR_UNREAD:I

    goto/16 :goto_10b

    .line 479
    .restart local v15       #dateX:I
    :cond_1fa
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_155
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 414
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 416
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListItemCoordinates;->forWidth(Landroid/content/Context;I)Lcom/android/email/activity/MessageListItemCoordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    .line 417
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->calculateDrawingData()V

    .line 418
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 362
    if-nez p1, :cond_6

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    if-nez v1, :cond_20

    .line 363
    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 364
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageListItem;->getViewMode(I)I

    move-result v0

    .line 365
    .local v0, mode:I
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    if-eq v0, v1, :cond_18

    .line 366
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    .line 368
    :cond_18
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMode:I

    invoke-direct {p0, p2, v1}, Lcom/android/email/activity/MessageListItem;->measureHeight(II)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 370
    .end local v0           #mode:I
    :cond_20
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageListItem;->setMeasuredDimension(II)V

    .line 371
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageListItem;->initializeSlop(Landroid/content/Context;)V

    .line 536
    const/4 v1, 0x0

    .line 537
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 538
    .local v3, touchX:I
    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v6, v6, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkX:I

    iget-object v7, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v7, v7, Lcom/android/email/activity/MessageListItemCoordinates;->checkmarkWidthIncludingMargins:I

    add-int/2addr v6, v7

    sget v7, Lcom/android/email/activity/MessageListItem;->sScaledTouchSlop:I

    add-int v0, v6, v7

    .line 540
    .local v0, checkRight:I
    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mCoordinates:Lcom/android/email/activity/MessageListItemCoordinates;

    iget v6, v6, Lcom/android/email/activity/MessageListItemCoordinates;->starX:I

    sget v7, Lcom/android/email/activity/MessageListItem;->sScaledTouchSlop:I

    sub-int v2, v6, v7

    .line 542
    .local v2, starLeft:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_66

    .line 570
    :cond_2b
    :goto_2b
    :pswitch_2b
    if-eqz v1, :cond_60

    .line 571
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->invalidate()V

    .line 576
    :goto_30
    return v1

    .line 544
    :pswitch_31
    if-lt v3, v0, :cond_35

    if-le v3, v2, :cond_2b

    .line 545
    :cond_35
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    .line 546
    if-lt v3, v0, :cond_3b

    if-le v3, v2, :cond_2b

    .line 547
    :cond_3b
    const/4 v1, 0x1

    goto :goto_2b

    .line 553
    :pswitch_3d
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    goto :goto_2b

    .line 557
    :pswitch_40
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    if-eqz v6, :cond_2b

    .line 558
    if-ge v3, v0, :cond_4d

    .line 559
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4, p0}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;)V

    .line 560
    const/4 v1, 0x1

    goto :goto_2b

    .line 561
    :cond_4d
    if-le v3, v2, :cond_2b

    .line 562
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-nez v6, :cond_5e

    :goto_53
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 563
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    invoke-virtual {v4, p0, v5}, Lcom/android/email/activity/MessagesAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V

    .line 564
    const/4 v1, 0x1

    goto :goto_2b

    :cond_5e
    move v4, v5

    .line 562
    goto :goto_53

    .line 573
    :cond_60
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_30

    .line 542
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_31
        :pswitch_40
        :pswitch_2b
        :pswitch_3d
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "subject"
    .parameter "snippet"
    .parameter "forceUpdate"

    .prologue
    const/4 v5, 0x0

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, changed:Z
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    .line 224
    const/4 v0, 0x1

    .line 225
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->populateContentDescription()V

    .line 228
    :cond_10
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    invoke-static {v4, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 229
    iput-object p2, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    .line 230
    const/4 v0, 0x1

    .line 233
    :cond_1b
    if-nez p3, :cond_27

    if-nez v0, :cond_27

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    if-nez v4, :cond_6c

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    if-nez v4, :cond_6c

    .line 234
    :cond_27
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 235
    .local v3, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 236
    .local v1, hasSubject:Z
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 237
    new-instance v2, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSubject:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 238
    .local v2, ss:Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/StyleSpan;

    iget-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v4, :cond_6d

    move v4, v5

    :goto_43
    invoke-direct {v6, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v7, 0x21

    invoke-virtual {v2, v6, v5, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 240
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 241
    const/4 v1, 0x1

    .line 243
    .end local v2           #ss:Landroid/text/SpannableString;
    :cond_53
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 244
    if-eqz v1, :cond_62

    .line 245
    sget-object v4, Lcom/android/email/activity/MessageListItem;->sSubjectSnippetDivider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 247
    :cond_62
    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 249
    :cond_67
    iput-object v3, p0, Lcom/android/email/activity/MessageListItem;->mText:Landroid/text/SpannableStringBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->requestLayout()V

    .line 252
    .end local v1           #hasSubject:Z
    .end local v3           #ssb:Landroid/text/SpannableStringBuilder;
    :cond_6c
    return-void

    .line 238
    .restart local v1       #hasSubject:Z
    .restart local v2       #ss:Landroid/text/SpannableString;
    .restart local v3       #ssb:Landroid/text/SpannableStringBuilder;
    :cond_6d
    const/4 v4, 0x1

    goto :goto_43
.end method

.method public setTimestamp(J)V
    .registers 5
    .parameter "timestamp"

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_14

    .line 257
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 258
    iput-wide p1, p0, Lcom/android/email/activity/MessageListItem;->mTimeFormatted:J

    .line 260
    :cond_14
    return-void
.end method
