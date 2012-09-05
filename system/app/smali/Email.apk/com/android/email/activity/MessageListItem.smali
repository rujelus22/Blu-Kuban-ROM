.class public Lcom/android/email/activity/MessageListItem;
.super Ljava/lang/Object;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListItem$SearchItem;
    }
.end annotation


# static fields
.field private static iconStackRightBound:I

.field private static mSelectedIconNinePatch:Landroid/graphics/NinePatch;

.field private static sAttachmentIcon:Landroid/graphics/Bitmap;

.field private static sAttachmentPaddingTopHuge:I

.field private static sAttachmentPaddingTopLarge:I

.field private static sAttachmentPaddingTopNormal:I

.field private static sAttachmentPaddingTopSmall:I

.field private static sAttachmentPaddingTopTiny:I

.field private static sCheckboxHitWidth:I

.field private static sCheckboxPaddingTopHuge:I

.field private static sCheckboxPaddingTopLarge:I

.field private static sCheckboxPaddingTopNormal:I

.field private static sCheckboxPaddingTopSmall:I

.field private static sCheckboxPaddingTopTiny:I

.field private static sColorTipWidth:I

.field private static sDate:Ljava/util/Date;

.field private static sDatePaddingRight:I

.field private static sDatePaddingTopHuge:I

.field private static sDatePaddingTopLarge:I

.field private static sDatePaddingTopNormal:I

.field private static sDatePaddingTopSmall:I

.field private static sDatePaddingTopTiny:I

.field private static final sDatePaint:Landroid/text/TextPaint;

.field private static sDateReadTextColorDarkDarkTheme:I

.field private static sDateReadTextColorDarkWhiteTheme:I

.field private static sDateReadTextColorWhiteTheme:I

.field private static sDateUnReadTextColorDarkDarkTheme:I

.field private static sDateUnReadTextColorDarkWhiteTheme:I

.field private static sDateUnReadTextColorWhiteTheme:I

.field private static sDraftIconClient:Landroid/graphics/Bitmap;

.field private static sDraftIconServer:Landroid/graphics/Bitmap;

.field private static sEncryptIcon:Landroid/graphics/Bitmap;

.field private static sFailedTextColorDarkWhiteTheme:I

.field private static final sFailedTextPaint:Landroid/text/TextPaint;

.field private static sFavoriteHitWidth:I

.field private static sFavoriteIconOff:Landroid/graphics/Bitmap;

.field private static sFavoriteIconOn:Landroid/graphics/Bitmap;

.field private static sFavoriteIconWidth:I

.field private static sFavoritePaddingRightDark:I

.field private static sFavoritePaddingTopHuge:I

.field private static sFavoritePaddingTopLarge:I

.field private static sFavoritePaddingTopNormal:I

.field private static sFavoritePaddingTopSmall:I

.field private static sFavoritePaddingTopTiny:I

.field private static sFocusedBackgroundColorDarkTheme:I

.field private static sFocusedBackgroundColorWhiteTheme:I

.field private static sFollowUpFlagIconClear:Landroid/graphics/Bitmap;

.field private static sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

.field private static sFollowUpFlagIconPressed:Landroid/graphics/Bitmap;

.field private static sFollowUpFlagIconSet:Landroid/graphics/Bitmap;

.field private static sFullViewSplitViewImage:Landroid/graphics/Bitmap;

.field private static sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

.field private static sInit:Z

.field private static sIrmIcon:Landroid/graphics/Bitmap;

.field private static sLastVerbIconForward:Landroid/graphics/Bitmap;

.field private static sLastVerbIconForwardPressed:Landroid/graphics/Bitmap;

.field private static sLastVerbIconReply:Landroid/graphics/Bitmap;

.field private static sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

.field private static sLineRect:Landroid/graphics/Rect;

.field private static sListLineDarkDark:Landroid/graphics/Bitmap;

.field private static sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

.field private static sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

.field private static sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

.field private static sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

.field private static sListLineWhiteTheme:Landroid/graphics/Bitmap;

.field private static sMainTextPaddingLeft:I

.field private static sMainTextPaddingRight:I

.field private static sMainTextPaddingTopHuge:I

.field private static sMainTextPaddingTopLarge:I

.field private static sMainTextPaddingTopNormal:I

.field private static sMainTextPaddingTopSmall:I

.field private static sMainTextPaddingTopTiny:I

.field private static final sMainTextPaint:Landroid/text/TextPaint;

.field private static sMainTextReadTextColorDarkDarkTheme:I

.field private static sMainTextReadTextColorDarkWhiteTheme:I

.field private static sMainTextReadTextColorWhiteTheme:I

.field private static sMainTextUnReadTextColorDarkDarkTheme:I

.field private static sMainTextUnReadTextColorDarkWhiteTheme:I

.field private static sMainTextUnReadTextColorWhiteTheme:I

.field private static sMatchedtextColorDarkTheme:I

.field private static sMatchedtextColorWhiteTheme:I

.field private static sMeetingRequestIcon:Landroid/graphics/Bitmap;

.field private static sMorePadding:I

.field private static sMorePaddingVertical:I

.field private static sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

.field private static sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

.field private static sP2:Landroid/graphics/Paint;

.field private static sPaddingTextEndHuge:I

.field private static sPaddingTextEndLarge:I

.field private static sPaddingTextEndNormal:I

.field private static sPaddingTextEndSmall:I

.field private static sPaddingTextEndTiny:I

.field private static sPaddingTextMiddleHuge:I

.field private static sPaddingTextMiddleLarge:I

.field private static sPaddingTextMiddleNormal:I

.field private static sPaddingTextMiddleSmall:I

.field private static sPaddingTextMiddleTiny:I

.field private static sPaddingTextTopHuge:I

.field private static sPaddingTextTopLarge:I

.field private static sPaddingTextTopNormal:I

.field private static sPaddingTextTopSmall:I

.field private static sPaddingTextTopTiny:I

.field private static sPressedTextColorDarkTheme:I

.field private static sPressedTextColorWhiteTheme:I

.field private static sPriorityIconHigh:Landroid/graphics/Bitmap;

.field private static sPriorityIconHighPressed:Landroid/graphics/Bitmap;

.field private static sPriorityIconLow:Landroid/graphics/Bitmap;

.field private static sPriorityIconLowPressed:Landroid/graphics/Bitmap;

.field private static sSMSIcon:Landroid/graphics/Bitmap;

.field private static sSelectedIconNinePatch:Landroid/graphics/NinePatch;

.field private static sSelectedIconNinePatchBeige:Landroid/graphics/NinePatch;

.field private static sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

.field private static sSelectedIconOffDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffDisabledDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOffPressedDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnDisabledDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedIconOnPressedDarkTheme:Landroid/graphics/Bitmap;

.field private static sSelectedMessageIcon:Landroid/graphics/Bitmap;

.field private static sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

.field private static sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

.field private static sSelectedRect:Landroid/graphics/Rect;

.field private static sSignIcon:Landroid/graphics/Bitmap;

.field private static final sSnippetPaint:Landroid/text/TextPaint;

.field private static sSnippetReadTextColorDarkDarkTheme:I

.field private static sSnippetReadTextColorDarkWhiteTheme:I

.field private static sSnippetReadTextColorWhiteTheme:I

.field private static sSnippetUnReadTextColorDarkDarkTheme:I

.field private static sSnippetUnReadTextColorDarkWhiteTheme:I

.field private static sSnippetUnReadTextColorWhiteTheme:I

.field private static sSpanRead:Landroid/text/style/StyleSpan;

.field private static sSpanUnRead:Landroid/text/style/StyleSpan;

.field private static sSsb:Landroid/text/SpannableStringBuilder;

.field private static final sSubTextPaint:Landroid/text/TextPaint;

.field private static sSubTextReadTextColorDarkDarkTheme:I

.field private static sSubTextReadTextColorDarkWhiteTheme:I

.field private static sSubTextReadTextColorWhiteTheme:I

.field private static sSubTextUnReadTextColorDarkDarkTheme:I

.field private static sSubTextUnReadTextColorDarkWhiteTheme:I

.field private static sSubTextUnReadTextColorWhiteTheme:I

.field private static sTextSizeHuge:I

.field private static sTextSizeLarge:I

.field private static sTextSizeMainTextHuge:I

.field private static sTextSizeMainTextLarge:I

.field private static sTextSizeMainTextNormal:I

.field private static sTextSizeMainTextSmall:I

.field private static sTextSizeMainTextTiny:I

.field private static sTextSizeNormal:I

.field private static sTextSizeSmall:I

.field private static sTextSizeTiny:I

.field private static sThreadListPadding:I

.field private static sTopLineRect:Landroid/graphics/Rect;

.field private static sVerbPaddingTopHuge:I

.field private static sVerbPaddingTopLarge:I

.field private static sVerbPaddingTopNormal:I

.field private static sVerbPaddingTopSmall:I

.field private static sVerbPaddingTopTiny:I

.field private static sViewHeightHugePreviewOne:I

.field private static sViewHeightHugePreviewThree:I

.field private static sViewHeightHugePreviewTwo:I

.field private static sViewHeightHugePreviewZero:I

.field private static sViewHeightLargePreviewOne:I

.field private static sViewHeightLargePreviewThree:I

.field private static sViewHeightLargePreviewTwo:I

.field private static sViewHeightLargePreviewZero:I

.field private static sViewHeightNormalPreviewOne:I

.field private static sViewHeightNormalPreviewThree:I

.field private static sViewHeightNormalPreviewTwo:I

.field private static sViewHeightNormalPreviewZero:I

