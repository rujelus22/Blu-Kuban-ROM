.class public Lcom/android/mms/ui/MessageListItem;
.super Landroid/widget/LinearLayout;
.source "MessageListItem.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;
.implements Lcom/android/mms/ui/SlideViewInterface;


# static fields
.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAP_TIMEOUT:I

.field public static gListview:Lcom/android/mms/ui/MessageListView;


# instance fields
.field private SMS_POPUP_RIGHT_MARGON:F

.field protected mAttachView:Landroid/widget/ImageView;

.field private mAudioImageView:Landroid/widget/ImageView;

.field private mAudioTitle:Landroid/widget/TextView;

.field private mBodyTextView:Landroid/widget/TextView;

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mCheckBox:Landroid/widget/CheckBox;

.field protected mCmasExpiryView:Landroid/widget/TextView;

.field private mCursor:Landroid/database/Cursor;

.field protected mDateView:Landroid/widget/TextView;

.field private mDownloadButton:Landroid/widget/Button;

.field private mDownloadingLabel:Landroid/widget/TextView;

.field private mDownloding:Z

.field private mFailedIcon:Landroid/widget/Button;

.field private final mFailedIconClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsAlignLeft:Z

.field private mLinkedContextMenu:Landroid/app/AlertDialog;

.field protected mLockView:Landroid/widget/ImageView;

.field private final mLongClickHandler:Landroid/os/Handler;

.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field protected mMmsIndicatorView:Landroid/widget/TextView;

.field private mMmsView:Landroid/view/View;

.field private mMsgListItem:Landroid/view/View;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSlideShowButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1453
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    .line 1454
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 157
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 196
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 1439
    new-instance v0, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1447
    new-instance v0, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1458
    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    .line 1470
    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 1581
    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    const/high16 v0, 0x4160

    iput v0, p0, Lcom/android/mms/ui/MessageListItem;->SMS_POPUP_RIGHT_MARGON:F

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 196
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 1439
    new-instance v0, Lcom/android/mms/ui/MessageListItem$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$4;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1447
    new-instance v0, Lcom/android/mms/ui/MessageListItem$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$5;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1458
    new-instance v0, Lcom/android/mms/ui/MessageListItem$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$6;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    .line 1470
    new-instance v0, Lcom/android/mms/ui/MessageListItem$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$7;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 1581
    new-instance v0, Lcom/android/mms/ui/MessageListItem$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListItem$8;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageListItem;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MessageListItem;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MessageListItem;)Landroid/text/style/ForegroundColorSpan;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLongClickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900()I
    .registers 1

    .prologue
    .line 102
    sget v0, Lcom/android/mms/ui/MessageListItem;->TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()I
    .registers 1

    .prologue
    .line 102
    sget v0, Lcom/android/mms/ui/MessageListItem;->LONGPRESS_TIMEOUT:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem;->showLinksContextMenu(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageListItem;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    return-object v0
.end method

.method private bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 554
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 556
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v2, :cond_13

    .line 557
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 558
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    :cond_13
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 569
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getCachedFormattedMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 570
    .local v0, formattedMessage:Ljava/lang/CharSequence;
    if-nez v0, :cond_33

    .line 572
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListItem;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 574
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setCachedFormattedMessage(Ljava/lang/CharSequence;)V

    .line 577
    :cond_33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 578
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    :goto_3e
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setBodyTextViewColor(Z)V

    .line 613
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    if-eqz v2, :cond_80

    .line 614
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    :goto_53
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v2, :cond_86

    .line 620
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    :goto_5c
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZ)V

    .line 627
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 628
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    .line 641
    :goto_76
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 644
    return-void

    .line 580
    :cond_7a
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3e

    .line 616
    :cond_80
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_53

    .line 622
    :cond_86
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5c

    .line 630
    :cond_8c
    const-string v2, "MmsThumbnailPresenter"

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v2, v3, p0, v4}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    .line 632
    .local v1, presenter:Lcom/android/mms/ui/Presenter;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/Presenter;->present(Z)V

    .line 634
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 635
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 636
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_76
.end method