.field private static sViewHeightSmallPreviewOne:I

.field private static sViewHeightSmallPreviewThree:I

.field private static sViewHeightSmallPreviewTwo:I

.field private static sViewHeightSmallPreviewZero:I

.field private static sViewHeightTinyPreviewOne:I

.field private static sViewHeightTinyPreviewThree:I

.field private static sViewHeightTinyPreviewTwo:I

.field private static sViewHeightTinyPreviewZero:I

.field private static sVoiceMailIcon:Landroid/graphics/Bitmap;


# instance fields
.field public isEncrypted:Z

.field private isLastThreadItem:Z

.field public isSendingFailedMsg:Z

.field public isSigned:Z

.field public isSms:Z

.field public isVoiceMail:Z

.field mAccountId:J

.field public mAccountSchema:Ljava/lang/String;

.field private mAdapter:Lcom/android/email/activity/MessagesAdapter;

.field mAscentDate:I

.field mAscentMainText:I

.field mAscentSnippet:I

.field mAscentSubText:I

.field private mAttachmentIcon:Landroid/graphics/Bitmap;

.field private mAttachmentPaddingTop:I

.field mAvailableTwoPane:Z

.field public mBgColor:I

.field private mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

.field public mCheckboxDisabled:Z

.field mCheckboxLeft:I

.field private mCheckboxPaddingTop:I

.field public mCheckboxPressed:Z

.field mCheckboxTop:I

.field public mChildCount:I

.field public mChildIndex:I

.field public mColorChipBitmap:Landroid/graphics/NinePatch;

.field private mContext:Landroid/content/Context;

.field public mConvId:Ljava/lang/String;

.field public mConvThreadId:I

.field mCurrentPane:I

.field mDateLeft:I

.field mDatePaddingRight:I

.field private mDatePaddingTop:I

.field private mDateReadTextColorDark:I

.field private mDateReadTextColorWhite:I

.field mDateStr:Ljava/lang/String;

.field mDateTop:I

.field private mDateUnReadTextColorDark:I

.field private mDateUnReadTextColorWhite:I

.field mDateWidth:I

.field mDefaultPaintStart:I

.field private mDownEvent:Z

.field mDraftIcon:Landroid/graphics/Bitmap;

.field mDrawX:I

.field mEnd:I

.field private mFailedTextColorDarkWhite:I

.field mFailedTextLeft:I

.field mFailedTextWidth:I

.field private mFavoriteIcon:Landroid/graphics/Bitmap;

.field mFavoritePaddingRight:I

.field private mFavoritePaddingTop:I

.field public mFlagComFFConv:I

.field public mFlagReadConv:I

.field public mFlagSetFFConv:I

.field private mFocusedBackgroundColor:I

.field public mFollowUpFlagStatus:I

.field mFontMetricsDate:Landroid/graphics/Paint$FontMetricsInt;

.field mFontMetricsFailedText:Landroid/graphics/Paint$FontMetricsInt;

.field mFontMetricsMainText:Landroid/graphics/Paint$FontMetricsInt;

.field mFontMetricsSubText:Landroid/graphics/Paint$FontMetricsInt;

.field mFormat:I

.field private mFormattedDate:Ljava/lang/CharSequence;

.field private mFormattedFailedText:Ljava/lang/CharSequence;

.field private mFormattedMainText:Ljava/lang/CharSequence;

.field private mFormattedSubText:Ljava/lang/CharSequence;

.field public mHasAttachment:Z

.field public mHasDivider:Z

.field public mHasFavoriteIcon:Z

.field public mHasInvite:Z

.field public mHasIrm:Z

.field public mHasLastVerbIcon:Z

.field public mHasPriorityIcon:Z

.field public mHasReplyIcon:Z

.field public mHasTitleIcon:Z

.field private mHighlightMainText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightSnippet:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightSubText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field mIsAllAccount:Z

.field public mIsBgColorChanged:Z

.field public mIsFavorite:Z

.field public mLastVerb:I

.field private mLastVerbPaddingTop:I

.field private mLastverbIcon:Landroid/graphics/Bitmap;

.field mLine:Ljava/lang/CharSequence;

.field mLineHeightMainText:I

.field mLineHeightSnippet:I

.field mLineHeightSubText:I

.field mLineStartSnippet:I

.field mLineStartSubText:I

.field private mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

.field private mListLineNinepatch:Landroid/graphics/NinePatch;

.field mMailboxId:J

.field public mMailboxType:I

.field public mMainText:Ljava/lang/String;

.field mMainTextLeft:I

.field private mMainTextPaddingTop:I

.field private mMainTextReadTextColorDark:I

.field private mMainTextReadTextColorWhite:I

.field mMainTextTop:I

.field private mMainTextUnReadTextColorDark:I

.field private mMainTextUnReadTextColorWhite:I

.field mMainTextWidth:I

.field private mMatchedtextColor:I

.field mMessageId:J

.field public mNeedMorePadding:Z

.field mOriginColor:I

.field private mPaddingTextEnd:I

.field private mPaddingTextMiddle:I

.field private mPaddingTextTop:I

.field mPaddingthread:I

.field public mParentIndex:I

.field public mPosition:I

.field private mPressedTextColor:I

.field mPrevFormat:I

.field mPrevMainText:Ljava/lang/String;

.field mPrevPreviewLineSize:I

.field mPrevRead:I

.field mPrevSnippet:Ljava/lang/String;

.field mPrevSubText:Ljava/lang/String;

.field mPrevTimestamp:J

.field mPrevViewHeight:I

.field mPrevViewWidth:I

.field public mPreviewLineSize:I

.field public mPriority:I

.field private mPriorityIcon:Landroid/graphics/Bitmap;

.field public mRead:Z

.field private mReplyIcon:Landroid/graphics/Bitmap;

.field mReplyTop:I

.field private mSearchString:Ljava/lang/String;

.field private mSelectedIconOff:Landroid/graphics/Bitmap;

.field private mSelectedIconOn:Landroid/graphics/Bitmap;

.field public mSendingFailedText:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mSnippet:Ljava/lang/String;

.field public mSnippetLineCount:I