.method private bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 433
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 434
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v4, 0x7f0900a6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/lit16 v3, v3, 0x3ff

    div-int/lit16 v3, v3, 0x400

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, msgSizeText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d7

    .line 441
    :cond_48
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    :goto_4d
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v5, v7}, Lcom/android/mms/ui/MessageListItem;->setDateViewTextAndColor(Ljava/lang/String;ZZZ)V

    .line 450
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setBodyTextViewColor(Z)V

    .line 457
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v2, :cond_de

    .line 461
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    :goto_85
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v1

    .line 466
    .local v1, state:I
    packed-switch v1, :pswitch_data_122

    .line 477
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 478
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    if-eqz v2, :cond_f2

    .line 482
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iput-boolean v5, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    .line 495
    :goto_a5
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 496
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 497
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 498
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v3, 0x7f02000e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 499
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 501
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 502
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 548
    :goto_d3
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListItem;->drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V

    .line 550
    return-void

    .line 443
    .end local v1           #state:I
    :cond_d7
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4d

    .line 463
    :cond_de
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_85

    .line 468
    .restart local v1       #state:I
    :pswitch_e4
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateDownloadControls()V

    .line 469
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_d3

    .line 485
    :cond_f2
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a5

    .line 509
    :cond_f8
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const v3, 0x7f0200c8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 510
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 512
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 513
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 514
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/ui/MessageListItem$2;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/ui/MessageListItem$2;-><init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_d3

    .line 466
    nop

    :pswitch_data_122
    .packed-switch 0x81
        :pswitch_e4
    .end packed-switch
.end method