.field private mSnippetLines:[Ljava/lang/CharSequence;

.field private mSnippetReadTextColorDark:I

.field private mSnippetReadTextColorWhite:I

.field private mSnippetUnReadTextColorDark:I

.field private mSnippetUnReadTextColorWhite:I

.field mSnippetWidth:I

.field mSnippetX:I

.field mSnippetY:I

.field mSsb:Landroid/text/SpannableStringBuilder;

.field mStart:I

.field public mSubText:Ljava/lang/String;

.field mSubTextLeft:I

.field private mSubTextReadTextColorDark:I

.field private mSubTextReadTextColorWhite:I

.field mSubTextTop:I

.field private mSubTextUnReadTextColorDark:I

.field private mSubTextUnReadTextColorWhite:I

.field mSubTextWidth:I

.field mTempText:Ljava/lang/CharSequence;

.field mTempText2:Ljava/lang/CharSequence;

.field private mTextSize:I

.field private mTextSizeMainText:I

.field public mTimestamp:J

.field private mViewHeight:I

.field private mViewWidth:I

.field public mfontSize:I

.field readStateChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 114
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    .line 116
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    .line 118
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    .line 120
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    .line 124
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    .line 849
    sput-object v1, Lcom/android/email/activity/MessageListItem;->sDate:Ljava/util/Date;

    .line 851
    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSsb:Landroid/text/SpannableStringBuilder;

    .line 853
    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSpanRead:Landroid/text/style/StyleSpan;

    .line 855
    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSpanUnRead:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MessageListItemContainer;)V
    .registers 9
    .parameter "context"
    .parameter "listItemContainer"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 640
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 642
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 644
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 646
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    .line 648
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 650
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    .line 652
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    .line 654
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    .line 658
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    .line 660
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    .line 662
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    .line 664
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    .line 666
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    .line 668
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    .line 729
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    .line 731
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->mIsBgColorChanged:Z

    .line 735
    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 737
    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 845
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mPosition:I

    .line 1429
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 1480
    iput-object v4, p0, Lcom/android/email/activity/MessageListItem;->mDateStr:Ljava/lang/String;

    .line 1486
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mPrevFormat:I

    .line 1488
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mFormat:I

    .line 1490
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingRight:I

    .line 1492
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewWidth:I

    .line 1494
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewHeight:I

    .line 1496
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mDateWidth:I

    .line 1498
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevTimestamp:J

    .line 1501
    iput-object v4, p0, Lcom/android/email/activity/MessageListItem;->mPrevSubText:Ljava/lang/String;

    .line 1503
    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mSubTextWidth:I

    .line 1505
    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingRight:I

    .line 1507
    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    .line 1510
    iput-object v4, p0, Lcom/android/email/activity/MessageListItem;->mPrevSnippet:Ljava/lang/String;

    .line 1512
    iput-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSsb:Landroid/text/SpannableStringBuilder;

    .line 1514
    iput-object v4, p0, Lcom/android/email/activity/MessageListItem;->mTempText:Ljava/lang/CharSequence;

    .line 1516
    iput-object v4, p0, Lcom/android/email/activity/MessageListItem;->mTempText2:Ljava/lang/CharSequence;

    .line 1518
    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippetWidth:I

    .line 1520
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mPrevRead:I

    .line 1522
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mPrevPreviewLineSize:I

    .line 1524
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mStart:I

    .line 1526
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mEnd:I

    .line 1528
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListItem;->readStateChanged:Z

    .line 1531
    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mMainTextWidth:I

    .line 1533
    iput-object v4, p0, Lcom/android/email/activity/MessageListItem;->mPrevMainText:Ljava/lang/String;

    .line 2464
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mIsAllAccount:Z

    .line 2466
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxLeft:I

    .line 2468
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxTop:I

    .line 2472
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mAscentMainText:I

    .line 2474
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mMainTextTop:I

    .line 2476
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mMainTextLeft:I

    .line 2478
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mLineHeightMainText:I

    .line 2484
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mAscentSubText:I

    .line 2486
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mLineStartSubText:I

    .line 2488
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mSubTextTop:I

    .line 2490
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mLineHeightSubText:I

    .line 2492
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mSubTextLeft:I

    .line 2496
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mAscentSnippet:I

    .line 2498
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mLineHeightSnippet:I

    .line 2500
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mLineStartSnippet:I

    .line 2502
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mSnippetX:I

    .line 2504
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mSnippetY:I

    .line 2506
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mOriginColor:I

    .line 2508
    iput-object v4, p0, Lcom/android/email/activity/MessageListItem;->mLine:Ljava/lang/CharSequence;

    .line 2510
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mDrawX:I

    .line 2512
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mDefaultPaintStart:I

    .line 2514
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mReplyTop:I

    .line 2518
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mAscentDate:I

    .line 2520
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mDateLeft:I

    .line 2522
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mDateTop:I

    .line 2524
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mCurrentPane:I

    .line 2532
    iput v2, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextLeft:I

    .line 99
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListItem;->init(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method private calculateDrawingData()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1554
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDate:Ljava/util/Date;

    if-nez v0, :cond_f

    .line 1555
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDate:Ljava/util/Date;

    .line 1557
    :cond_f
    iget-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_139

    move v0, v2

    :goto_18
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFormat:I

    .line 1558
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevFormat:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mFormat:I

    if-ne v0, v1, :cond_34

    iget-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevTimestamp:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_34

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewHeight:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    if-eq v0, v1, :cond_89

    .line 1560
    :cond_34
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDate:Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 1561
    iget-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 1562
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mDateStr:Ljava/lang/String;

    .line 1566
    :goto_4f
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mDateStr:Ljava/lang/String;

    if-nez v0, :cond_57

    .line 1567
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mDateStr:Ljava/lang/String;

    .line 1568
    :cond_57
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingRight:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingRight:I

    .line 1569
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mDateStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v3, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingRight:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateWidth:I

    .line 1571
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mDateStr:Ljava/lang/String;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mDateWidth:I

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    .line 1573
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mFormat:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevFormat:I

    .line 1574
    iget-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevTimestamp:J

    .line 1577
    :cond_89
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_99

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_99

    .line 1579
    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    .line 1583
    :cond_99
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSendingFailedText:Ljava/lang/String;

    if-eqz v0, :cond_ca

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isSendingFailedMsg:Z

    if-eqz v0, :cond_ca

    .line 1584
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSendingFailedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v3, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingRight:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mDateWidth:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextWidth:I

    .line 1586
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSendingFailedText:Ljava/lang/String;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextWidth:I

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedFailedText:Ljava/lang/CharSequence;

    .line 1591
    :cond_ca
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRightDark:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingRight:I

    .line 1592
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    if-nez v0, :cond_d6

    .line 1593
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    .line 1594
    :cond_d6
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mPrevSubText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    if-ne v0, v1, :cond_ec

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewHeight:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    if-eq v0, v1, :cond_124

    .line 1596
    :cond_ec
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isSigned:Z

    if-nez v0, :cond_f8

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isEncrypted:Z

    if-nez v0, :cond_f8

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    if-eqz v0, :cond_14a

    .line 1597
    :cond_f8
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingRight:I

    sub-int/2addr v0, v1

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextWidth:I

    .line 1606
    :goto_111
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mSubTextWidth:I

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    .line 1608
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSubText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevSubText:Ljava/lang/String;

    .line 1612
    :cond_124
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingRight:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetWidth:I

    .line 1614
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetWidth:I

    if-gtz v0, :cond_161

    .line 1729
    :goto_138
    return-void

    :cond_139
    move v0, v9

    .line 1557
    goto/16 :goto_18

    .line 1564
    :cond_13c
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mDateStr:Ljava/lang/String;

    goto/16 :goto_4f

    .line 1602
    :cond_14a
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateWidth:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextWidth:I

    goto :goto_111

    .line 1617
    :cond_161
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    if-nez v0, :cond_169

    .line 1618
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    .line 1620
    :cond_169
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mPrevSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    if-ne v0, v1, :cond_189

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewHeight:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    if-ne v0, v1, :cond_189

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevPreviewLineSize:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_189

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->readStateChanged:Z

    if-eqz v0, :cond_275

    .line 1622
    :cond_189
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSsb:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_21d

    .line 1623
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSsb:Landroid/text/SpannableStringBuilder;

    .line 1627
    :goto_194
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_19e

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevPreviewLineSize:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-eq v0, v1, :cond_1a2

    .line 1629
    :cond_19e
    new-array v0, v10, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    .line 1631
    :cond_1a2
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1db

    .line 1632
    new-instance v1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1633
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSpanRead:Landroid/text/style/StyleSpan;

    if-nez v0, :cond_1bc

    .line 1634
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSpanRead:Landroid/text/style/StyleSpan;

    .line 1636
    :cond_1bc
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSpanUnRead:Landroid/text/style/StyleSpan;

    if-nez v0, :cond_1c7

    .line 1637
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSpanUnRead:Landroid/text/style/StyleSpan;

    .line 1639
    :cond_1c7
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_224

    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSpanRead:Landroid/text/style/StyleSpan;

    :goto_1cd
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1641
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1643
    :cond_1db
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSsb:Landroid/text/SpannableStringBuilder;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mTempText:Ljava/lang/CharSequence;

    .line 1644
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSsb:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/android/email/activity/MessageListItem;->mSnippetWidth:I

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1647
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    move v1, v2

    .line 1648
    :goto_1fc
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ge v1, v3, :cond_26b

    .line 1649
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mStart:I

    .line 1650
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_24d

    .line 1651
    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mTempText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/MessageListItem;->mEnd:I

    .line 1652
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mStart:I

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mEnd:I

    if-le v3, v4, :cond_227

    .line 1648
    :goto_21a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fc

    .line 1625
    :cond_21d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    goto/16 :goto_194

    .line 1639
    :cond_224
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSpanUnRead:Landroid/text/style/StyleSpan;

    goto :goto_1cd

    .line 1654
    :cond_227
    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mTempText:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mStart:I

    iget v5, p0, Lcom/android/email/activity/MessageListItem;->mEnd:I

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageListItem;->mTempText2:Ljava/lang/CharSequence;

    .line 1655
    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mTempText2:Ljava/lang/CharSequence;

    if-nez v3, :cond_23b

    .line 1656
    const-string v3, ""

    iput-object v3, p0, Lcom/android/email/activity/MessageListItem;->mTempText2:Ljava/lang/CharSequence;

    .line 1659
    :cond_23b
    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mTempText2:Ljava/lang/CharSequence;

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mSnippetWidth:I

    int-to-float v6, v6

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_21a

    .line 1663
    :cond_24d
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mStart:I

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    if-gt v3, v4, :cond_266

    .line 1664
    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mTempText:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/email/activity/MessageListItem;->mStart:I

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    goto :goto_21a

    .line 1667
    :cond_266
    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    aput-object v11, v3, v1

    goto :goto_21a

    .line 1671
    :cond_26b
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippet:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevSnippet:Ljava/lang/String;

    .line 1672
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevPreviewLineSize:I

    .line 1673
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->readStateChanged:Z

    .line 1677
    :cond_275
    sget v0, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextWidth:I

    .line 1679
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    if-nez v0, :cond_287

    .line 1680
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    .line 1681
    :cond_287
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mPrevMainText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29d

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    if-ne v0, v1, :cond_29d

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewHeight:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    if-eq v0, v1, :cond_2b0

    .line 1682
    :cond_29d
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mMainTextWidth:I

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    .line 1684
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mMainText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevMainText:Ljava/lang/String;

    .line 1688
    :cond_2b0
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    if-nez v0, :cond_2b8

    .line 1689
    new-array v0, v10, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    .line 1691
    :cond_2b8
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getEasSearchString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c4

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_371

    :cond_2c4
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_371

    .line 1693
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    .line 1694
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v0

    if-eqz v0, :cond_2dc

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getEasSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_313

    .line 1696
    :cond_2dc
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    .line 1698
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v4, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    .line 1700
    :goto_2f8
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ge v2, v0, :cond_32e

    .line 1701
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1700
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f8

    .line 1705
    :cond_313
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_347

    .line 1706
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v0

    if-nez v0, :cond_338

    .line 1707
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    .line 1727
    :cond_32e
    :goto_32e
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewWidth:I

    .line 1728
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPrevViewHeight:I

    goto/16 :goto_138

    .line 1710
    :cond_338
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    goto :goto_32e

    .line 1714
    :cond_347
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSelectedSearchType()I

    move-result v0

    if-ne v0, v9, :cond_32e

    .line 1715
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTopLineMode()I

    move-result v0

    if-nez v0, :cond_362

    .line 1716
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    goto :goto_32e

    .line 1720
    :cond_362
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/email/activity/MessageListItem;->setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    goto :goto_32e

    .line 1725
    :cond_371
    iput-object v11, p0, Lcom/android/email/activity/MessageListItem;->mSearchString:Ljava/lang/String;

    goto :goto_32e
.end method

.method private getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 1732
    .line 1733
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1734
    const-string v1, "\\|"

    const-string v2, "\\\\|"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1735
    const-string v1, "\\*"

    const-string v2, "\\\\*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1736
    const-string v1, "\\?"

    const-string v2, "\\\\?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1737
    const-string v1, "\\+"

    const-string v2, "\\\\+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1738
    const-string v1, "\\["

    const-string v2, "\\\\["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1739
    const-string v1, "\\]"

    const-string v2, "\\\\]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1740
    const-string v1, "\\{"

    const-string v2, "\\\\{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1741
    const-string v1, "\\}"

    const-string v2, "\\\\}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1742
    const-string v1, "\\("

    const-string v2, "\\\\("

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1743
    const-string v1, "\\)"

    const-string v2, "\\\\)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1744
    const-string v1, "\\^"

    const-string v2, "\\\\^"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1745
    const-string v1, "\\."

    const-string v2, "\\\\."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1746
    const-string v1, "\\$"

    const-string v2, "\\\\\\$"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1747
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 8
    .parameter

    .prologue
    const v3, 0x7f0202f8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 876
    sget-boolean v0, Lcom/android/email/activity/MessageListItem;->sInit:Z

    if-nez v0, :cond_619

    .line 877
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 878
    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    .line 880
    const v1, 0x7f0c006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoriteHitWidth:I

    .line 884
    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRightDark:I

    .line 886
    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopTiny:I

    .line 888
    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopSmall:I

    .line 890
    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopNormal:I

    .line 892
    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopLarge:I

    .line 894
    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopHuge:I

    .line 896
    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopTiny:I

    .line 898
    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopSmall:I

    .line 900
    const v1, 0x7f0c0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopNormal:I

    .line 902
    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopLarge:I

    .line 904
    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopHuge:I

    .line 906
    const v1, 0x7f0c0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    .line 908
    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingRight:I

    .line 910
    const v1, 0x7f0c0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRight:I

    .line 914
    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopTiny:I

    .line 916
    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopSmall:I

    .line 918
    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopNormal:I

    .line 920
    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopLarge:I

    .line 922
    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopHuge:I

    .line 924
    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleTiny:I

    .line 926
    const v1, 0x7f0c008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleSmall:I

    .line 928
    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleNormal:I

    .line 930
    const v1, 0x7f0c008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleLarge:I

    .line 932
    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleHuge:I

    .line 934
    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndTiny:I

    .line 936
    const v1, 0x7f0c0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndSmall:I

    .line 938
    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndNormal:I

    .line 940
    const v1, 0x7f0c0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndLarge:I

    .line 942
    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndHuge:I

    .line 954
    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeTiny:I

    .line 956
    const v1, 0x7f0c0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeSmall:I

    .line 958
    const v1, 0x7f0c0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeNormal:I

    .line 960
    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeLarge:I

    .line 962
    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeHuge:I

    .line 972
    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorWhiteTheme:I

    .line 974
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPressedTextColorWhiteTheme:I

    .line 978
    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorWhiteTheme:I

    .line 996
    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkWhiteTheme:I

    .line 998
    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkWhiteTheme:I

    .line 1000
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkWhiteTheme:I

    .line 1002
    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkWhiteTheme:I

    .line 1004
    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkWhiteTheme:I

    .line 1006
    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkWhiteTheme:I

    .line 1008
    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkWhiteTheme:I

    .line 1010
    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkWhiteTheme:I

    .line 1012
    const v1, 0x7f0b0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFailedTextColorDarkWhiteTheme:I

    .line 1019
    const v1, 0x7f0c0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextTiny:I

    .line 1021
    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextSmall:I

    .line 1023
    const v1, 0x7f0c0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextNormal:I

    .line 1025
    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextLarge:I

    .line 1027
    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextHuge:I

    .line 1029
    const v1, 0x7f0c009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sColorTipWidth:I

    .line 1035
    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopTiny:I

    .line 1037
    const v1, 0x7f0c00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopSmall:I

    .line 1039
    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopNormal:I

    .line 1041
    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopLarge:I

    .line 1043
    const v1, 0x7f0c00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopHuge:I

    .line 1045
    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopTiny:I

    .line 1047
    const v1, 0x7f0c00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopSmall:I

    .line 1049
    const v1, 0x7f0c00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopNormal:I

    .line 1051
    const v1, 0x7f0c00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopLarge:I

    .line 1053
    const v1, 0x7f0c00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopHuge:I

    .line 1055
    const v1, 0x7f0c00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopTiny:I

    .line 1057
    const v1, 0x7f0c00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopSmall:I

    .line 1059
    const v1, 0x7f0c00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopNormal:I

    .line 1061
    const v1, 0x7f0c00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopLarge:I

    .line 1063
    const v1, 0x7f0c00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopHuge:I

    .line 1065
    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewZero:I

    .line 1067
    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewOne:I

    .line 1069
    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewTwo:I

    .line 1071
    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewThree:I

    .line 1073
    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewZero:I

    .line 1075
    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewOne:I

    .line 1077
    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewTwo:I

    .line 1079
    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewThree:I

    .line 1081
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewZero:I

    .line 1083
    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewOne:I

    .line 1085
    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewTwo:I

    .line 1087
    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewThree:I

    .line 1089
    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewZero:I

    .line 1091
    const v1, 0x7f0c005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewOne:I

    .line 1093
    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewTwo:I

    .line 1095
    const v1, 0x7f0c005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewThree:I

    .line 1097
    const v1, 0x7f0c005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewZero:I

    .line 1099
    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewOne:I

    .line 1101
    const v1, 0x7f0c005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewTwo:I

    .line 1103
    const v1, 0x7f0c0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewThree:I

    .line 1105
    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopTiny:I

    .line 1107
    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopSmall:I

    .line 1109
    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopNormal:I

    .line 1111
    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopLarge:I

    .line 1113
    const v1, 0x7f0c007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopHuge:I

    .line 1115
    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    .line 1117
    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMorePaddingVertical:I

    .line 1119
    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    .line 1121
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1122
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1123
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1124
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1125
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1127
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1128
    const v1, 0x7f020271

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sMeetingRequestIcon:Landroid/graphics/Bitmap;

    .line 1130
    const v1, 0x7f02026f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    .line 1138
    const v1, 0x7f020288

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    .line 1140
    const v1, 0x7f020287

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    .line 1173
    const v1, 0x7f0200e0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconSet:Landroid/graphics/Bitmap;

    .line 1175
    const v1, 0x7f0200e2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

    .line 1177
    const v1, 0x7f0200e1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconClear:Landroid/graphics/Bitmap;

    .line 1179
    const v1, 0x7f0200e3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconPressed:Landroid/graphics/Bitmap;

    .line 1182
    const v1, 0x7f020330

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sDraftIconServer:Landroid/graphics/Bitmap;

    .line 1184
    const v1, 0x7f020058

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sDraftIconClient:Landroid/graphics/Bitmap;

    .line 1186
    const v1, 0x7f0200e6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForward:Landroid/graphics/Bitmap;

    .line 1188
    const v1, 0x7f0200e7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForwardPressed:Landroid/graphics/Bitmap;

    .line 1191
    const v1, 0x7f02027d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    .line 1193
    const v1, 0x7f0200f3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

    .line 1195
    const v1, 0x7f0200ed

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconHigh:Landroid/graphics/Bitmap;

    .line 1197
    const v1, 0x7f0200ee

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconHighPressed:Landroid/graphics/Bitmap;

    .line 1199
    const v1, 0x7f0200ef

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconLow:Landroid/graphics/Bitmap;

    .line 1201
    const v1, 0x7f0200f0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sPriorityIconLowPressed:Landroid/graphics/Bitmap;

    .line 1204
    const v1, 0x7f020314

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sIrmIcon:Landroid/graphics/Bitmap;

    .line 1205
    const v1, 0x7f0200f8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sVoiceMailIcon:Landroid/graphics/Bitmap;

    .line 1207
    const v1, 0x7f0200f6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSMSIcon:Landroid/graphics/Bitmap;

    .line 1209
    const v1, 0x7f0200f5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSignIcon:Landroid/graphics/Bitmap;

    .line 1211
    const v1, 0x7f0200da

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sEncryptIcon:Landroid/graphics/Bitmap;

    .line 1213
    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    .line 1216
    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

    .line 1220
    const v1, 0x7f0203a5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

    .line 1223
    const v1, 0x7f02016a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    .line 1254
    const v1, 0x7f0203ba

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewImage:Landroid/graphics/Bitmap;

    .line 1256
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewImage:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

    .line 1262
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatch:Landroid/graphics/NinePatch;

    .line 1264
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBlack:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

    .line 1270
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIconBeige:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBeige:Landroid/graphics/NinePatch;

    .line 1274
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

    .line 1277
    sget-object v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconWidth:I

    .line 1279
    const v1, 0x7f020264

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineWhiteTheme:Landroid/graphics/Bitmap;

    .line 1283
    const v1, 0x7f0200bc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

    .line 1285
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineWhiteTheme:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sListLineWhiteTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

    .line 1291
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadWhiteTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    .line 1294
    const v1, 0x7f020064

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDarkTheme:Landroid/graphics/Bitmap;

    .line 1296
    const v1, 0x7f020066

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffPressedDarkTheme:Landroid/graphics/Bitmap;

    .line 1298
    const v1, 0x7f020065

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDisabledDarkTheme:Landroid/graphics/Bitmap;

    .line 1300
    const v1, 0x7f020067

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDarkTheme:Landroid/graphics/Bitmap;

    .line 1302
    const v1, 0x7f020069

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnPressedDarkTheme:Landroid/graphics/Bitmap;

    .line 1304
    const v1, 0x7f020068

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDisabledDarkTheme:Landroid/graphics/Bitmap;

    .line 1306
    const v1, 0x7f020062

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkDark:Landroid/graphics/Bitmap;

    .line 1308
    const v1, 0x7f0200a9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

    .line 1310
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sListLineDarkThreadDarkTheme:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    .line 1314
    new-instance v1, Landroid/graphics/NinePatch;

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sListLineDarkDark:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/email/activity/MessageListItem;->sListLineDarkDark:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    sput-object v1, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    .line 1316
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v1

    if-eqz v1, :cond_61a

    .line 1329
    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorDarkTheme:I

    .line 1331
    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sPressedTextColorDarkTheme:I

    .line 1335
    const v1, 0x7f0b007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorDarkTheme:I

    .line 1337
    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkDarkTheme:I

    .line 1339
    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkDarkTheme:I

    .line 1341
    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkDarkTheme:I

    .line 1343
    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkDarkTheme:I

    .line 1345
    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkDarkTheme:I

    .line 1347
    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkDarkTheme:I

    .line 1349
    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkDarkTheme:I

    .line 1351
    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkDarkTheme:I

    .line 1408
    :goto_5de
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sDate:Ljava/util/Date;

    .line 1409
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSsb:Landroid/text/SpannableStringBuilder;

    .line 1410
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSpanRead:Landroid/text/style/StyleSpan;

    .line 1411
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSpanUnRead:Landroid/text/style/StyleSpan;

    .line 1412
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sLineRect:Landroid/graphics/Rect;

    .line 1413
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sP2:Landroid/graphics/Paint;

    .line 1414
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    .line 1415
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sTopLineRect:Landroid/graphics/Rect;

    .line 1416
    sput-boolean v5, Lcom/android/email/activity/MessageListItem;->sInit:Z

    .line 1419
    :cond_619
    return-void

    .line 1391
    :cond_61a
    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorWhiteTheme:I

    .line 1393
    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorWhiteTheme:I

    .line 1395
    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorWhiteTheme:I

    .line 1397
    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorWhiteTheme:I

    .line 1399
    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorWhiteTheme:I

    .line 1401
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorWhiteTheme:I

    .line 1403
    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorWhiteTheme:I

    .line 1405
    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorWhiteTheme:I

    goto/16 :goto_5de
.end method

.method private setHighlightPosition(Ljava/util/ArrayList;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageListItem$SearchItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1753
    if-nez p1, :cond_45

    .line 1754
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1760
    :goto_8
    if-nez p2, :cond_49

    .line 1761
    const-string v0, ""

    move-object v1, v0

    .line 1767
    :goto_d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1769
    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageListItem;->getStringWithEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1770
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1773
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v2, v3

    .line 1776
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1778
    array-length v4, v0

    if-lez v4, :cond_cb

    :goto_27
    move v2, v3

    move v4, v3

    .line 1783
    :goto_29
    array-length v5, v0

    if-ge v2, v5, :cond_4f

    .line 1784
    new-instance v5, Lcom/android/email/activity/MessageListItem$SearchItem;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageListItem$SearchItem;-><init>(Lcom/android/email/activity/MessageListItem;)V

    .line 1785
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 1786
    iput v4, v5, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    .line 1787
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1788
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 1783
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1756
    :cond_45
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    .line 1763
    :cond_49
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    :cond_4f
    move v4, v3

    move v5, v3

    .line 1798
    :goto_51
    :try_start_51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6a

    .line 1799
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_6b

    .line 1820
    :cond_6a
    :goto_6a
    return-object p1

    .line 1805
    :cond_6b
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v2, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1808
    if-nez v4, :cond_b5

    move v2, v3

    :goto_87
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1811
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iput-object v6, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    .line 1812
    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int v2, v5, v0

    .line 1813
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iput v2, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    .line 1814
    invoke-virtual {p4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v2, v0

    .line 1798
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v5, v2

    goto :goto_51

    .line 1808
    :cond_b5
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->index:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_c2} :catch_c6

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_87

    .line 1816
    :catch_c6
    move-exception v0

    .line 1818
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6a

    :cond_cb
    move-object v0, v2

    goto/16 :goto_27
.end method

.method private setLocalVariable()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1898
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mfontSize:I

    packed-switch v0, :pswitch_data_498

    .line 1971
    :goto_a
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mBgColor:I

    packed-switch v0, :pswitch_data_4a6

    .line 1995
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatch:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    .line 1999
    :goto_13
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_293

    .line 2006
    sget v0, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFocusedBackgroundColor:I

    .line 2007
    sget v0, Lcom/android/email/activity/MessageListItem;->sPressedTextColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    .line 2009
    sget v0, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    .line 2022
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorDark:I

    .line 2023
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorDark:I

    .line 2024
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorDark:I

    .line 2025
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorDark:I

    .line 2026
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorDark:I

    .line 2027
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorDark:I

    .line 2028
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorDark:I

    .line 2029
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkDarkTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorDark:I

    .line 2071
    :goto_45
    sget v0, Lcom/android/email/activity/MessageListItem;->sFailedTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextColorDarkWhite:I

    .line 2073
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    if-eqz v0, :cond_2e1

    .line 2074
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDisabledDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    .line 2075
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDisabledDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    .line 2083
    :goto_55
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_316

    .line 2084
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2085
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2086
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2087
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2088
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2089
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_2f9

    .line 2090
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 2096
    :goto_89
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_306

    .line 2099
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_300

    .line 2100
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    .line 2284
    :goto_95
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_449

    .line 2285
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    .line 2286
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    if-eq v0, v5, :cond_441

    .line 2287
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3fa

    .line 2289
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 2290
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    .line 2294
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 2295
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    if-eqz v0, :cond_c0

    .line 2296
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    .line 2297
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    packed-switch v0, :pswitch_data_4b2

    .line 2309
    :cond_c0
    :goto_c0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_c8

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_3f6

    .line 2310
    :cond_c8
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 2331
    :goto_ca
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isSms:Z

    if-eqz v0, :cond_413

    .line 2332
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSMSIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    .line 2333
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    .line 2335
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 2336
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    .line 2348
    :cond_d8
    :goto_d8
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    if-eqz v0, :cond_e3

    .line 2349
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    .line 2350
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    packed-switch v0, :pswitch_data_4bc

    .line 2362
    :cond_e3
    :goto_e3
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_eb

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_43d

    .line 2363
    :cond_eb
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 2393
    :cond_ed
    :goto_ed
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 2395
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    if-eq v0, v5, :cond_10f

    .line 2396
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_472

    .line 2398
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-ne v0, v4, :cond_462

    .line 2399
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 2400
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconHighPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    .line 2405
    :cond_105
    :goto_105
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_10d

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_46e

    .line 2406
    :cond_10d
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    .line 2428
    :cond_10f
    :goto_10f
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13c

    .line 2429
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2430
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2431
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2432
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2434
    :cond_13c
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_151

    .line 2435
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2437
    :cond_151
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_194

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_194

    .line 2440
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2441
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2442
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2443
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2444
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2446
    :cond_194
    return-void

    .line 1900
    :pswitch_195
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    .line 1901
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    .line 1902
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    .line 1903
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    .line 1904
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    .line 1905
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    .line 1906
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    .line 1907
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    .line 1909
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    .line 1910
    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    .line 1911
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopTiny:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_a

    .line 1914
    :pswitch_1c3
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    .line 1915
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    .line 1916
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    .line 1917
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    .line 1918
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    .line 1919
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    .line 1920
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    .line 1921
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    .line 1923
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    .line 1924
    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    .line 1925
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopSmall:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_a

    .line 1928
    :pswitch_1f1
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    .line 1929
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    .line 1930
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    .line 1931
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    .line 1932
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    .line 1933
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    .line 1934
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    .line 1935
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    .line 1937
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    .line 1938
    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    .line 1939
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopNormal:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_a

    .line 1942
    :pswitch_21f
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    .line 1943
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    .line 1944
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    .line 1945
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    .line 1946
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    .line 1947
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    .line 1948
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    .line 1949
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    .line 1951
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    .line 1952
    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    .line 1953
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopLarge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_a

    .line 1956
    :pswitch_24d
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSize:I

    .line 1957
    sget v0, Lcom/android/email/activity/MessageListItem;->sTextSizeMainTextHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mTextSizeMainText:I

    .line 1958
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    .line 1959
    sget v0, Lcom/android/email/activity/MessageListItem;->sDatePaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    .line 1960
    sget v0, Lcom/android/email/activity/MessageListItem;->sAttachmentPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    .line 1961
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    .line 1962
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextMiddleHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    .line 1963
    sget v0, Lcom/android/email/activity/MessageListItem;->sPaddingTextEndHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    .line 1965
    sget v0, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    .line 1966
    sget v0, Lcom/android/email/activity/MessageListItem;->sVerbPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    .line 1967
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxPaddingTopHuge:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    goto/16 :goto_a

    .line 1973
    :pswitch_27b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatch:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_13

    .line 1978
    :pswitch_281
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBeige:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_13

    .line 1985
    :pswitch_287
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_13

    .line 1990
    :pswitch_28d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconNinePatchBlack:Landroid/graphics/NinePatch;

    sput-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    goto/16 :goto_13

    .line 2039
    :cond_293
    sget v0, Lcom/android/email/activity/MessageListItem;->sFocusedBackgroundColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFocusedBackgroundColor:I

    .line 2040
    sget v0, Lcom/android/email/activity/MessageListItem;->sPressedTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPressedTextColor:I

    .line 2042
    sget v0, Lcom/android/email/activity/MessageListItem;->sMatchedtextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    .line 2043
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorWhite:I

    .line 2044
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorWhite:I

    .line 2045
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorWhite:I

    .line 2046
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorWhite:I

    .line 2047
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorWhite:I

    .line 2048
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorWhite:I

    .line 2049
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorWhite:I

    .line 2050
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorWhite:I

    .line 2051
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorDark:I

    .line 2052
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorDark:I

    .line 2053
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorDark:I

    .line 2054
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorDark:I

    .line 2055
    sget v0, Lcom/android/email/activity/MessageListItem;->sSubTextUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorDark:I

    .line 2056
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorDark:I

    .line 2057
    sget v0, Lcom/android/email/activity/MessageListItem;->sDateUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorDark:I

    .line 2058
    sget v0, Lcom/android/email/activity/MessageListItem;->sSnippetUnReadTextColorDarkWhiteTheme:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorDark:I

    goto/16 :goto_45

    .line 2076
    :cond_2e1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    if-eqz v0, :cond_2ef

    .line 2077
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnPressedDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    .line 2078
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffPressedDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_55

    .line 2080
    :cond_2ef
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOnDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    .line 2081
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedIconOffDarkTheme:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_55

    .line 2092
    :cond_2f9
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/16 :goto_89

    .line 2102
    :cond_300
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_95

    .line 2110
    :cond_306
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_310

    .line 2111
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_95

    .line 2113
    :cond_310
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_95

    .line 2134
    :cond_316
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_37f

    .line 2145
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_356

    .line 2146
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2147
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2148
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2149
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2150
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextColorDarkWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2158
    :goto_343
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 2161
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_37a

    .line 2162
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    .line 2170
    :goto_350
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_95

    .line 2152
    :cond_356
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextReadTextColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2153
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetReadTextColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2154
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateReadTextColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2155
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextReadTextColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2156
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextColorDarkWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_343

    .line 2164
    :cond_37a
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto :goto_350

    .line 2182
    :cond_37f
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_3bb

    .line 2183
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2184
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2185
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2186
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorDark:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2187
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextColorDarkWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2195
    :goto_3a8
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 2198
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_3df

    .line 2199
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    .line 2206
    :goto_3b5
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sAttachmentIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_95

    .line 2189
    :cond_3bb
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSubTextUnReadTextColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2190
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mSnippetUnReadTextColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2191
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateUnReadTextColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2192
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextUnReadTextColorWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2193
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextColorDarkWhite:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_3a8

    .line 2201
    :cond_3df
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto :goto_3b5

    .line 2299
    :pswitch_3e4
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_c0

    .line 2302
    :pswitch_3ea
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReplyPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_c0

    .line 2305
    :pswitch_3f0
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForwardPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_c0

    .line 2312
    :cond_3f6
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_ca

    .line 2316
    :cond_3fa
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 2317
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    packed-switch v0, :pswitch_data_4c6

    .line 2326
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconClear:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_ca

    .line 2319
    :pswitch_407
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_ca

    .line 2322
    :pswitch_40d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconSet:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_ca

    .line 2338
    :cond_413
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isVoiceMail:Z

    if-eqz v0, :cond_41f

    .line 2339
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sVoiceMailIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    .line 2340
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    goto/16 :goto_d8

    .line 2341
    :cond_41f
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasInvite:Z

    if-eqz v0, :cond_d8

    .line 2342
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMeetingRequestIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    .line 2343
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    goto/16 :goto_d8

    .line 2352
    :pswitch_42b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_e3

    .line 2355
    :pswitch_431
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_e3

    .line 2358
    :pswitch_437
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconForward:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_e3

    .line 2365
    :cond_43d
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_ed

    .line 2368
    :cond_441
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 2369
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFollowUpFlagIconComplete:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_ed

    .line 2372
    :cond_449
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    .line 2380
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-eqz v0, :cond_45d

    .line 2381
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOn:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    .line 2386
    :goto_453
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    if-eqz v0, :cond_ed

    .line 2387
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLastVerbIconReply:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_ed

    .line 2383
    :cond_45d
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFavoriteIconOff:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    goto :goto_453

    .line 2401
    :cond_462
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-nez v0, :cond_105

    .line 2402
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 2403
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconLowPressed:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_105

    .line 2408
    :cond_46e
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_10f

    .line 2412
    :cond_472
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-ne v0, v4, :cond_488

    .line 2413
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconHigh:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    .line 2414
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    .line 2419
    :cond_47c
    :goto_47c
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-nez v0, :cond_484

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_493

    .line 2420
    :cond_484
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_10f

    .line 2415
    :cond_488
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPriority:I

    if-nez v0, :cond_47c

    .line 2416
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sPriorityIconLow:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    .line 2417
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    goto :goto_47c

    .line 2422
    :cond_493
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mHasTitleIcon:Z

    goto/16 :goto_10f

    .line 1898
    nop

    :pswitch_data_498
    .packed-switch 0x0
        :pswitch_195
        :pswitch_1c3
        :pswitch_1f1
        :pswitch_21f
        :pswitch_24d
    .end packed-switch

    .line 1971
    :pswitch_data_4a6
    .packed-switch 0x0
        :pswitch_27b
        :pswitch_281
        :pswitch_287
        :pswitch_28d
    .end packed-switch

    .line 2297
    :pswitch_data_4b2
    .packed-switch 0x1
        :pswitch_3e4
        :pswitch_3ea
        :pswitch_3f0
    .end packed-switch

    .line 2350
    :pswitch_data_4bc
    .packed-switch 0x1
        :pswitch_42b
        :pswitch_431
        :pswitch_437
    .end packed-switch

    .line 2317
    :pswitch_data_4c6
    .packed-switch 0x1
        :pswitch_407
        :pswitch_40d
    .end packed-switch
.end method


# virtual methods
.method DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V
    .registers 12
    .parameter "canvas"
    .parameter "icon"
    .parameter "width"
    .parameter "top"

    .prologue
    .line 2453
    if-eqz p2, :cond_1d

    .line 2454
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2455
    .local v0, icon_w:I
    if-gtz p3, :cond_1e

    move v3, v0

    .line 2456
    .local v3, w:I
    :goto_9
    sub-int v4, v3, v0

    div-int/lit8 v2, v4, 0x2

    .line 2457
    .local v2, margine:I
    sget v4, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    add-int v5, v0, v2

    sub-int v1, v4, v5

    .line 2458
    .local v1, left:I
    int-to-float v4, v1

    int-to-float v5, p4

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2459
    sub-int v4, v1, v2

    sput v4, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    .line 2461
    .end local v0           #icon_w:I
    .end local v1           #left:I
    .end local v2           #margine:I
    .end local v3           #w:I
    :cond_1d
    return-void

    .restart local v0       #icon_w:I
    :cond_1e
    move v3, p3

    .line 2455
    goto :goto_9
.end method

.method ResetIconStack()V
    .registers 3

    .prologue
    .line 2449
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sFavoritePaddingRightDark:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/email/activity/MessageListItem;->iconStackRightBound:I

    .line 2450
    return-void
.end method

.method public bindViewInit(Lcom/android/email/activity/MessagesAdapter;Lcom/android/email/activity/MessagesAdapter$Callback;)V
    .registers 4
    .parameter "adapter"
    .parameter "callback"

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    if-nez v0, :cond_6

    .line 3011
    iput-object p2, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    .line 3013
    :cond_6
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 3015
    return-void
.end method

.method public getBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1440
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->readStateChanged:Z

    .line 1441
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    .line 1443
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mChildIndex:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mChildCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_31

    .line 1444
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    .line 1451
    :goto_1a
    packed-switch p1, :pswitch_data_8a

    .line 1469
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1470
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1473
    :goto_30
    return-object v0

    .line 1446
    :cond_31
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    goto :goto_1a

    .line 1449
    :cond_34
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    goto :goto_1a

    .line 1453
    :pswitch_37
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1454
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_30

    .line 1457
    :cond_4b
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_30

    .line 1461
    :pswitch_59
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1462
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_30

    .line 1465
    :cond_6d
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_30

    .line 1473
    :cond_7b
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_30

    .line 1451
    nop

    :pswitch_data_8a
    .packed-switch 0x3
        :pswitch_37
        :pswitch_59
    .end packed-switch
.end method

.method public getBackgroundType()I
    .registers 2

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v0, :cond_6

    .line 1433
    const/4 v0, 0x3

    .line 1435
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x4

    goto :goto_5
.end method

.method public getViewHeight()I
    .registers 2

    .prologue
    .line 1884
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter

    .prologue
    .line 2536
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->setLocalVariable()V

    .line 2538
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->ResetIconStack()V

    .line 2540
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_421

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_421

    .line 2542
    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    .line 2546
    :goto_16
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    if-nez v0, :cond_426

    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsAllAccount:Z

    .line 2549
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    if-eqz v0, :cond_39

    .line 2550
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sMorePaddingVertical:I

    sget v3, Lcom/android/email/activity/MessageListItem;->sColorTipWidth:I

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    sget v5, Lcom/android/email/activity/MessageListItem;->sMorePaddingVertical:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2553
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mColorChipBitmap:Landroid/graphics/NinePatch;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2558
    :cond_39
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxLeft:I

    .line 2559
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxTop:I

    .line 2561
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItemContainer;)Z

    move-result v0

    if-eqz v0, :cond_429

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOn:Landroid/graphics/Bitmap;

    :goto_62
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mIsAllAccount:Z

    if-eqz v1, :cond_42d

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxLeft:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    :goto_6f
    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2567
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFontMetricsMainText:Landroid/graphics/Paint$FontMetricsInt;

    .line 2568
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFontMetricsMainText:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAscentMainText:I

    .line 2569
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mAscentMainText:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextTop:I

    .line 2570
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsAllAccount:Z

    if-eqz v0, :cond_435

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v0, v1

    :goto_98
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextLeft:I

    .line 2574
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    if-eqz v0, :cond_a7

    .line 2575
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    sget v1, Lcom/android/email/activity/MessageListItem;->sFavoriteIconWidth:I

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 2580
    :cond_a7
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasAttachment:Z

    if-eqz v0, :cond_b3

    .line 2581
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 2585
    :cond_b3
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasPriorityIcon:Z

    if-eqz v0, :cond_bf

    .line 2586
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mPriorityIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 2588
    :cond_bf
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isEncrypted:Z

    if-eqz v0, :cond_cb

    .line 2589
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sEncryptIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 2591
    :cond_cb
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isSigned:Z

    if-eqz v0, :cond_d7

    .line 2592
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSignIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 2594
    :cond_d7
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f6

    .line 2595
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_43c

    .line 2596
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDraftIconServer:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mDraftIcon:Landroid/graphics/Bitmap;

    .line 2600
    :goto_ee
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mDraftIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mAttachmentPaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 2602
    :cond_f6
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasIrm:Z

    if-eqz v0, :cond_102

    .line 2603
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sIrmIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->DrawIconStack(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)V

    .line 2606
    :cond_102
    invoke-direct {p0}, Lcom/android/email/activity/MessageListItem;->calculateDrawingData()V

    .line 2608
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11e

    .line 2609
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedMainText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextTop:I

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2614
    :cond_11e
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getEasSearchString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12a

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_151

    :cond_12a
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_151

    .line 2618
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    if-eqz v0, :cond_151

    .line 2619
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2620
    const/4 v0, 0x0

    move v7, v0

    :goto_13d
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_151

    .line 2621
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    if-nez v0, :cond_442

    .line 2660
    :cond_151
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-eqz v0, :cond_477

    .line 2661
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mMainTextTop:I

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mLastVerbPaddingTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2671
    :cond_164
    :goto_164
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFontMetricsSubText:Landroid/graphics/Paint$FontMetricsInt;

    .line 2672
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFontMetricsSubText:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAscentSubText:I

    .line 2673
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mAscentSubText:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextTop:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextTop:I

    .line 2682
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasLastVerbIcon:Z

    if-eqz v0, :cond_49e

    .line 2683
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsAllAccount:Z

    if-eqz v0, :cond_490

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_194
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextLeft:I

    .line 2687
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextTop:I

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2704
    :goto_1ab
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getEasSearchString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b7

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1de

    :cond_1b7
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1de

    .line 2708
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    if-eqz v0, :cond_1de

    .line 2709
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2710
    const/4 v0, 0x0

    move v7, v0

    :goto_1ca
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1de

    .line 2711
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    if-nez v0, :cond_50a

    .line 2722
    :cond_1de
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLineHeightSubText:I

    .line 2723
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mLineHeightSnippet:I

    .line 2724
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsAllAccount:Z

    if-eqz v0, :cond_53f

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    :goto_1f9
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetX:I

    .line 2726
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_543

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetX:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v0, v1

    :goto_207
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetX:I

    .line 2729
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextTop:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mLineHeightSubText:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextMiddle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetY:I

    .line 2730
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mOriginColor:I

    .line 2731
    const/4 v0, 0x0

    move v7, v0

    :goto_21d
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ge v7, v0, :cond_229

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLineCount:I

    if-ge v7, v0, :cond_229

    .line 2732
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    if-nez v0, :cond_547

    .line 2787
    :cond_229
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFontMetricsDate:Landroid/graphics/Paint$FontMetricsInt;

    .line 2788
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFontMetricsDate:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mAscentDate:I

    .line 2791
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateLeft:I

    .line 2792
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mAscentDate:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDatePaddingTop:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDateTop:I

    .line 2793
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedDate:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mDateLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mDateTop:I

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sDatePaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2797
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isSendingFailedMsg:Z

    if-eqz v0, :cond_28b

    .line 2798
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFontMetricsFailedText:Landroid/graphics/Paint$FontMetricsInt;

    .line 2799
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mDateLeft:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mDateWidth:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/email/activity/MessageListItem;->sDatePaddingRight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextLeft:I

    .line 2800
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedFailedText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedFailedText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mFailedTextLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mDateTop:I

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sFailedTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2831
    :cond_28b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLineRect:Landroid/graphics/Rect;

    if-nez v0, :cond_296

    .line 2832
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sLineRect:Landroid/graphics/Rect;

    .line 2834
    :cond_296
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLineRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2835
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v0, :cond_2b0

    .line 2837
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLineRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x7

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2876
    :cond_2b0
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mNeedMorePadding:Z

    if-eqz v0, :cond_2ca

    .line 2877
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLineRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v3, v3, -0xa

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2878
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLineRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2881
    :cond_2ca
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_2d6

    .line 2882
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sLineRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2884
    :cond_2d6
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasDivider:Z

    if-nez v0, :cond_2e1

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2fa

    .line 2887
    :cond_2e1
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    if-nez v0, :cond_2f3

    .line 2888
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_5fb

    .line 2889
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_5f5

    .line 2890
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadDarkTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    .line 2902
    :cond_2f3
    :goto_2f3
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sLineRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2905
    :cond_2fa
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sP2:Landroid/graphics/Paint;

    if-nez v0, :cond_305

    .line 2906
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sP2:Landroid/graphics/Paint;

    .line 2908
    :cond_305
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItemContainer;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_35b

    .line 2909
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sP2:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mFocusedBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2910
    const/4 v1, 0x0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x3

    int-to-float v2, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sP2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2912
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4000

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sP2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2913
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    int-to-float v3, v0

    const/high16 v4, 0x4040

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sP2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2914
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v1, v0

    const/high16 v2, 0x3f80

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lcom/android/email/activity/MessageListItem;->sP2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2918
    :cond_35b
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    if-nez v0, :cond_366

    .line 2919
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    .line 2921
    :cond_366
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2924
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mCurrentPane:I

    .line 2925
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mCurrentPane:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_60b

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mCurrentPane:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_60b

    const/4 v0, 0x1

    :goto_382
    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mAvailableTwoPane:Z

    .line 2927
    invoke-static {}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_60e

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mAvailableTwoPane:Z

    if-eqz v0, :cond_60e

    .line 2946
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2948
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2949
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2951
    sget-object v0, Lcom/android/email/activity/MessageListItem;->mSelectedIconNinePatch:Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2952
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2954
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2968
    :cond_3e1
    :goto_3e1
    sget v0, Lcom/android/email/activity/MessageListXL;->sRightSplitType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3fa

    .line 2969
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2971
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sFullViewSplitViewNinePatch:Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2977
    :cond_3fa
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPosition:I

    if-nez v0, :cond_420

    .line 2978
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sTopLineRect:Landroid/graphics/Rect;

    if-nez v0, :cond_409

    .line 2979
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListItem;->sTopLineRect:Landroid/graphics/Rect;

    .line 2982
    :cond_409
    sget-boolean v0, Lcom/android/email/activity/MessageListXL;->isRightSplitPressed:Z

    if-eqz v0, :cond_628

    .line 2983
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sTopLineRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v3, v3, -0x8

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2984
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sTopLineRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 2998
    :cond_420
    :goto_420
    return-void

    .line 2544
    :cond_421
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    goto/16 :goto_16

    .line 2546
    :cond_426
    const/4 v0, 0x1

    goto/16 :goto_1b

    .line 2561
    :cond_429
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSelectedIconOff:Landroid/graphics/Bitmap;

    goto/16 :goto_62

    :cond_42d
    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxLeft:I

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    goto/16 :goto_6f

    .line 2570
    :cond_435
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v0, v1

    goto/16 :goto_98

    .line 2598
    :cond_43c
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sDraftIconClient:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mDraftIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_ee

    .line 2623
    :cond_442
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mMainTextLeft:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightMainText:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mMainTextTop:I

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sMainTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2620
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_13d

    .line 2663
    :cond_477
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    if-eqz v0, :cond_164

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_164

    .line 2664
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMainTextLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mMainTextTop:I

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_164

    .line 2683
    :cond_490
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mLastverbIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_194

    .line 2689
    :cond_49e
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasReplyIcon:Z

    if-eqz v0, :cond_4df

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4df

    .line 2690
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsAllAccount:Z

    if-eqz v0, :cond_4d2

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_4b9
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextLeft:I

    .line 2694
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextTop:I

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_1ab

    .line 2690
    :cond_4d2
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mReplyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4b9

    .line 2697
    :cond_4df
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsAllAccount:Z

    if-eqz v0, :cond_504

    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    sget v1, Lcom/android/email/activity/MessageListItem;->sMorePadding:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v0, v1

    :goto_4eb
    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextLeft:I

    .line 2699
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mFormattedSubText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextLeft:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextTop:I

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_1ab

    .line 2697
    :cond_504
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mPaddingthread:I

    add-int/2addr v0, v1

    goto :goto_4eb

    .line 2713
    :cond_50a
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mSubTextLeft:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSubText:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSubTextTop:I

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSubTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2710
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1ca

    .line 2724
    :cond_53f
    sget v0, Lcom/android/email/activity/MessageListItem;->sMainTextPaddingLeft:I

    goto/16 :goto_1f9

    .line 2726
    :cond_543
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetX:I

    goto/16 :goto_207

    .line 2735
    :cond_547
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetLines:[Ljava/lang/CharSequence;

    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLine:Ljava/lang/CharSequence;

    .line 2736
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetX:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDrawX:I

    .line 2737
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLine:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5b6

    .line 2738
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mDefaultPaintStart:I

    .line 2739
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mOriginColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2740
    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mLine:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mDefaultPaintStart:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mLine:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mDrawX:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetY:I

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2743
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_5ac

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5ac

    .line 2745
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    if-eqz v0, :cond_5ac

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v7

    if-eqz v0, :cond_5ac

    .line 2747
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mMatchedtextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2748
    const/4 v0, 0x0

    move v8, v0

    :goto_594
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5ac

    .line 2749
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    if-nez v0, :cond_5bb

    .line 2762
    :cond_5ac
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetY:I

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mLineHeightSnippet:I

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mPaddingTextEnd:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetY:I

    .line 2731
    :cond_5b6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_21d

    .line 2751
    :cond_5bb
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v1, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->searchStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/email/activity/MessageListItem;->mDrawX:I

    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mHighlightSnippet:[Ljava/util/ArrayList;

    aget-object v0, v0, v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListItem$SearchItem;

    iget v0, v0, Lcom/android/email/activity/MessageListItem$SearchItem;->position:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mSnippetY:I

    int-to-float v5, v0

    sget-object v6, Lcom/android/email/activity/MessageListItem;->sSnippetPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2748
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_594

    .line 2892
    :cond_5f5
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkDark:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_2f3

    .line 2895
    :cond_5fb
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->isLastThreadItem:Z

    if-eqz v0, :cond_605

    .line 2896
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchDarkThreadWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_2f3

    .line 2898
    :cond_605
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sListLineNinepatchWhiteTheme:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    goto/16 :goto_2f3

    .line 2925
    :cond_60b
    const/4 v0, 0x0

    goto/16 :goto_382

    .line 2961
    :cond_60e
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mAvailableTwoPane:Z

    if-eqz v0, :cond_3e1

    .line 2963
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget-object v2, Lcom/android/email/activity/MessageListItem;->sNoneSelectedMessageIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2965
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sNoneSelectedIconNinePatch:Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sSelectedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto/16 :goto_3e1

    .line 2986
    :cond_628
    sget-object v0, Lcom/android/email/activity/MessageListItem;->sTopLineRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    add-int/lit8 v3, v3, -0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2987
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListLineNinepatch:Landroid/graphics/NinePatch;

    sget-object v1, Lcom/android/email/activity/MessageListItem;->sTopLineRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto/16 :goto_420
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 3035
    .line 3036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    .line 3037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v6, v0

    .line 3040
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_47

    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_47

    .line 3042
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    sget v2, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    add-int/2addr v2, v0

    .line 3043
    sget v0, Lcom/android/email/activity/MessageListItem;->sThreadListPadding:I

    .line 3047
    :goto_1f
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    sget v7, Lcom/android/email/activity/MessageListItem;->sFavoriteHitWidth:I

    sub-int v7, v3, v7

    .line 3048
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    add-int/lit8 v8, v3, -0xa

    .line 3049
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mFavoritePaddingTop:I

    iget-object v9, p0, Lcom/android/email/activity/MessageListItem;->mFavoriteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v3, v9

    add-int/lit8 v9, v3, 0xa

    .line 3050
    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    const/4 v10, 0x4

    if-eq v3, v10, :cond_3e

    iget v3, p0, Lcom/android/email/activity/MessageListItem;->mMailboxType:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_4c

    :cond_3e
    move v3, v4

    .line 3051
    :goto_3f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_c4

    .line 3099
    :cond_46
    :goto_46
    :pswitch_46
    return v1

    .line 3045
    :cond_47
    sget v0, Lcom/android/email/activity/MessageListItem;->sCheckboxHitWidth:I

    move v2, v0

    move v0, v1

    goto :goto_1f

    :cond_4c
    move v3, v1

    .line 3050
    goto :goto_3f

    .line 3053
    :pswitch_4e
    if-ge v5, v2, :cond_5e

    if-le v5, v0, :cond_5e

    .line 3054
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    .line 3056
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxPressed:Z

    .line 3057
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mCallback:Lcom/android/email/activity/MessagesAdapter$Callback;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    invoke-interface {v0, v4, v1}, Lcom/android/email/activity/MessagesAdapter$Callback;->setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItemContainer;)V

    move v1, v4

    .line 3059
    :cond_5e
    if-nez v3, :cond_46

    if-le v5, v7, :cond_46

    if-ge v6, v9, :cond_46

    if-le v6, v8, :cond_46

    .line 3061
    iput-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    move v1, v4

    .line 3062
    goto :goto_46

    .line 3066
    :pswitch_6a
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    goto :goto_46

    .line 3069
    :pswitch_6d
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    if-eqz v3, :cond_46

    iget-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mCheckboxDisabled:Z

    if-nez v3, :cond_46

    .line 3070
    if-ge v5, v2, :cond_89

    if-le v5, v0, :cond_89

    .line 3071
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListItemContainer;->playSoundEffect(I)V

    .line 3072
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mParentIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItemContainer;I)V

    move v1, v4

    .line 3073
    goto :goto_46

    .line 3074
    :cond_89
    if-le v5, v7, :cond_46

    if-ge v6, v9, :cond_46

    if-le v6, v8, :cond_46

    iget-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mHasFavoriteIcon:Z

    if-eqz v0, :cond_46

    .line 3075
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListItemContainer;->playSoundEffect(I)V

    .line 3076
    const-string v0, "eas"

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 3077
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    .line 3078
    iget v2, p0, Lcom/android/email/activity/MessageListItem;->mFollowUpFlagStatus:I

    packed-switch v2, :pswitch_data_d0

    move v4, v0

    .line 3089
    :goto_aa
    :pswitch_aa
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    invoke-virtual {v0, v2, v4}, Lcom/android/email/activity/MessagesAdapter;->updateFollowUpFlag(Lcom/android/email/activity/MessageListItemContainer;I)V

    goto :goto_46

    .line 3080
    :pswitch_b2
    const/4 v4, 0x2

    .line 3081
    goto :goto_aa

    :pswitch_b4
    move v4, v1

    .line 3084
    goto :goto_aa

    .line 3091
    :cond_b6
    iget-object v0, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MessageListItem;->mListItemContainer:Lcom/android/email/activity/MessageListItemContainer;

    iget-boolean v3, p0, Lcom/android/email/activity/MessageListItem;->mIsFavorite:Z

    if-nez v3, :cond_bf

    move v1, v4

    :cond_bf
    invoke-virtual {v0, v2, v1}, Lcom/android/email/activity/MessagesAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItemContainer;Z)V

    move v1, v4

    .line 3093
    goto :goto_46

    .line 3051
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_6d
        :pswitch_46
        :pswitch_6a
    .end packed-switch

    .line 3078
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_b4
        :pswitch_aa
    .end packed-switch
.end method

.method public setViewHeight()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1824
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mfontSize:I

    packed-switch v0, :pswitch_data_b0

    .line 1876
    :cond_8
    :goto_8
    return-void

    .line 1826
    :pswitch_9
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_11

    .line 1827
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1828
    :cond_11
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_19

    .line 1829
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1830
    :cond_19
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_21

    .line 1831
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1832
    :cond_21
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_8

    .line 1833
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightTinyPreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto :goto_8

    .line 1836
    :pswitch_2a
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_32

    .line 1837
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1838
    :cond_32
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_3a

    .line 1839
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1840
    :cond_3a
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_42

    .line 1841
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1842
    :cond_42
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_8

    .line 1843
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightSmallPreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto :goto_8

    .line 1846
    :pswitch_4b
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_53

    .line 1847
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1848
    :cond_53
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_5b

    .line 1849
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1850
    :cond_5b
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_63

    .line 1851
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1852
    :cond_63
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_8

    .line 1853
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightNormalPreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto :goto_8

    .line 1856
    :pswitch_6c
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_74

    .line 1857
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1858
    :cond_74
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_7c

    .line 1859
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1860
    :cond_7c
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_84

    .line 1861
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1862
    :cond_84
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_8

    .line 1863
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightLargePreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto/16 :goto_8

    .line 1866
    :pswitch_8e
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-nez v0, :cond_96

    .line 1867
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewZero:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1868
    :cond_96
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v1, :cond_9e

    .line 1869
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewOne:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1870
    :cond_9e
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v2, :cond_a6

    .line 1871
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewTwo:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    .line 1872
    :cond_a6
    iget v0, p0, Lcom/android/email/activity/MessageListItem;->mPreviewLineSize:I

    if-ne v0, v3, :cond_8

    .line 1873
    sget v0, Lcom/android/email/activity/MessageListItem;->sViewHeightHugePreviewThree:I

    iput v0, p0, Lcom/android/email/activity/MessageListItem;->mViewHeight:I

    goto/16 :goto_8

    .line 1824
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_2a
        :pswitch_4b
        :pswitch_6c
        :pswitch_8e
    .end packed-switch
.end method

.method public setViewSize(I)V
    .registers 2
    .parameter "viewWidth"

    .prologue
    .line 1879
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->setViewHeight()V

    .line 1880
    iput p1, p0, Lcom/android/email/activity/MessageListItem;->mViewWidth:I

    .line 1881
    return-void
.end method