.method private drawLeftStatusIndicator(Lcom/android/mms/ui/MessageItem;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x2

    .line 1120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1122
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    .line 1124
    if-ne v1, v3, :cond_1d

    .line 1126
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1127
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1128
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    .line 1136
    :goto_19
    packed-switch v1, :pswitch_data_56

    .line 1152
    :goto_1c
    :pswitch_1c
    return-void

    .line 1131
    :cond_1d
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1132
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    goto :goto_19

    .line 1138
    :pswitch_2b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1c

    .line 1141
    :pswitch_34
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1c

    .line 1146
    :pswitch_3d
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1147
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1c

    .line 1149
    :cond_4c
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1c

    .line 1136
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_34
        :pswitch_1c
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

.method private drawPlaybackButton(Lcom/android/mms/ui/MessageItem;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 843
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_ea

    .line 937
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 940
    :goto_e
    return-void

    .line 852
    :pswitch_f
    const-string v0, "SPH-D710"

    const-string v1, "SPH-D710"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "SPH-D710"

    const-string v1, "SPH-D705"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "SPH-D710"

    const-string v1, "ISW11SC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 853
    :cond_2d
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-ne v0, v4, :cond_37

    .line 854
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_e

    .line 858
    :cond_37
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 860
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/MessageListItem$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListItem$3;-><init>(Lcom/android/mms/ui/MessageListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 876
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 877
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 878
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_92

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_92

    .line 881
    :cond_6e
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 887
    :goto_7e
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 888
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 891
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 932
    :goto_8b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_e

    .line 884
    :cond_92
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7e

    .line 893
    :cond_a3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_d8

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_d8

    .line 896
    :cond_bb
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 903
    :goto_cb
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 905
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessageListItem;->setClickable(Z)V

    .line 906
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_8b

    .line 899
    :cond_d8
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_cb

    .line 843
    nop

    :pswitch_data_ea
    .packed-switch 0x2
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method private hideMmsViewIfNeeded(Lcom/android/mms/ui/MessageItem;)V
    .registers 4
    .parameter "msgItem"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 648
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 652
    :cond_b
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 654
    return-void

    .line 652
    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private hideSipExplict()V
    .registers 4

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v0, :cond_1c

    .line 1318
    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    .line 1319
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1321
    if-eqz v1, :cond_1c

    .line 1322
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1325
    :cond_1c
    return-void
.end method

.method private inflateDownloadControls()V
    .registers 3

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    if-nez v0, :cond_29

    .line 707
    :cond_8
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 708
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    .line 709
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadingLabel:Landroid/widget/TextView;

    .line 711
    :cond_29
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLinksClickable(Z)V

    .line 712
    return-void
.end method

.method private inflateMmsView()V
    .registers 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    if-nez v0, :cond_44

    .line 690
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMmsView:Landroid/view/View;

    .line 693
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    .line 694
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mSlideShowButton:Landroid/widget/ImageButton;

    .line 697
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    .line 698
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    .line 700
    :cond_44
    return-void
.end method

.method private isDeleteMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1390
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_e

    .line 1391
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 1393
    :cond_e
    return v0
.end method

.method private setBodyTextViewColor(Z)V
    .registers 5
    .parameter

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1398
    if-eqz p1, :cond_10

    .line 1399
    const v0, -0xafafb0

    .line 1401
    :cond_10
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1402
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1403
    return-void
.end method

.method private setDateViewTextAndColor(Ljava/lang/String;ZZZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1407
    const/16 v0, 0x8

    .line 1409
    if-eqz p2, :cond_28

    .line 1410
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1425
    :goto_c
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_15

    .line 1426
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1429
    :cond_15
    if-eqz p2, :cond_3a

    .line 1430
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1436
    :goto_27
    return-void

    .line 1411
    :cond_28
    if-eqz p3, :cond_34

    .line 1415
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1417
    const/4 v0, 0x0

    goto :goto_c

    .line 1422
    :cond_34
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 1431
    :cond_3a
    if-eqz p3, :cond_4d

    .line 1432
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_27

    .line 1434
    :cond_4d
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_27
.end method

.method private showLinksContextMenu(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "url"
    .parameter "text"

    .prologue
    const v6, 0x7f0902b1

    const v5, 0x7f090067

    const v4, 0x7f090022

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 323
    :cond_f
    :goto_f
    return-void

    .line 258
    :cond_10
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_f

    .line 261
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v1, menu:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "mailto:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 263
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :goto_58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const v4, 0x1090011

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v3, Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/mms/ui/MessageListItem$1;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    .line 322
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mLinkedContextMenu:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_f

    .line 267
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_80
    const-string v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 268
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-string v3, "com.android.contacts"

    invoke-static {v2, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 272
    const-string v2, "tel:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Contact;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 273
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_be
    :goto_be
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 275
    :cond_d5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 281
    :cond_e1
    const-string v2, "geo:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 282
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_58

    .line 285
    :cond_f9
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_58
.end method

.method private startViewer()V
    .registers 11

    .prologue
    const/16 v9, 0x82

    const/4 v8, 0x1

    .line 1266
    .line 1267
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v0

    .line 1268
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 1270
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->hideSipExplict()V

    .line 1272
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 1273
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1274
    const-string v3, "msgId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1275
    const-string v0, "thread_id"

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1276
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1298
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v9, :cond_83

    .line 1301
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1307
    :cond_83
    return-void

    .line 1279
    :cond_84
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-eq v2, v9, :cond_38

    .line 1282
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentCount:I

    if-lez v2, :cond_dc

    move v3, v8

    .line 1283
    :goto_9f
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    if-eq v2, v8, :cond_b9

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_b9

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_de

    .line 1286
    :cond_b9
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZJJ)V

    goto/16 :goto_38

    .line 1282
    :cond_dc
    const/4 v3, 0x0

    goto :goto_9f

    .line 1289
    :cond_de
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1291
    const/high16 v3, 0x2400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1292
    const-string v3, "msgId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1293
    const-string v0, "thread_id"

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1294
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_38
.end method


# virtual methods
.method public addAttachmentListView(Ljava/util/ArrayList;J)V
    .registers 4
    .parameter
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1606
    .local p1, attachmentListSaved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    return-void
.end method

.method public bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 11
    .parameter "msgItem"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/high16 v6, 0x4160

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem;->mCursor:Landroid/database/Cursor;

    .line 328
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 330
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListItem;->setLongClickable(Z)V

    .line 331
    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_77

    move v0, v1

    :goto_17
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 338
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    :goto_25
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isCmas()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCmasExpiryView:Landroid/widget/TextView;

    if-eqz v0, :cond_7f

    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    if-eqz v0, :cond_7f

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCmasExpiryView:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCmasExpiryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    :goto_3f
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    :goto_60
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    packed-switch v0, :pswitch_data_102

    .line 378
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_108

    .line 400
    :goto_6e
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindCommonMessage(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 403
    :goto_76
    return-void

    :cond_77
    move v0, v2

    .line 331
    goto :goto_17

    .line 341
    :cond_79
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_25

    .line 349
    :cond_7f
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCmasExpiryView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3f

    .line 360
    :cond_85
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_60

    .line 370
    :pswitch_a7
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_76

    .line 380
    :pswitch_b5
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_TINY:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_6e

    .line 384
    :pswitch_c2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 385
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_SMALL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_6e

    .line 388
    :pswitch_d1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const v1, 0x419547ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_6e

    .line 392
    :pswitch_e1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 393
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_6e

    .line 396
    :pswitch_f1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x4228

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 397
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_6e

    .line 368
    nop

    :pswitch_data_102
    .packed-switch 0x82
        :pswitch_a7
    .end packed-switch

    .line 378
    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_f1
        :pswitch_e1
        :pswitch_d1
        :pswitch_c2
        :pswitch_b5
    .end packed-switch
.end method

.method protected findDateAndIconsView()V
    .registers 2

    .prologue
    .line 214
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDateView:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAttachView:Landroid/widget/ImageView;

    .line 221
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mLockView:Landroid/widget/ImageView;

    .line 223
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCmasExpiryView:Landroid/widget/TextView;

    .line 224
    return-void
.end method

.method protected formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;I)Ljava/lang/CharSequence;
    .registers 27
    .parameter "body"
    .parameter "subject"
    .parameter "highlight"
    .parameter "boxId"

    .prologue
    .line 717
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v13, v0, [I

    .line 718
    .local v13, smileyStart:[I
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 720
    .local v12, smileyEnd:[I
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 725
    .local v4, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v11

    .line 726
    .local v11, parser:Lcom/android/mms/util/SmileyParser;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_17b

    const/4 v7, 0x1

    .line 727
    .local v7, hasSubject:Z
    :goto_1c
    if-eqz v7, :cond_5f

    .line 728
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f09001f

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p2, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 730
    .local v16, subjectString:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 733
    .end local v16           #subjectString:Ljava/lang/String;
    :cond_5f
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_136

    .line 734
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [I

    .line 735
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 736
    if-eqz v7, :cond_7e

    .line 737
    const-string v17, " - "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 741
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v17

    if-eqz v17, :cond_17e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextViewSize()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_17e

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17e

    .line 744
    const/16 v17, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextViewSize()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 745
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 748
    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v13

    .line 749
    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v12

    .line 751
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 752
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f090174

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 753
    .local v15, strMore:Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    .line 754
    .local v14, startMore:I
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v17

    add-int v6, v14, v17

    .line 756
    .local v6, endMore:I
    invoke-virtual {v4, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x205000b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 759
    .local v5, color:I
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v18, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v14, v6, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 761
    new-instance v17, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct/range {v17 .. v18}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    const/16 v18, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v14, v6, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 773
    .end local v5           #color:I
    .end local v6           #endMore:I
    .end local v14           #startMore:I
    .end local v15           #strMore:Ljava/lang/CharSequence;
    :cond_136
    :goto_136
    if-eqz p3, :cond_1c6

    .line 774
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 775
    .local v10, m:Ljava/util/regex/Matcher;
    const/4 v9, 0x0

    .line 776
    .local v9, isSmileyhighlight:Z
    :cond_145
    :goto_145
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_1c6

    .line 777
    const/4 v9, 0x0

    .line 779
    const/4 v8, 0x0

    .local v8, i:I
    :goto_14d
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_15c

    .line 780
    aget v17, v13, v8

    if-nez v17, :cond_192

    aget v17, v12, v8

    if-nez v17, :cond_192

    .line 788
    :cond_15c
    if-nez v9, :cond_145

    .line 789
    new-instance v17, Landroid/text/style/StyleSpan;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_145

    .line 726
    .end local v7           #hasSubject:Z
    .end local v8           #i:I
    .end local v9           #isSmileyhighlight:Z
    .end local v10           #m:Ljava/util/regex/Matcher;
    :cond_17b
    const/4 v7, 0x0

    goto/16 :goto_1c

    .line 764
    .restart local v7       #hasSubject:Z
    :cond_17e
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 766
    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyStart()[I

    move-result-object v13

    .line 767
    invoke-virtual {v11}, Lcom/android/mms/util/SmileyParser;->getSmileyEnd()[I

    move-result-object v12

    goto :goto_136

    .line 784
    .restart local v8       #i:I
    .restart local v9       #isSmileyhighlight:Z
    .restart local v10       #m:Ljava/util/regex/Matcher;
    :cond_192
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    aget v18, v13, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1aa

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    aget v18, v12, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1c2

    :cond_1aa
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v17

    aget v18, v13, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1c3

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v17

    aget v18, v12, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1c3

    .line 786
    :cond_1c2
    const/4 v9, 0x1

    .line 779
    :cond_1c3
    add-int/lit8 v8, v8, 0x1

    goto :goto_14d

    .line 792
    .end local v8           #i:I
    .end local v9           #isSmileyhighlight:Z
    .end local v10           #m:Ljava/util/regex/Matcher;
    :cond_1c6
    return-object v4
.end method

.method public getBubbleLayout()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()I
    .registers 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getMessageItem()Lcom/android/mms/ui/MessageItem;
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method public initAttachmentListView()V
    .registers 1

    .prologue
    .line 1610
    return-void
.end method

.method public isAlignLeft()Z
    .registers 2

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mIsAlignLeft:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 421
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 422
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    if-eqz v0, :cond_12

    .line 423
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    .line 429
    :cond_12
    :goto_12
    return-void

    .line 426
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListItem;->mDownloding:Z

    goto :goto_12
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 228
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 230
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    .line 232
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItemLayout:Landroid/widget/LinearLayout;

    .line 233
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBubbleLayout:Landroid/widget/LinearLayout;

    .line 234
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mFailedIcon:Landroid/widget/Button;

    .line 237
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mBodyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    .line 251
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->findDateAndIconsView()V

    .line 252
    return-void
.end method

.method public onMessageListItemClick()V
    .registers 4

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 962
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    .line 963
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mMsgListItem:Landroid/view/View;

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    .line 1103
    :cond_25
    :goto_25
    return-void

    .line 988
    :cond_26
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_38

    .line 993
    const-string v0, "Mms/MessageListItem"

    const-string v1, "******SMS Click********"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 990
    :cond_38
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 991
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->startViewer()V

    goto :goto_25
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 1385
    return-void
.end method

.method public pauseAudio()V
    .registers 1

    .prologue
    .line 1225
    return-void
.end method

.method public pauseMovie()V
    .registers 1

    .prologue
    .line 1251
    return-void
.end method

.method public pauseVideo()V
    .registers 1

    .prologue
    .line 1230
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 1209
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 1210
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1212
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    .line 1213
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1216
    :cond_1d
    return-void
.end method

.method public seekAudio(I)V
    .registers 2
    .parameter "seekTo"

    .prologue
    .line 1235
    return-void
.end method

.method public seekVideo(I)V
    .registers 2
    .parameter "seekTo"

    .prologue
    .line 1240
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v3, 0x0

    .line 666
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 670
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    return-void
.end method

.method public setCheckBox(IZ)V
    .registers 4
    .parameter "visible"
    .parameter "checked"

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1108
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .registers 8
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 676
    if-nez p2, :cond_10

    .line 677
    :try_start_5
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020114

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 680
    :cond_10
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 681
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_1b} :catch_1c

    .line 685
    :goto_1b
    return-void

    .line 682
    :catch_1c
    move-exception v0

    .line 683
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .registers 2
    .parameter "fit"

    .prologue
    .line 1163
    return-void
.end method

.method public setImageVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 1167
    return-void
.end method

.method public setListView(Lcom/android/mms/ui/MessageListView;)V
    .registers 2
    .parameter "pListview"

    .prologue
    .line 210
    sput-object p1, Lcom/android/mms/ui/MessageListItem;->gListview:Lcom/android/mms/ui/MessageListView;

    .line 211
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 1246
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;

    .line 417
    return-void
.end method

.method public setPageNumber(II)V
    .registers 3
    .parameter "currentSlide"
    .parameter "totalSlide"

    .prologue
    .line 1313
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 5
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    .line 1171
    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 1175
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListItem;->inflateMmsView()V

    .line 1180
    :try_start_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1181
    if-nez v0, :cond_16

    .line 1182
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020115

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1185
    :cond_16
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1186
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_21
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_21} :catch_22

    .line 1194
    :goto_21
    return-void

    .line 1191
    :catch_22
    move-exception v0

    .line 1192
    const-string v1, "Mms/MessageListItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public setVideoVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 1198
    return-void
.end method

.method public setVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 1220
    return-void
.end method

.method public startAudio()V
    .registers 1

    .prologue
    .line 658
    return-void
.end method

.method public startMovie()V
    .registers 1

    .prologue
    .line 1256
    return-void
.end method

.method public startVideo()V
    .registers 1

    .prologue
    .line 662
    return-void
.end method

.method public stopAudio()V
    .registers 1

    .prologue
    .line 1202
    return-void
.end method

.method public stopMovie(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 1261
    return-void
.end method

.method public stopVideo(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 1206
    return-void
.end method
