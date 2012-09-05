.class public abstract Lcom/android/email/activity/MessageViewFragmentBase;
.super Landroid/app/Fragment;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;,
        Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;,
        Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;,
        Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;,
        Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;,
        Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;,
        Lcom/android/email/activity/MessageViewFragmentBase$ItemView;,
        Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;,
        Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItemView;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;,
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;,
        Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;,
        Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragmentBase$Callback;,
        Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;,
        Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    }
.end annotation


# static fields
.field private static EMPTY_TEXT_CONTENT:Ljava/lang/String;

.field private static final IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

.field public static INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

.field private static final OWN_WEB_URL:Ljava/util/regex/Pattern;

.field private static PREVIEW_ICON_HEIGHT:I

.field private static PREVIEW_ICON_WIDTH:I

.field public static SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

.field private static final WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

.field private static final ZOOM_SCALE_ARRAY:[F

.field private static isMessageList:Z

.field private static mAttachmentCnt:I

.field private static mAttachmentCnt_saved:I

.field private static mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

.field public static mIsAttachAll:Z

.field public static mIsLaunchAttach:Z

.field private static mIsSms:Z

.field public static mLoadAttachmentId:J

.field public static mLoadMoreDialogCancelled:Z

.field public static mProgressDialogShowing:Z

.field private static mRecipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;",
            ">;"
        }
    .end annotation
.end field

.field public static mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

.field private static mViewMaxWidth:I

.field private static message:Ljava/lang/String;

.field private static progress_pre:I

.field public static progress_rotated:Z

.field private static sAttachmentListOpen:Z

.field private static sRecipientOpen:Z

.field private static sSplitMoved:Z

.field public static smimeutils:Lcom/android/email/SMIMEHelperUtils;


# instance fields
.field ATTACHMNET_DOWNLOAD_CANCEL_EAS:Z

.field public BgColorDialog:Landroid/app/AlertDialog;

.field public FromRetainedObject:Z

.field private final MaxListCountInToCc:I

.field public PREFERENCES_FILE:Ljava/lang/String;

.field private bSaveToCalendarIsText:Z

.field private dialogCancelled:Z

.field private downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

.field private downloadManager:Landroid/app/DownloadManager;

.field private isSystemFont:Z

.field private mAccountId:J

.field private mActivity:Landroid/app/Activity;

.field private mAlreadySaveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachmentCount:I

.field private mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private mAttachments:Landroid/widget/LinearLayout;

.field public mAttachmentsExpander:Landroid/widget/ImageButton;

.field private mAttachmentsHeaderInfo:Landroid/widget/TextView;

.field private mAttatchmentCount:I

.field private mBGColorAdapter:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

.field private mBGColorCode:[I

.field private mBaseURL:Ljava/lang/String;

.field private mBodyHtml:Ljava/lang/String;

.field private mBodyImageAttachmentId:[J

.field private mBodyImageCnt:I

.field private mBodyImageDownloadCnt:I

.field private mBodyText:Ljava/lang/String;

.field private mBtnAllDownload:Landroid/widget/Button;

.field private mBtnAllDownloadVisible:Z

.field private mBtnMoreInformation:Landroid/widget/ImageButton;

.field private mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

.field private mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

.field private mCcDivider:Landroid/view/View;

.field private mCcEmail:Ljava/lang/String;

.field private mCcMargin:Landroid/view/View;

.field private mCcText:Landroid/widget/TextView;

.field private mCclength:I

.field private mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

.field private mClickedBubbleButton:Lcom/android/email/bubblebutton/BubbleButton;

.field private mColor:[Ljava/lang/String;

.field private mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

.field protected mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mCurColorCode:I

.field private mCurFontColorCode:I

.field private mCurrentMessgeId:J

.field private mCurrentOrientation:I

.field private mCurrentTab:I

.field private mDateTimeView:Landroid/widget/TextView;

.field private mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

.field private mDownloadSmimeAttachment:Z

.field private mDownloadZ7AttForSave:Z

.field public mEmbeddedImageDownload:Z

.field private mEncryptionIcon:Landroid/widget/ImageView;

.field public mFavoriteIcon:Landroid/widget/ImageView;

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

.field private mFontColorCode:[I

.field private mFontColorString:[Ljava/lang/String;

.field private mFontSize:I

.field private mForwarded:Ljava/lang/Boolean;

.field public mForwarding:Z

.field private mFromBadge:Landroid/widget/ImageView;

.field private mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

.field private mFromText:Landroid/widget/TextView;

.field private mGroupRange:[Ljava/lang/String;

.field private mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

.field private mHasCcList:Z

.field private mHasNoBody:Z

.field private mHasToList:Z

.field private mHtmlTextRaw:Ljava/lang/String;

.field private mHtmlTextWebView:Ljava/lang/String;

.field private mImageId:[I

.field protected mInviteLink:Landroid/widget/Button;

.field private mIsCachedSenderInfo:Z

.field protected mIsDestoryStart:Z

.field protected mIsEMLView:Z

.field private mIsMessageLoadedForTest:Z

.field private mIsOpenedRecipientInfo:Z

.field private mIsPatternMatchingEnd:Z

.field private mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

.field private mLastVerbDateTimeView:Landroid/widget/TextView;

.field private mLayoutWidth:I

.field private mLinearLayoutAddress:Landroid/widget/LinearLayout;

.field private mLinearLayoutCreate_count:I

.field public mLinearlayoutAttachment:Landroid/widget/LinearLayout;

.field public mLinearlayoutContent:Landroid/widget/LinearLayout;

.field private mLinearlayoutTitle:Landroid/widget/LinearLayout;

.field private mLinearlayoutTitleSection:Landroid/widget/LinearLayout;

.field public mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

.field private mList:Landroid/widget/ListView;

.field private mLoadAttachmentName:Ljava/lang/String;

.field private mLoadAttachmentSave:Z

.field private mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

.field private mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

.field private mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

.field private mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

.field private mLoadMoreDialog:Landroid/app/ProgressDialog;

.field private mLoadWhenResumed:Z

.field private mLoadingProgress:Landroid/view/View;

.field private mMailboxId:J

.field protected mMeetingDeleteEvent:Landroid/widget/Button;

.field private mMeetingLocationText:Landroid/widget/TextView;

.field private mMeetingLocationTextLabel:Landroid/widget/TextView;

.field protected mMeetingMaybe:Landroid/widget/CheckBox;

.field protected mMeetingNo:Landroid/widget/CheckBox;

.field private mMeetingTimeText:Landroid/widget/TextView;

.field private mMeetingTimeTextLabel:Landroid/widget/TextView;

.field protected mMeetingYes:Landroid/widget/CheckBox;

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mMessageId:J

.field private mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

.field protected mMessageOpenMode:I

.field protected mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

.field private mMessageTypeIcon:Landroid/widget/ImageView;

.field private mMessageViewFragment:Landroid/view/View;

.field protected mMessageViewFragmentIndex:I

.field protected mMessageWebView:Lcom/android/email/activity/MessageWebView;

.field private mMoreMessage:Landroid/view/View;

.field public mMoreMessageHolder:Landroid/view/View;

.field private mNextPrevObserver:Landroid/database/ContentObserver;

.field public mNoSelectedEmail:Landroid/widget/LinearLayout;

.field private mPMmanager:Lcom/android/email/ViewPatternMatching;

.field private mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

.field private mPermission:Landroid/widget/ImageView;

.field private mPrevNextCursor:Landroid/database/Cursor;

.field private mPriorityIcon:Landroid/widget/ImageView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field public mProgressDialog2:Landroid/app/ProgressDialog;

.field protected mProposeNewTime:Landroid/widget/CheckBox;

.field private mQuickContactLookupUri:Landroid/net/Uri;

.field private mRecipientRangeAdapter:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

.field private mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

.field private mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

.field private mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

.field private mResetView:Z

.field protected mResponseOptionsLayout:Landroid/widget/LinearLayout;

.field private mResumed:Z

.field private mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

.field private mSaveToCalendarHtmlText:Ljava/lang/String;

.field public mScrollviewInvite:Landroid/widget/LinearLayout;

.field private mSignIcon:Landroid/widget/ImageView;

.field mSmimeDialog:Landroid/app/ProgressDialog;

.field public mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

.field private mSortType:I

.field private mSubjectView:Landroid/widget/TextView;

.field private mTabFlags:I

.field private mTabSection:Landroid/view/View;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mText1:Ljava/lang/String;

.field private mTextAnimation:Landroid/view/animation/Animation;

.field private mTextAttachmentTab:Landroid/widget/TextView;

.field protected mTextInviteTab:Landroid/widget/TextView;

.field private mTextMessageTab:Landroid/widget/TextView;

.field private mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

.field private mToButtonWidth:I

.field private mToDivider:Landroid/view/View;

.field private mToEmail:Ljava/lang/String;

.field private mToMargin:Landroid/view/View;

.field private mToText:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTolength:I

.field mUserChoiceDialog:Landroid/app/AlertDialog;

.field private mViewAnimation:Landroid/view/animation/Animation;

.field private mWaitForLoadMessageId:J

.field private m_nAttachmnetMargin:I

.field public mbtnToTheTop:Landroid/widget/Button;

.field private meetingTime1:Ljava/lang/String;

.field private meetingTime2:Ljava/lang/String;

.field private moreMessageDialog:Landroid/app/AlertDialog;

.field policySet:Lcom/android/emailcommon/service/PolicySet;

.field public reqMemoReceiver:Landroid/content/BroadcastReceiver;

.field securityPolicy:Lcom/android/email/SecurityPolicy;

.field private senderInfoForPhotoImage:Ljava/lang/String;

.field private showingLoadMore:Z

.field private templateDescription:Landroid/widget/TextView;

.field private templateDescriptionLayout:Landroid/widget/LinearLayout;

.field versionDouble:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    const-string v0, "<(?i)img\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    .line 211
    const-string v0, "[hH][tT][tT][pP][sS]?://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    .line 216
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mIsSms:Z

    .line 248
    const-string v0, "((?:([hH][tT][tT][pP][sS]?|[rR][tT][sS][pP]):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:\u03b4\u03bf\u03ba\u03b9\u03bc\u03ae|\u0438\u0441\u043f\u044b\u0442\u0430\u043d\u0438\u0435|\u0440\u0444|\u0441\u0440\u0431|\u05d8\u05e2\u05e1\u05d8|\u0622\u0632\u0645\u0627\u06cc\u0634\u06cc|\u0625\u062e\u062a\u0628\u0627\u0631|\u0627\u0644\u0627\u0631\u062f\u0646|\u0627\u0644\u062c\u0632\u0627\u0626\u0631|\u0627\u0644\u0633\u0639\u0648\u062f\u064a\u0629|\u0627\u0644\u0645\u063a\u0631\u0628|\u0627\u0645\u0627\u0631\u0627\u062a|\u0628\u06be\u0627\u0631\u062a|\u062a\u0648\u0646\u0633|\u0633\u0648\u0631\u064a\u0629|\u0641\u0644\u0633\u0637\u064a\u0646|\u0642\u0637\u0631|\u0645\u0635\u0631|\u092a\u0930\u0940\u0915\u094d\u0937\u093e|\u092d\u093e\u0930\u0924|\u09ad\u09be\u09b0\u09a4|\u0a2d\u0a3e\u0a30\u0a24|\u0aad\u0abe\u0ab0\u0aa4|\u0b87\u0ba8\u0bcd\u0ba4\u0bbf\u0baf\u0bbe|\u0b87\u0bb2\u0b99\u0bcd\u0b95\u0bc8|\u0b9a\u0bbf\u0b99\u0bcd\u0b95\u0baa\u0bcd\u0baa\u0bc2\u0bb0\u0bcd|\u0baa\u0bb0\u0bbf\u0b9f\u0bcd\u0b9a\u0bc8|\u0c2d\u0c3e\u0c30\u0c24\u0c4d|\u0dbd\u0d82\u0d9a\u0dcf|\u0e44\u0e17\u0e22|\u30c6\u30b9\u30c8|\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u65b0\u52a0\u5761|\u6d4b\u8bd5|\u6e2c\u8a66|\u9999\u6e2f|\ud14c\uc2a4\ud2b8|\ud55c\uad6d|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(?:(\\/|\\?)(?:(?:[a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->OWN_WEB_URL:Ljava/util/regex/Pattern;

    .line 461
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 503
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->ZOOM_SCALE_ARRAY:[F

    .line 9963
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    .line 10011
    const/4 v0, -0x1

    sput v0, Lcom/android/email/activity/MessageViewFragmentBase;->progress_pre:I

    .line 10016
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

    .line 10020
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    .line 10026
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialogShowing:Z

    .line 10029
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    .line 10031
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    .line 10033
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    .line 10043
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->message:Ljava/lang/String;

    .line 10048
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageList:Z

    .line 10050
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    .line 10055
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->sAttachmentListOpen:Z

    .line 10079
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    .line 10108
    const-string v0, ""

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->EMPTY_TEXT_CONTENT:Ljava/lang/String;

    .line 10122
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->sRecipientOpen:Z

    .line 10124
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->sSplitMoved:Z

    .line 10137
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mViewMaxWidth:I

    return-void

    .line 503
    :array_4c
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
        0xcdt 0xcct 0xcct 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 173
    const-string v0, "AndroidMail.Main"

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->PREFERENCES_FILE:Ljava/lang/String;

    .line 309
    const-string v0, "2.5"

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    .line 335
    iput-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    .line 337
    iput-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    .line 357
    new-instance v0, Lcom/android/email/ViewPatternMatching;

    invoke-direct {v0}, Lcom/android/email/ViewPatternMatching;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    .line 390
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->isSystemFont:Z

    .line 416
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    .line 418
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_ba

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mImageId:[I

    .line 486
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->m_nAttachmnetMargin:I

    .line 517
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->moreMessageDialog:Landroid/app/AlertDialog;

    .line 545
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    .line 547
    iput v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontSize:I

    .line 551
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    .line 553
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z

    .line 555
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    .line 557
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    .line 558
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    .line 559
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    .line 560
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    .line 561
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurFontColorCode:I

    .line 563
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    .line 564
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    .line 566
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    .line 571
    iput v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    .line 572
    iput-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentMessgeId:J

    .line 576
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    .line 579
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    .line 580
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnMoreInformation:Landroid/widget/ImageButton;

    .line 583
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    .line 584
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitleSection:Landroid/widget/LinearLayout;

    .line 590
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    .line 591
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 594
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/LinearLayout;

    .line 598
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    .line 602
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 603
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mbtnToTheTop:Landroid/widget/Button;

    .line 604
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->ATTACHMNET_DOWNLOAD_CANCEL_EAS:Z

    .line 606
    sget v0, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageOpenMode:I

    .line 610
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 691
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 694
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 696
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResetView:Z

    .line 6749
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$10;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$10;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    .line 9968
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    .line 9969
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime2:Ljava/lang/String;

    .line 9986
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    .line 10000
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 10046
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->dialogCancelled:Z

    .line 10060
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentOrientation:I

    .line 10083
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    .line 10086
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mForwarding:Z

    .line 10088
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mForwarded:Ljava/lang/Boolean;

    .line 10097
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    .line 10110
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNextPrevObserver:Landroid/database/ContentObserver;

    .line 10119
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsCachedSenderInfo:Z

    .line 10129
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->MaxListCountInToCc:I

    .line 10135
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToButtonWidth:I

    .line 10141
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutCreate_count:I

    .line 10153
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mClickedBubbleButton:Lcom/android/email/bubblebutton/BubbleButton;

    .line 10167
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->FromRetainedObject:Z

    .line 10176
    iput v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSortType:I

    .line 11501
    return-void

    .line 418
    :array_ba
    .array-data 0x4
        0x1et 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private WebView_loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12986
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurFontColorCode:I

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-nez v0, :cond_1b

    move-object v2, p2

    .line 12996
    :goto_9
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_51

    .line 12997
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13001
    :goto_1a
    return-void

    .line 12988
    :cond_1b
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<style type=text/css>\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 12989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*\n {color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurFontColorCode:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!important;}\n a {color:blue !important;}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12991
    const-string v1, "--></style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12992
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12993
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 12999
    :cond_51
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method static synthetic access$10000(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageWebViewHeight()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->checkBeforeViewAttachmentDownloadAll(Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachmentFromSaveAll(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast_checkBeforeViewAttachmentDownloadAll(Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelDownloadAllAttachment()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->EMPTY_TEXT_CONTENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDefaultQuickContactBadgeImage()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;)Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->WebView_loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ViewPatternMatching;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;)Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageViewFragmentBase;J)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIconById(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->rearrangeEmbeddedAttachment(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->arrangeAttachments(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->controlTabFocus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    return p1
.end method

.method static synthetic access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    return p1
.end method

.method static synthetic access$5308(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageViewFragmentBase;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/email/activity/MessageViewFragmentBase;[J)[J
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ControllerResultUiThreadWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;ZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;ZZ)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showContactStatusChangingLocale()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I

    return v0
.end method

.method static synthetic access$6400(Lcom/android/email/activity/MessageViewFragmentBase;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6600()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResetView:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResetView:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    return v0
.end method

.method static synthetic access$6900(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimatForLoadingProgress(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getWebViewZoom()I

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mWaitForLoadMessageId:J

    return-wide v0
.end method

.method static synthetic access$7402(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mWaitForLoadMessageId:J

    return-wide p1
.end method

.method static synthetic access$7500(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentThumbnail(J)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/email/activity/MessageViewFragmentBase;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBodyFromAttachmentCB(J)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    return-object v0
.end method

.method static synthetic access$8202(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->actionReplyForReadReceipt(J)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/email/activity/MessageViewFragmentBase;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->startMediaScan(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$9102(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentSave:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    return-object v0
.end method

.method static synthetic access$9400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 170
    sput-object p0, Lcom/android/email/activity/MessageViewFragmentBase;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$9502(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->dialogCancelled:Z

    return p1
.end method

.method static synthetic access$9600()I
    .registers 1

    .prologue
    .line 170
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return v0
.end method

.method static synthetic access$9602(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 170
    sput p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return p0
.end method

.method static synthetic access$9604()I
    .registers 1

    .prologue
    .line 170
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return v0
.end method

.method static synthetic access$9608()I
    .registers 2

    .prologue
    .line 170
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    return v0
.end method

.method static synthetic access$9700()I
    .registers 1

    .prologue
    .line 170
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    return v0
.end method

.method static synthetic access$9708()I
    .registers 2

    .prologue
    .line 170
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    return v0
.end method

.method static synthetic access$9802(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 170
    sput p0, Lcom/android/email/activity/MessageViewFragmentBase;->progress_pre:I

    return p0
.end method

.method static synthetic access$9900(Lcom/android/email/activity/MessageViewFragmentBase;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    return-object v0
.end method

.method private actionReplyForReadReceipt(J)V
    .registers 13
    .parameter

    .prologue
    .line 11370
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    .line 11371
    const-string v0, "MessageViewFragmentBase >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionReplyForReadReceipt() : error! messageId == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 11499
    :cond_1e
    :goto_1e
    return-void

    .line 11376
    :cond_1f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 11377
    if-nez v4, :cond_2f

    .line 11378
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "actionReplyForReadReceipt() : error! message is not exist!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 11382
    :cond_2f
    iget-wide v1, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 11384
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 11386
    new-instance v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 11392
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 11393
    iget-wide v7, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 11394
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 11395
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 11396
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 11397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 11399
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v0, :cond_5f

    .line 11400
    const-string v0, " "

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 11403
    :cond_5f
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 11407
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    .line 11408
    const-string v3, ""

    .line 11409
    const/4 v0, 0x0

    move v9, v0

    move-object v0, v3

    move v3, v9

    :goto_6f
    array-length v7, v5

    if-ge v3, v7, :cond_a4

    .line 11410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v7, v5, v3

    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11411
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_a1

    .line 11412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11409
    :cond_a1
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 11415
    :cond_a4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f080607

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 11417
    iget-object v3, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 11418
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 11419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0802e1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f080608

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11423
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 11424
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 11426
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 11427
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 11429
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 11430
    const-wide/16 v3, 0x0

    iput-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 11432
    const/4 v0, 0x1

    iput v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 11433
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 11434
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 11436
    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 11438
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    .line 11439
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    .line 11440
    const/4 v0, 0x1

    iput v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    .line 11444
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 11446
    if-nez v0, :cond_164

    .line 11447
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "actionReplyForReadReceipt() : Fatal error! controller.getInstance() returned null! It never be happened."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 11453
    :cond_164
    const/4 v3, 0x3

    invoke-virtual {v0, v6, v3}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 11457
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 11459
    const-string v4, "textContent"

    iget-object v5, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11460
    const-string v4, "htmlContent"

    iget-object v5, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11461
    const-string v4, "textReply"

    iget-object v5, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11462
    const-string v4, "htmlReply"

    iget-object v5, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11463
    const-string v4, "introText"

    iget-object v5, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11464
    const-string v4, "sourceMessageKey"

    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 11466
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v7, v8, v3}, Lcom/android/emailcommon/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 11470
    :try_start_1a2
    iget-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/android/email/Controller;->sendMessage(JJ)V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a9} :catch_1cf

    .line 11477
    :goto_1a9
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->showSendingNotification_Start(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 11479
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 11480
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    .line 11482
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 11484
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/email/activity/MessageCompose;->showSendingNotificationByViewActivity(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_1e

    .line 11471
    :catch_1cf
    move-exception v0

    .line 11472
    const-string v0, "MessageViewFragmentBase >>"

    const-string v3, "Exception occur."

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a9
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5297
    new-instance v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v8, v0, p1, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    .line 5302
    :try_start_8
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 5304
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v1

    if-nez v1, :cond_10b

    .line 5305
    const v1, 0x7f04009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_116

    move-result-object v0

    move-object v6, v0

    .line 5315
    :goto_1f
    const v0, 0x7f1000e2

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5316
    const v1, 0x7f1001d3

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5317
    const v2, 0x7f1001d2

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 5318
    const v3, 0x7f100023

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 5319
    const v4, 0x7f10004d

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 5320
    const v5, 0x7f1001d4

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 5324
    iget-boolean v7, v8, Lcom/android/email/AttachmentInfo;->mOverMax:Z

    if-eqz v7, :cond_5e

    .line 5325
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5328
    :cond_5e
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 5329
    const/4 v7, 0x1

    iput-boolean v7, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    .line 5333
    :cond_69
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v7

    if-nez v7, :cond_72

    .line 5334
    const/4 v7, 0x0

    iput-boolean v7, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    .line 5337
    :cond_72
    iput-object v3, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    .line 5338
    iput-object v2, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    .line 5339
    iput-object v4, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 5340
    iput-object v5, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    .line 5341
    iput-object v0, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->attachmentNameView:Landroid/widget/TextView;

    .line 5342
    iget-object v7, v8, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    .line 5343
    if-nez v7, :cond_8d

    .line 5344
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f080313

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5348
    :cond_8d
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    if-eqz v9, :cond_2e6

    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2e6

    .line 5349
    const-string v9, "MessageViewFragmentBase >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++ attachment mime type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 5352
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "image/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11f

    .line 5353
    const v9, 0x7f02028b

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5451
    :goto_c7
    iget-boolean v9, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    if-nez v9, :cond_2ee

    .line 5453
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5457
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5537
    :cond_d5
    :goto_d5
    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5544
    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5545
    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 5547
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5548
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5549
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5551
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, v8, Lcom/android/email/AttachmentInfo;->mSize:J

    long-to-float v3, v3

    invoke-static {v0, v3}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5553
    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5554
    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 5555
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5556
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5558
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5559
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5562
    :goto_10a
    return-void

    .line 5307
    :cond_10b
    const v1, 0x7f04009d

    const/4 v2, 0x0

    :try_start_10f
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_112} :catch_116

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_1f

    .line 5309
    :catch_116
    move-exception v0

    .line 5310
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "addAttachment : getActivity() returns Null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10a

    .line 5356
    :cond_11f
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "video/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_134

    .line 5357
    const v9, 0x7f020299

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c7

    .line 5360
    :cond_134
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "audio/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14a

    .line 5361
    const v9, 0x7f02028f

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5364
    :cond_14a
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/aac"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15c

    .line 5365
    const v9, 0x7f02028f

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5368
    :cond_15c
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/pdf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16e

    .line 5369
    const v9, 0x7f020290

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5372
    :cond_16e
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/x-vcard"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_180

    .line 5373
    const v9, 0x7f02027a

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5376
    :cond_180
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/x-vcalendar"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_192

    .line 5377
    const v9, 0x7f020270

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5380
    :cond_192
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/x-vtodo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a4

    .line 5381
    const v9, 0x7f020297

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5384
    :cond_1a4
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.ms-powerpoint"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1b8

    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c0

    .line 5387
    :cond_1b8
    const v9, 0x7f020291

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5390
    :cond_1c0
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/msword"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1d4

    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1dc

    .line 5393
    :cond_1d4
    const v9, 0x7f02027b

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5396
    :cond_1dc
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.ms-excel"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1f0

    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f8

    .line 5399
    :cond_1f0
    const v9, 0x7f02029b

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5400
    :cond_1f8
    if-eqz v7, :cond_2b2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2b2

    .line 5404
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".gul"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_214

    .line 5405
    const v9, 0x7f02028c

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5408
    :cond_214
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".htm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_22c

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".html"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_234

    .line 5410
    :cond_22c
    const v9, 0x7f020289

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5413
    :cond_234
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".eml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_248

    .line 5414
    const v9, 0x7f02027e

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5417
    :cond_248
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".rtf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25c

    .line 5418
    const v9, 0x7f020294

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5421
    :cond_25c
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".hwp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_270

    .line 5422
    const v9, 0x7f02028a

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5425
    :cond_270
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".vnt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_284

    .line 5426
    const v9, 0x7f02028d

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5429
    :cond_284
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/plain"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_296

    .line 5430
    const v9, 0x7f020298

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5433
    :cond_296
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".3ga"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2aa

    .line 5434
    const v9, 0x7f02028f

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5436
    :cond_2aa
    const v9, 0x7f020280

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5440
    :cond_2b2
    iget-object v9, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v10, "text/plain"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2c4

    .line 5441
    const v9, 0x7f020298

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5443
    :cond_2c4
    const v9, 0x7f020280

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5444
    const-string v9, "MessageViewFragmentBase >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+++ attachment mime type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    .line 5447
    :cond_2e6
    const v9, 0x7f020280

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c7

    .line 5459
    :cond_2ee
    iget-boolean v9, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-eqz v9, :cond_35d

    .line 5461
    iget v9, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_333

    .line 5462
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 5466
    const-string v10, "flags"

    iget v11, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v11, v11, -0x423

    iput v11, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5467
    iget-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v10, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 5469
    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Lcom/android/email/service/AttachmentDownloadService;->isAttachmentQueued(J)Z

    move-result v9

    if-eqz v9, :cond_32c

    .line 5470
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5471
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 5472
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5473
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_d5

    .line 5476
    :cond_32c
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_d5

    .line 5485
    :cond_333
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5486
    const/16 v9, 0x64

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5487
    iget-boolean v4, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    if-eqz v4, :cond_340

    .line 5490
    :cond_340
    iget-boolean v4, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    if-eqz v4, :cond_344

    .line 5494
    :cond_344
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5496
    if-eqz p3, :cond_356

    .line 5497
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5498
    if-eqz v4, :cond_d5

    .line 5499
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_d5

    .line 5502
    :cond_356
    if-eqz p2, :cond_d5

    .line 5503
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_d5

    .line 5519
    :cond_35d
    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Lcom/android/email/service/AttachmentDownloadService;->isAttachmentQueued(J)Z

    move-result v9

    if-eqz v9, :cond_391

    .line 5520
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5521
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 5523
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_386

    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->ATTACHMNET_DOWNLOAD_CANCEL_EAS:Z

    if-nez v4, :cond_386

    .line 5524
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5525
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5526
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_d5

    .line 5528
    :cond_386
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5529
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_d5

    .line 5533
    :cond_391
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_d5
.end method

.method private arrangeAttachments(I)V
    .registers 12
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2174
    if-lez p1, :cond_b1

    .line 2175
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c015d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2178
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2181
    if-ne p1, v4, :cond_5b

    .line 2182
    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2186
    :goto_20
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2187
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    if-le p1, v4, :cond_5f

    move v0, v1

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2188
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsPhone()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2189
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    if-le p1, v4, :cond_61

    move v0, v1

    :goto_38
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2192
    :cond_3b
    const-wide/16 v3, 0x0

    move-wide v8, v3

    move-wide v4, v8

    move v3, v1

    .line 2193
    :goto_40
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_63

    .line 2194
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2195
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    .line 2196
    iget-wide v6, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    add-long/2addr v4, v6

    .line 2193
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_40

    .line 2184
    :cond_5b
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_20

    :cond_5f
    move v0, v2

    .line 2187
    goto :goto_2a

    :cond_61
    move v0, v2

    .line 2189
    goto :goto_38

    .line 2200
    :cond_63
    sget v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_b2

    .line 2201
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2205
    :goto_6f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsHeaderInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f080319

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    long-to-float v3, v4

    invoke-static {v2, v3}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2209
    :cond_b1
    return-void

    .line 2203
    :cond_b2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6f
.end method

.method private cancelAllTasks()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1539
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->unregister()V

    .line 1543
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 1546
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 1547
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1548
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    .line 1549
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1550
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 1551
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1552
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    .line 1553
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1554
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    .line 1555
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1556
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    .line 1564
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1565
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    .line 1567
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1568
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    .line 1570
    const-string v0, "Email"

    const-string v1, "cancelAllTasks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    return-void
.end method

.method private captureScreen()Ljava/lang/String;
    .registers 21

    .prologue
    .line 7068
    .line 7079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v16

    .line 7081
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    .line 7082
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : getDir() fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7083
    const/4 v1, 0x0

    .line 7283
    :goto_36
    return-object v1

    .line 7085
    :cond_37
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v17

    .line 7087
    const/4 v2, 0x0

    .line 7088
    const/4 v1, 0x0

    .line 7089
    if-eqz v17, :cond_4b

    .line 7090
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    .line 7091
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    .line 7094
    :cond_4b
    const-string v3, "MessageViewFragmentBase >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "captureScreen : WebPage original size - Width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7096
    if-lez v2, :cond_71

    if-gtz v1, :cond_95

    .line 7097
    :cond_71
    const-string v3, "MessageViewFragmentBase >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "captureScreen : Width or Height is too small - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7099
    const/4 v1, 0x0

    goto :goto_36

    .line 7101
    :cond_95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v5

    .line 7106
    const/high16 v3, 0x3f80

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1a3

    .line 7107
    int-to-float v3, v1

    mul-float/2addr v3, v5

    float-to-int v4, v3

    .line 7108
    int-to-float v3, v2

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 7109
    const-string v6, "MessageViewFragmentBase >>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "captureScreen : WebPage scaled size - Width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7111
    const/16 v6, 0x6a4

    if-gt v3, v6, :cond_188

    .line 7112
    const-string v1, "MessageViewFragmentBase >>"

    const-string v6, "captureScreen : X1.5"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7115
    const/4 v1, 0x1

    move/from16 v19, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v19

    :goto_dd
    move v8, v3

    move v9, v4

    .line 7136
    :goto_df
    const-string v3, "MessageViewFragmentBase >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "captureScreen : Print Image Type = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7137
    const/4 v3, 0x1

    if-ne v9, v3, :cond_1c6

    .line 7138
    const/16 v3, 0x2fa

    if-le v2, v3, :cond_1be

    .line 7139
    const v2, 0x3fb718dc

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v10, v2

    .line 7150
    :goto_105
    const-string v2, "MessageViewFragmentBase >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureScreen : Max Page size - Width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7154
    :try_start_127
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v10, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_12c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_127 .. :try_end_12c} :catch_1d8

    move-result-object v18

    .line 7162
    const/4 v2, 0x0

    :goto_12e
    if-ge v2, v8, :cond_31b

    .line 7163
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7164
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 7165
    const/4 v3, -0x1

    if-ne v2, v3, :cond_242

    .line 7166
    const-string v12, "Sender : Samsung Electronics<sec@samsung.com>"

    .line 7167
    const-string v14, "Date : 2011-03-24 10:25 (GMT+09:00)"

    .line 7168
    const-string v15, "Title : final private float DEFAULT_SCALE_RATE = (float)1.5"

    .line 7172
    const/4 v3, 0x1

    .line 7178
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 7179
    const/high16 v2, -0x100

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7180
    const/high16 v2, 0x41a0

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7181
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7184
    const/4 v2, 0x0

    move v11, v2

    move v13, v3

    move-object v2, v12

    .line 7186
    :goto_15c
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v11, v3, :cond_1e3

    .line 7187
    const/4 v3, 0x1

    const v4, 0x443e8000

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 7188
    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int/lit8 v6, v13, 0x1e

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 7190
    add-int/lit8 v5, v13, 0x1

    .line 7191
    add-int v3, v11, v4

    .line 7192
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_327

    .line 7193
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v12, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    move v13, v5

    goto :goto_15c

    .line 7116
    :cond_188
    const/16 v3, 0x6a4

    if-gt v2, v3, :cond_199

    .line 7117
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "captureScreen : X1.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7120
    const/4 v3, 0x2

    move v4, v3

    move v3, v1

    move v1, v2

    goto/16 :goto_dd

    .line 7122
    :cond_199
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : Too big image"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7123
    const/4 v1, 0x0

    goto/16 :goto_36

    .line 7126
    :cond_1a3
    const/16 v3, 0x6a4

    if-gt v2, v3, :cond_1b4

    .line 7127
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "captureScreen : X1.0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7130
    const/4 v4, 0x2

    move v8, v1

    move v9, v4

    move v1, v2

    goto/16 :goto_df

    .line 7132
    :cond_1b4
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : Too big image"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7133
    const/4 v1, 0x0

    goto/16 :goto_36

    .line 7141
    :cond_1be
    const v2, 0x44884000

    mul-float/2addr v2, v5

    float-to-int v2, v2

    move v10, v2

    goto/16 :goto_105

    .line 7144
    :cond_1c6
    const/16 v3, 0x2fa

    if-le v2, v3, :cond_1d3

    .line 7145
    const v2, 0x3fb718dc

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move v10, v2

    goto/16 :goto_105

    .line 7147
    :cond_1d3
    const/16 v2, 0x442

    move v10, v2

    goto/16 :goto_105

    .line 7157
    :catch_1d8
    move-exception v1

    .line 7158
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "captureScreen : The page is too big to print"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7159
    const/4 v1, 0x0

    goto/16 :goto_36

    .line 7197
    :cond_1e3
    const/4 v2, 0x0

    move v11, v2

    move-object v2, v14

    .line 7199
    :goto_1e6
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v11, v3, :cond_211

    .line 7200
    const/4 v3, 0x1

    const v4, 0x443e8000

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 7201
    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int/lit8 v6, v13, 0x1e

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 7203
    add-int/lit8 v13, v13, 0x1

    .line 7204
    add-int v3, v11, v4

    .line 7205
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_324

    .line 7206
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v14, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    goto :goto_1e6

    .line 7211
    :cond_211
    const/4 v2, 0x0

    move v11, v2

    move-object v2, v15

    .line 7213
    :goto_214
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v11, v3, :cond_23f

    .line 7214
    const/4 v3, 0x1

    const v4, 0x443e8000

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 7215
    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int/lit8 v6, v13, 0x1e

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 7217
    add-int/lit8 v13, v13, 0x1

    .line 7218
    add-int v3, v11, v4

    .line 7219
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_321

    .line 7220
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v15, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v11, v3

    goto :goto_214

    .line 7224
    :cond_23f
    mul-int/lit8 v2, v13, 0x1e

    neg-int v2, v2

    .line 7228
    :cond_242
    const/4 v3, 0x0

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7230
    const/4 v3, 0x1

    if-ne v9, v3, :cond_2f6

    .line 7232
    const/high16 v3, 0x3fc0

    const/high16 v4, 0x3fc0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 7233
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 7241
    :goto_257
    const/4 v1, 0x0

    .line 7242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7244
    :try_start_275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 7246
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_28f
    .catch Ljava/io/FileNotFoundException; {:try_start_275 .. :try_end_28f} :catch_2fd

    .line 7252
    :goto_28f
    if-eqz v1, :cond_294

    .line 7253
    :try_start_291
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_294
    .catch Ljava/io/IOException; {:try_start_291 .. :try_end_294} :catch_306

    .line 7260
    :cond_294
    :goto_294
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7261
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2eb

    .line 7262
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_30b

    .line 7263
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7265
    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 7274
    :cond_2eb
    :goto_2eb
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 7277
    const-wide/16 v3, 0x1

    :try_start_2f0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f3
    .catch Ljava/lang/InterruptedException; {:try_start_2f0 .. :try_end_2f3} :catch_316

    .line 7162
    :goto_2f3
    add-int/2addr v2, v10

    goto/16 :goto_12e

    .line 7235
    :cond_2f6
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_257

    .line 7247
    :catch_2fd
    move-exception v4

    .line 7248
    const-string v4, "MessageViewFragmentBase >>"

    const-string v5, "captureScreen : FAILED to save bitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28f

    .line 7256
    :catch_306
    move-exception v1

    .line 7257
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_294

    .line 7269
    :cond_30b
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "captureScreen : image file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7270
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2eb

    .line 7278
    :catch_316
    move-exception v1

    .line 7279
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2f3

    .line 7283
    :cond_31b
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_36

    :cond_321
    move v11, v3

    goto/16 :goto_214

    :cond_324
    move v11, v3

    goto/16 :goto_1e6

    :cond_327
    move v11, v3

    move v13, v5

    goto/16 :goto_15c
.end method

.method private changeLoadMoreBtnText(Ljava/lang/String;)V
    .registers 5
    .parameter "btnTitle"

    .prologue
    .line 12794
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    .line 12795
    .local v0, displayImage:Landroid/widget/Button;
    if-eqz v0, :cond_10

    .line 12796
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "jebarlin >>> Changing the Button Text >>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12798
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12800
    :cond_10
    return-void
.end method

.method private checkBeforeViewAttachment(Lcom/android/email/AttachmentInfo;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2762
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2763
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2764
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    .line 2765
    if-eqz v2, :cond_4c

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v2, v1, :cond_4c

    .line 2766
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080451

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0805d7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragmentBase$2;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2823
    :goto_4b
    return v0

    .line 2788
    :cond_4c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 2793
    const v1, 0x7f08008e

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V

    goto :goto_4b

    .line 2800
    :cond_5f
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v2, :cond_6d

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/MessageViewForSeven;->canDownload(Lcom/android/email/AttachmentInfo;)Z

    move-result v2

    if-eqz v2, :cond_76

    :cond_6d
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    sget v4, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_83

    .line 2811
    :cond_76
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f080316

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4b

    .line 2817
    :cond_83
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isAvailableStorageSize(J)Z

    move-result v2

    if-nez v2, :cond_98

    .line 2818
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f080317

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4b

    :cond_98
    move v0, v1

    .line 2823
    goto :goto_4b
.end method

.method private checkBeforeViewAttachmentDownloadAll(Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    .registers 7
    .parameter "attachment"

    .prologue
    .line 2828
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 2830
    .local v1, retVal:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2831
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2832
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 2833
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v0, :cond_35

    .line 2834
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_DOWNLOAD_NOT_COMPLETE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 2842
    .end local v0           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2843
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_EXTERNALSRORAGE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 2847
    :cond_2a
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isAvailableStorageSize(J)Z

    move-result v2

    if-nez v2, :cond_34

    .line 2848
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_AVAILABLESTORAGESIZE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 2851
    :cond_34
    return-object v1

    .line 2835
    .restart local v0       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_35
    if-eqz v0, :cond_1c

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1c

    .line 2836
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_DOWNLOAD_NOT_COMPLETE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    goto :goto_1c
.end method

.method private cleanupDetachedViews()V
    .registers 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_c

    .line 1276
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->destroy()V

    .line 1277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 1279
    :cond_c
    return-void
.end method

.method private clearActionMode()V
    .registers 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_e

    .line 1662
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearSelection()V

    .line 1663
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearActionModes()V

    .line 1665
    :cond_e
    return-void
.end method

.method private controlSystemFontSize(Landroid/webkit/WebSettings;)V
    .registers 11
    .parameter "webSettings"

    .prologue
    const/16 v8, 0x2d

    const/16 v7, 0x14

    const/16 v6, 0xf

    const/16 v5, 0xd

    const/16 v4, 0xc

    .line 7974
    const/4 v0, 0x0

    .line 7976
    .local v0, mSystemFontsize:I
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 7979
    const-string v1, "MessageViewFragmentBase >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "font size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7981
    packed-switch v0, :pswitch_data_7a

    .line 8013
    :goto_37
    return-void

    .line 7983
    :pswitch_38
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7984
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7985
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7986
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7989
    :pswitch_45
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7990
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7991
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7992
    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7995
    :pswitch_52
    invoke-virtual {p1, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7996
    invoke-virtual {p1, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7997
    invoke-virtual {p1, v6}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7998
    invoke-virtual {p1, v6}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 8001
    :pswitch_5f
    invoke-virtual {p1, v7}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 8002
    invoke-virtual {p1, v7}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 8003
    invoke-virtual {p1, v7}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 8004
    invoke-virtual {p1, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 8007
    :pswitch_6c
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 8008
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 8009
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 8010
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7981
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_5f
        :pswitch_52
        :pswitch_45
        :pswitch_38
    .end packed-switch
.end method

.method private controlTabFocus()V
    .registers 7

    .prologue
    const v5, 0x7f100222

    const v4, 0x7f100220

    const v3, 0x7f10021e

    const v2, 0x7f100215

    const/4 v1, 0x1

    .line 1929
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_63

    move v0, v1

    .line 1930
    :goto_14
    if-ne v0, v1, :cond_ea

    .line 1931
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1932
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1934
    :cond_1f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_31

    .line 1935
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1936
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    .line 1937
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    .line 1940
    :cond_31
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_65

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 1941
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    if-eqz v0, :cond_54

    .line 1942
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1943
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 1944
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1946
    :cond_54
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_62

    .line 1947
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 1948
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1982
    :cond_62
    :goto_62
    return-void

    .line 1929
    :cond_63
    const/4 v0, 0x0

    goto :goto_14

    .line 1950
    :cond_65
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_97

    .line 1951
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    if-eqz v0, :cond_88

    .line 1952
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1953
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 1954
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1956
    :cond_88
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_62

    .line 1957
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 1958
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    goto :goto_62

    .line 1960
    :cond_97
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_e1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-ne v0, v1, :cond_e1

    .line 1961
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    if-eqz v0, :cond_bf

    .line 1962
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1963
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 1964
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 1965
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1967
    :cond_bf
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    if-eqz v0, :cond_d2

    .line 1968
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1969
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 1970
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    .line 1972
    :cond_d2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v0, :cond_62

    .line 1973
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 1974
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setNextFocusUpId(I)V

    goto :goto_62

    .line 1977
    :cond_e1
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "controlTabFocus : Can not reach here"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62

    .line 1980
    :cond_ea
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "controlTabFocus : Do nothing"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_62
.end method

.method public static createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 7673
    const/16 v0, 0x2f

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 7675
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7676
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    .line 7704
    :cond_14
    :goto_14
    return-object v0

    .line 7680
    :cond_15
    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 7683
    const/4 v0, 0x2

    move v2, v0

    :goto_1d
    const v0, 0x7fffffff

    if-ge v2, v0, :cond_a2

    .line 7685
    const/4 v0, -0x1

    if-eq v4, v0, :cond_65

    .line 7686
    const/4 v0, 0x0

    :try_start_26
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7687
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_37

    const-string v1, ""

    :cond_37
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_4d

    const-string v0, ""

    :cond_4d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 7693
    :goto_56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_5b} :catch_82

    .line 7700
    :goto_5b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 7683
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1d

    .line 7691
    :cond_65
    :try_start_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7f} :catch_82

    move-result-object v0

    move-object v1, v0

    goto :goto_56

    .line 7694
    :catch_82
    move-exception v0

    .line 7695
    const-string v1, "Email"

    const-string v5, "createUniqueFile || Exception"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7696
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7697
    new-instance v0, Ljava/io/File;

    const-string v1, "IllegalFormat-%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_5b

    .line 7704
    :cond_a2
    const/4 v0, 0x0

    goto/16 :goto_14
.end method

.method private doFinishLoadAttachment(J)V
    .registers 4
    .parameter "attachmentId"

    .prologue
    .line 3245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(JZ)V

    .line 3246
    return-void
.end method

.method private doFinishLoadAttachment(JZ)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3249
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v3

    .line 3250
    if-eqz v3, :cond_6c

    .line 3251
    iput-boolean v2, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    .line 3252
    iget-boolean v4, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    .line 3256
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v5, v3, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    .line 3257
    iget v0, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1e

    iget-boolean v0, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isSave:Z

    if-eqz v0, :cond_6d

    :cond_1e
    move v0, v2

    .line 3260
    :goto_1f
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewIndex["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] doFinishLoadAttachment - isSave : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", showView : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    iget v4, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6f

    .line 3264
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3268
    const-string v1, "flags"

    iget v2, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v2, v2, -0x463

    iput v2, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3269
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3310
    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    move v0, v1

    .line 3257
    goto :goto_1f

    .line 3272
    :cond_6f
    iget v4, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_cf

    .line 3273
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3277
    const-string v4, "flags"

    iget v6, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v6, v6, -0x463

    iput v6, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3278
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3280
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseDownloadCancel()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 3281
    iget-object v0, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3282
    iget-object v0, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3283
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->ATTACHMNET_DOWNLOAD_CANCEL_EAS:Z

    if-nez v0, :cond_af

    .line 3284
    iget-object v0, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3288
    :cond_af
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6c

    .line 3289
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 3291
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_6c

    .line 3292
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    goto :goto_6c

    .line 3297
    :cond_cf
    if-nez v0, :cond_d3

    if-eqz p3, :cond_d7

    .line 3298
    :cond_d3
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_6c

    .line 3300
    :cond_d7
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->onViewAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_6c
.end method

.method private findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .registers 5
    .parameter "attachmentId"

    .prologue
    .line 8841
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentView(J)Landroid/view/View;

    move-result-object v0

    .line 8842
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_d

    .line 8843
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 8845
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private findAttachmentView(J)Landroid/view/View;
    .registers 10
    .parameter "attachmentId"

    .prologue
    const/4 v4, 0x0

    .line 8826
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    if-nez v5, :cond_7

    move-object v3, v4

    .line 8837
    :cond_6
    :goto_6
    return-object v3

    .line 8830
    :cond_7
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_e
    if-ge v2, v1, :cond_25

    .line 8831
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8832
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 8833
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v5, v0, Lcom/android/email/AttachmentInfo;->mId:J

    cmp-long v5, v5, p1

    if-eqz v5, :cond_6

    .line 8830
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #view:Landroid/view/View;
    :cond_25
    move-object v3, v4

    .line 8837
    goto :goto_6
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .registers 13
    .parameter

    .prologue
    .line 6187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 6188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 6189
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 6191
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 6192
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x20010

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 6195
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 6196
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 6198
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 6199
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6200
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 6201
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreviewIcon(Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "attachment"

    .prologue
    .line 5214
    iget-wide v0, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIconById(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getPreviewIconById(J)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "mId"

    .prologue
    .line 5221
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    sget v4, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_WIDTH:I

    sget v5, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_HEIGHT:I

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentThumbnailUri(JJII)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 5226
    :goto_19
    return-object v0

    .line 5224
    :catch_1a
    move-exception v6

    .line 5225
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attachment preview failed with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private getStorageSize(Ljava/io/File;)J
    .registers 10
    .parameter "filePath"

    .prologue
    .line 2730
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2731
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    .line 2733
    .local v4, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 2737
    .local v0, availableBlocks:J
    mul-long v2, v0, v4

    .line 2738
    .local v2, availableSpace:J
    return-wide v2
.end method

.method private getWebViewZoom()I
    .registers 3

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1769
    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private hasInlineDataImage(JI)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f080531

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 12741
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 12742
    if-nez v2, :cond_10

    .line 12767
    :cond_f
    :goto_f
    return v0

    .line 12747
    :cond_10
    if-ne p3, v5, :cond_1d

    .line 12748
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V

    move v0, v1

    .line 12749
    goto :goto_f

    .line 12750
    :cond_1d
    if-eq p3, v1, :cond_f

    .line 12754
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 12756
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v3, :cond_37

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    const-string v3, "2.5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 12759
    :cond_37
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->parseHtmlATag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 12760
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V

    .line 12762
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 12763
    const-string v2, "isMimeLoaded"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12764
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 12765
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_f
.end method

.method private isAvailableStorageSize(J)Z
    .registers 13
    .parameter "attachsize"

    .prologue
    .line 2742
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 2743
    .local v6, externalPath:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2744
    .local v0, dataPath:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    .line 2746
    .local v3, downloadPath:Ljava/io/File;
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->getStorageSize(Ljava/io/File;)J

    move-result-wide v7

    .line 2747
    .local v7, externalSize:J
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getStorageSize(Ljava/io/File;)J

    move-result-wide v1

    .line 2748
    .local v1, dataSize:J
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getStorageSize(Ljava/io/File;)J

    move-result-wide v4

    .line 2750
    .local v4, downloadSize:J
    cmp-long v9, v7, p1

    if-lez v9, :cond_26

    cmp-long v9, v1, p1

    if-lez v9, :cond_26

    cmp-long v9, v4, p1

    if-lez v9, :cond_26

    .line 2751
    const/4 v9, 0x1

    .line 2756
    :goto_25
    return v9

    :cond_26
    const/4 v9, 0x0

    goto :goto_25
.end method

.method private static isVisible(Landroid/view/View;)Z
    .registers 3
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 1849
    if-nez p0, :cond_4

    .line 1852
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private makeAnimatForLoadingProgress(Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1856
    if-eqz p2, :cond_1a

    const/4 v0, 0x0

    .line 1858
    :goto_3
    if-eqz p2, :cond_1d

    .line 1859
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1864
    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 1865
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1867
    :cond_19
    return-void

    .line 1856
    :cond_1a
    const/16 v0, 0x8

    goto :goto_3

    .line 1861
    :cond_1d
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_10
.end method

.method private static makeVisible(Landroid/view/View;Z)V
    .registers 4
    .parameter "v"
    .parameter "visible"

    .prologue
    .line 1842
    if-eqz p1, :cond_d

    const/4 v0, 0x0

    .line 1843
    .local v0, visibility:I
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_c

    .line 1844
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1846
    :cond_c
    return-void

    .line 1842
    .end local v0           #visibility:I
    :cond_d
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .registers 13
    .parameter "attachmentInfo"

    .prologue
    const/16 v10, 0x64

    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2965
    iget-wide v7, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v7, v8}, Lcom/android/email/service/AttachmentDownloadService;->cancelQueuedAttachment(J)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 2973
    iget-object v7, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2974
    iget-object v7, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2975
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v7

    if-eqz v7, :cond_27

    iget-boolean v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->ATTACHMNET_DOWNLOAD_CANCEL_EAS:Z

    if-nez v7, :cond_27

    .line 2976
    iget-object v7, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2978
    :cond_27
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 2979
    .local v1, bar:Landroid/widget/ProgressBar;
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    .line 2981
    .local v2, curProgress:I
    iget-boolean v7, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-eqz v7, :cond_68

    .line 2982
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2983
    invoke-virtual {v1, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2993
    :goto_37
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2995
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v7, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 2997
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v0, :cond_65

    .line 2998
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_81

    .line 2999
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, -0x21

    and-int/lit8 v6, v6, -0x3

    and-int/lit16 v4, v6, -0x401

    .line 3003
    .local v4, updateFlag:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3004
    .local v3, cv:Landroid/content/ContentValues;
    const-string v6, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3005
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3016
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #updateFlag:I
    :cond_65
    :goto_65
    iput-boolean v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isCancel:Z

    .line 3072
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #bar:Landroid/widget/ProgressBar;
    .end local v2           #curProgress:I
    :goto_67
    return v5

    .line 2985
    .restart local v1       #bar:Landroid/widget/ProgressBar;
    .restart local v2       #curProgress:I
    :cond_68
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseDownloadCancel()Z

    move-result v7

    if-eqz v7, :cond_7d

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v7

    if-nez v7, :cond_7d

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    if-eqz v7, :cond_7d

    .line 2987
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    invoke-virtual {v7, v5}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 2989
    :cond_7d
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_37

    .line 3006
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_81
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_65

    .line 3007
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v6, v6, -0x401

    and-int/lit8 v4, v6, -0x3

    .line 3010
    .restart local v4       #updateFlag:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3011
    .restart local v3       #cv:Landroid/content/ContentValues;
    const-string v6, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3012
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_65

    .line 3018
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #bar:Landroid/widget/ProgressBar;
    .end local v2           #curProgress:I
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #updateFlag:I
    :cond_a1
    if-eqz p1, :cond_145

    iget-boolean v7, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isCancel:Z

    if-nez v7, :cond_145

    .line 3019
    iget-object v7, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3020
    iget-object v7, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3021
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v7

    if-eqz v7, :cond_c0

    iget-boolean v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->ATTACHMNET_DOWNLOAD_CANCEL_EAS:Z

    if-nez v7, :cond_c0

    .line 3022
    iget-object v7, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3024
    :cond_c0
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 3025
    .restart local v1       #bar:Landroid/widget/ProgressBar;
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    .line 3027
    .restart local v2       #curProgress:I
    iget-boolean v7, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-eqz v7, :cond_121

    .line 3028
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3029
    invoke-virtual {v1, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3035
    :goto_d0
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3037
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v7, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 3039
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v0, :cond_fe

    .line 3040
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_125

    .line 3041
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, -0x21

    and-int/lit8 v6, v6, -0x3

    and-int/lit16 v4, v6, -0x401

    .line 3045
    .restart local v4       #updateFlag:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3046
    .restart local v3       #cv:Landroid/content/ContentValues;
    const-string v6, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3047
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3058
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #updateFlag:I
    :cond_fe
    :goto_fe
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_11d

    .line 3059
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v5}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 3061
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v6

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-lt v6, v7, :cond_11d

    .line 3062
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3064
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .line 3068
    :cond_11d
    iput-boolean v5, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isCancel:Z

    goto/16 :goto_67

    .line 3031
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_121
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_d0

    .line 3048
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_125
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_fe

    .line 3049
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v6, v6, -0x401

    and-int/lit8 v4, v6, -0x3

    .line 3052
    .restart local v4       #updateFlag:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3053
    .restart local v3       #cv:Landroid/content/ContentValues;
    const-string v6, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3054
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_fe

    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #bar:Landroid/widget/ProgressBar;
    .end local v2           #curProgress:I
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #updateFlag:I
    :cond_145
    move v5, v6

    .line 3072
    goto/16 :goto_67
.end method

.method private onCancelDownloadAllAttachment()V
    .registers 5

    .prologue
    .line 3077
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$5;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$5;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3236
    return-void
.end method

.method private onClickSender()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2274
    .line 2275
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_12

    .line 2276
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 2314
    :goto_11
    return v0

    .line 2299
    :cond_12
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/email/activity/ContactPreviewPopup;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2300
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2301
    const-string v3, "index"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2302
    const-string v0, "type"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2304
    const-string v0, "from"

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->senderInfoForPhotoImage:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2306
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_43

    .line 2307
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v3, 0x7011214

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_41
    move v0, v1

    .line 2312
    goto :goto_11

    .line 2310
    :cond_43
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_41
.end method

.method private onDownloadAttachmentAll()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3522
    const-string v0, "Email"

    const-string v2, "onDownloadAttachmentAll"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3525
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3526
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 3527
    if-eqz v0, :cond_53

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v4, :cond_53

    .line 3528
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080451

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$6;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3634
    :cond_52
    :goto_52
    return-void

    .line 3548
    :cond_53
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 3550
    sput-boolean v4, Lcom/android/email/activity/MessageViewFragmentBase;->mIsAttachAll:Z

    .line 3551
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    .line 3552
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    .line 3553
    sput-boolean v4, Lcom/android/email/activity/MessageViewFragmentBase;->mIsLaunchAttach:Z

    .line 3557
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    if-eqz v0, :cond_6c

    .line 3558
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 3561
    :cond_6c
    sput-boolean v1, Lcom/android/email/activity/MessageViewFragmentBase;->progress_rotated:Z

    .line 3563
    const-string v0, "MessageViewFragmentBase >>"

    const-string v2, "btl : Premium account onDownloadAttachmentAll called!"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    .line 3565
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    new-array v0, v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3566
    iput-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentSave:Z

    .line 3567
    :goto_85
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttatchmentCount:I

    if-ge v1, v0, :cond_a5

    .line 3568
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    .line 3570
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 3572
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentListForZ7:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aput-object v0, v2, v1

    .line 3567
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_85

    .line 3574
    :cond_a5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->initAttachmentDownloadForZ7()V

    goto :goto_52

    .line 3579
    :cond_a9
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_f3

    move v2, v1

    .line 3580
    :goto_b0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_52

    .line 3581
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 3582
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    .line 3580
    :cond_cd
    :goto_cd
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b0

    .line 3583
    :cond_d1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_db

    .line 3584
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_cd

    .line 3586
    :cond_db
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 3588
    iget-boolean v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    if-nez v3, :cond_cd

    .line 3589
    iput-boolean v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 3590
    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    .line 3591
    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    goto :goto_cd

    .line 3596
    :cond_f3
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .line 3598
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3599
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f080241

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 3600
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 3601
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 3602
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f080043

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$7;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragmentBase$7;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3611
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$8;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3629
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->CheckActiveNetwork()Z

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    .line 3631
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadAttachmentAllTask:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;

    new-array v2, v4, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_52
.end method

.method private onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V
    .registers 4
    .parameter "attachment"
    .parameter "isSave"

    .prologue
    .line 2873
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;ZZ)V

    .line 2874
    return-void
.end method

.method private onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;ZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 2879
    iget-boolean v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-nez v1, :cond_19

    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->CheckActiveNetwork()Z

    move-result v1

    if-nez v1, :cond_19

    .line 2880
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080110

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 2961
    :cond_18
    :goto_18
    return-void

    .line 2886
    :cond_19
    iget-boolean v1, p1, Lcom/android/email/AttachmentInfo;->mOverMax:Z

    if-ne v1, v5, :cond_28

    .line 2887
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080316

    invoke-static {v0, v1, v5}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_18

    .line 2894
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->checkBeforeViewAttachment(Lcom/android/email/AttachmentInfo;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2897
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseDownloadCancel()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 2898
    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->getQueueSize()I

    move-result v1

    if-nez v1, :cond_91

    .line 2904
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2906
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$4;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$4;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2943
    :goto_49
    iget-wide v1, p1, Lcom/android/email/AttachmentInfo;->mId:J

    sput-wide v1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentId:J

    .line 2944
    const-string v1, "SMIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment ID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 2948
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2949
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2951
    if-nez p2, :cond_c7

    move v7, v0

    .line 2952
    :goto_72
    if-nez p3, :cond_ca

    .line 2955
    :goto_74
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    if-eqz v1, :cond_83

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 2956
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 2959
    :cond_83
    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isCancel:Z

    .line 2960
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/AttachmentInfo;->mId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->loadAttachment(JJJI)V

    goto :goto_18

    .line 2927
    :cond_91
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2928
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_49

    .line 2931
    :cond_9c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v1

    if-eqz v1, :cond_bc

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->ATTACHMNET_DOWNLOAD_CANCEL_EAS:Z

    if-nez v1, :cond_bc

    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->getQueueSize()I

    move-result v1

    if-nez v1, :cond_bc

    .line 2933
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2934
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2935
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_49

    .line 2937
    :cond_bc
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2938
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_49

    .line 2951
    :cond_c7
    const/16 v7, 0x20

    goto :goto_72

    .line 2952
    :cond_ca
    or-int/lit16 v7, v7, 0x400

    goto :goto_74
.end method

.method private onLoadMessageForView()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4252
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "onLoadMessageForView : entered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_d9

    .line 4256
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 4259
    :goto_17
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v1

    .line 4260
    const-string v2, "MessageViewFragmentBase >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bIsPop3Acc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v2

    if-nez v2, :cond_43

    .line 4263
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "onLoadMessageForView : POPIMAP is not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4295
    :cond_42
    :goto_42
    return-void

    .line 4264
    :cond_43
    if-eqz v0, :cond_b8

    if-eqz v1, :cond_b8

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_b8

    .line 4266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><body><table width=\"100%\" height=\"100%\"><tr><td align=\"center\" valign=\"center\"><font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0805d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font></td></tr></table></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4271
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_97

    .line 4272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://onLoadMessageForView/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4276
    :goto_87
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 4277
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 4274
    :cond_97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_87

    .line 4279
    :cond_ad
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 4285
    :cond_b8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_42

    .line 4286
    const/4 v0, 0x1

    if-ne v1, v0, :cond_c2

    .line 4287
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->removeAllAttachments()V

    .line 4289
    :cond_c2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    .line 4290
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 4291
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 4292
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "onLoadMessageForView : call controller.loadMessageForView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    :cond_d9
    move-object v0, v5

    goto/16 :goto_17
.end method

.method private onMoreMessage()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4243
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_1a

    .line 4244
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMore(J)V

    .line 4245
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 4246
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 4247
    const-string v0, "SMIME"

    const-string v1, "SMIMEUtilsCallback::onMoreMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    :cond_1a
    return-void
.end method

.method private onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 15
    .parameter

    .prologue
    .line 2383
    if-nez p1, :cond_3

    .line 2543
    :cond_2
    :goto_2
    return-void

    .line 2387
    :cond_3
    const/4 v1, 0x0

    .line 2388
    const/4 v0, 0x0

    .line 2390
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    .line 2392
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseDownloadCancel()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2393
    iget-object v2, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2394
    iget-object v2, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2395
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->ATTACHMNET_DOWNLOAD_CANCEL_EAS:Z

    if-nez v2, :cond_30

    .line 2396
    iget-object v2, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2400
    :cond_30
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_8a

    .line 2405
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08008e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 2408
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 2409
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 2413
    :cond_49
    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 2414
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2417
    const-string v1, "flags"

    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, -0x23

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2418
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2420
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 2421
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 2423
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2424
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    goto/16 :goto_2

    .line 2432
    :cond_8a
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v3

    .line 2435
    :try_start_92
    const-string v4, "application/octet-stream"

    .line 2437
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 2439
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 2440
    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2441
    if-nez v2, :cond_ae

    .line 2442
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f080313

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2444
    :cond_ae
    invoke-static {v5, v2}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 2446
    if-nez v5, :cond_13e

    .line 2447
    const-string v3, "Email"

    const-string v4, "Utility.createUniqueFile - return null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .line 2451
    throw v2
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_df} :catch_df
    .catch Ljava/lang/NullPointerException; {:try_start_92 .. :try_end_df} :catch_22c

    .line 2497
    :catch_df
    move-exception v2

    .line 2498
    :goto_e0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08008e

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 2500
    if-eqz v0, :cond_f0

    .line 2502
    :try_start_ed
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_220

    .line 2506
    :cond_f0
    :goto_f0
    if-eqz v1, :cond_f5

    .line 2508
    :try_start_f2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_226

    .line 2523
    :cond_f5
    :goto_f5
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_fd

    .line 2524
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 2528
    :cond_fd
    iget v0, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 2529
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2531
    const-string v1, "flags"

    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, -0x23

    iput v2, v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2532
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2534
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 2535
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 2537
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2538
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    goto/16 :goto_2

    .line 2454
    :cond_13e
    :try_start_13e
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2456
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_151} :catch_df
    .catch Ljava/lang/NullPointerException; {:try_start_13e .. :try_end_151} :catch_22c

    move-result-object v10

    .line 2457
    :try_start_152
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_157} :catch_22f
    .catch Ljava/lang/NullPointerException; {:try_start_152 .. :try_end_157} :catch_22c

    .line 2460
    :try_start_157
    invoke-static {v10, v9}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v6, v0

    .line 2461
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 2462
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 2463
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 2465
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2466
    if-eqz v0, :cond_1cf

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 2467
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v8, "/sdcard/Download"

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2478
    :goto_192
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 2486
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_f5

    .line 2487
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    if-eqz v8, :cond_1c0

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_21d

    :cond_1c0
    :goto_1c0
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    goto/16 :goto_f5

    .line 2497
    :catch_1ca
    move-exception v0

    move-object v0, v9

    move-object v1, v10

    goto/16 :goto_e0

    .line 2471
    :cond_1cf
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_207} :catch_1ca
    .catch Ljava/lang/NullPointerException; {:try_start_157 .. :try_end_207} :catch_208

    goto :goto_192

    .line 2512
    :catch_208
    move-exception v0

    .line 2513
    :goto_209
    const-string v0, "Email"

    const-string v1, "onCopyImage : NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    if-eqz v9, :cond_f5

    .line 2516
    :try_start_212
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_215
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_215} :catch_217

    goto/16 :goto_f5

    .line 2518
    :catch_217
    move-exception v0

    .line 2519
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f5

    .line 2487
    :cond_21d
    :try_start_21d
    iget-object v4, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_21d .. :try_end_21f} :catch_1ca
    .catch Ljava/lang/NullPointerException; {:try_start_21d .. :try_end_21f} :catch_208

    goto :goto_1c0

    .line 2503
    :catch_220
    move-exception v0

    .line 2504
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f0

    .line 2509
    :catch_226
    move-exception v0

    .line 2510
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f5

    .line 2512
    :catch_22c
    move-exception v1

    move-object v9, v0

    goto :goto_209

    .line 2497
    :catch_22f
    move-exception v1

    move-object v1, v10

    goto/16 :goto_e0
.end method

.method private onSaveAttachmentFromSaveAll(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    .registers 14
    .parameter

    .prologue
    .line 2546
    const/4 v1, 0x0

    .line 2547
    const/4 v0, 0x0

    .line 2549
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 2551
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v3

    if-nez v3, :cond_45

    .line 2556
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08008e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 2559
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 2560
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 2564
    :cond_23
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_43

    .line 2565
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 2567
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_43

    .line 2568
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .line 2572
    :cond_43
    const/4 v0, 0x0

    .line 2673
    :goto_44
    return v0

    .line 2575
    :cond_45
    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v3

    .line 2578
    :try_start_4d
    const-string v4, "application/octet-stream"

    .line 2580
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 2582
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 2583
    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 2584
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2586
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_71} :catch_18b
    .catch Ljava/lang/NullPointerException; {:try_start_4d .. :try_end_71} :catch_173

    move-result-object v10

    .line 2587
    :try_start_72
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_77} :catch_18d
    .catch Ljava/lang/NullPointerException; {:try_start_72 .. :try_end_77} :catch_173

    .line 2590
    :try_start_77
    invoke-static {v10, v9}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v6, v0

    .line 2591
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 2592
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 2593
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 2595
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2596
    if-eqz v0, :cond_110

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 2597
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v8, "/sdcard/Download/"

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2610
    :goto_b2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_e0

    .line 2619
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    if-eqz v8, :cond_d8

    iget-object v8, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_16a

    :cond_d8
    :goto_d8
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_e0} :catch_14a
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_e0} :catch_189

    .line 2655
    :cond_e0
    :goto_e0
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e8

    .line 2656
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bSaveAllDownload:Z

    .line 2660
    :cond_e8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_10d

    .line 2661
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 2663
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_10d

    .line 2664
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2667
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startMediaScan(Landroid/content/Context;)V

    .line 2669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .line 2673
    :cond_10d
    const/4 v0, 0x1

    goto/16 :goto_44

    .line 2601
    :cond_110
    :try_start_110
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_148} :catch_14a
    .catch Ljava/lang/NullPointerException; {:try_start_110 .. :try_end_148} :catch_189

    goto/16 :goto_b2

    .line 2629
    :catch_14a
    move-exception v0

    move-object v0, v9

    move-object v1, v10

    .line 2630
    :goto_14d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f08008e

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 2632
    if-eqz v0, :cond_15d

    .line 2634
    :try_start_15a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15d} :catch_16e

    .line 2638
    :cond_15d
    :goto_15d
    if-eqz v1, :cond_e0

    .line 2640
    :try_start_15f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_162} :catch_164

    goto/16 :goto_e0

    .line 2641
    :catch_164
    move-exception v0

    .line 2642
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e0

    .line 2619
    :cond_16a
    :try_start_16a
    iget-object v4, p1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16c} :catch_14a
    .catch Ljava/lang/NullPointerException; {:try_start_16a .. :try_end_16c} :catch_189

    goto/16 :goto_d8

    .line 2635
    :catch_16e
    move-exception v0

    .line 2636
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15d

    .line 2644
    :catch_173
    move-exception v1

    move-object v9, v0

    .line 2645
    :goto_175
    const-string v0, "Email"

    const-string v1, "onCopyImage : NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    if-eqz v9, :cond_e0

    .line 2648
    :try_start_17e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_183

    goto/16 :goto_e0

    .line 2650
    :catch_183
    move-exception v0

    .line 2651
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e0

    .line 2644
    :catch_189
    move-exception v0

    goto :goto_175

    .line 2629
    :catch_18b
    move-exception v2

    goto :goto_14d

    :catch_18d
    move-exception v1

    move-object v1, v10

    goto :goto_14d
.end method

.method private onShowDetails(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3665
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-eq v0, p1, :cond_80

    .line 3669
    iput-boolean p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    .line 3674
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-eqz v0, :cond_81

    .line 3684
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnMoreInformation:Landroid/widget/ImageButton;

    const v1, 0x7f0202e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 3687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    .line 3688
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    .line 3689
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3691
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-eqz v0, :cond_4d

    .line 3692
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3693
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3695
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3697
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    .line 3698
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3699
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3702
    :cond_4d
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_73

    .line 3703
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3704
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3706
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3708
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    .line 3709
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3710
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3713
    :cond_73
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-nez v0, :cond_80

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_80

    .line 3714
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3798
    :cond_80
    :goto_80
    return-void

    .line 3772
    :cond_81
    :try_start_81
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnMoreInformation:Landroid/widget/ImageButton;

    const v1, 0x7f0202e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 3776
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-eqz v0, :cond_a9

    .line 3777
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3778
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    .line 3779
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3780
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3783
    :cond_a9
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_c9

    .line 3784
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3785
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    .line 3786
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3787
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3790
    :cond_c9
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-nez v0, :cond_80

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-eqz v0, :cond_80

    .line 3791
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_d8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_81 .. :try_end_d8} :catch_d9

    goto :goto_80

    .line 3793
    :catch_d9
    move-exception v0

    .line 3794
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "ArrayIndexOutOfBoundsException when set visible bubble button"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80
.end method

.method private onViewAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2692
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2693
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_29

    .line 2694
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearSelection()V

    .line 2695
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearActionModes()V

    .line 2697
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 2699
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v2, v2}, Lcom/android/email/activity/MessageWebView;->scrollTo(II)V

    .line 2700
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->clearView()V

    .line 2704
    :cond_29
    if-eqz p1, :cond_57

    .line 2705
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseDownloadCancel()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2706
    iget-object v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2707
    iget-object v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2708
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->ATTACHMNET_DOWNLOAD_CANCEL_EAS:Z

    if-nez v0, :cond_4c

    .line 2709
    iget-object v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2717
    :cond_4c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getAttachmentIntentToFile(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 2719
    :try_start_54
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startActivity(Landroid/content/Intent;)V
    :try_end_57
    .catch Landroid/content/ActivityNotFoundException; {:try_start_54 .. :try_end_57} :catch_58

    .line 2725
    :cond_57
    :goto_57
    return-void

    .line 2720
    :catch_58
    move-exception v0

    .line 2721
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800be

    invoke-static {v0, v1, v3}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_57
.end method

.method private parseHtmlATag(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    .line 12773
    const-string v1, "<IMG+.*?>"

    .line 12774
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jebarlin >>> Entering parseHtmlATag Length :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12775
    const/4 v0, 0x0

    .line 12777
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 12778
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 12779
    :cond_27
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 12780
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "jebarlin >>> Body Contains IMG tag"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12781
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 12782
    if-eqz v2, :cond_27

    .line 12783
    const-string v3, "SRC=\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 12784
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "jebarlin >>> Body Contains IMG tag but not SRC"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12785
    const/4 v0, 0x1

    .line 12790
    :cond_4a
    return v0
.end method

.method private rearrangeEmbeddedAttachment(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 12879
    if-nez p2, :cond_4

    .line 12917
    :cond_3
    :goto_3
    return-void

    .line 12881
    :cond_4
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 12884
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 12885
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 12887
    if-nez p1, :cond_1c

    .line 12888
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "bodyHtml is null, it will be not used in body"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12889
    iput-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    goto :goto_3

    .line 12894
    :cond_1c
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 12895
    const-string v2, "^<"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ">$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12898
    :cond_3c
    const-string v2, ""

    .line 12899
    if-eqz v1, :cond_af

    .line 12900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "((cid(?-i):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")|("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12906
    :goto_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\s+(?i)src=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12907
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 12908
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_c3

    .line 12909
    const-string v1, "MessageViewFragmentBase >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid embedded attachment:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12910
    iput-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 12911
    const/4 v0, 0x0

    iput v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    .line 12912
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    goto/16 :goto_3

    .line 12902
    :cond_af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid(?-i):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_63

    .line 12914
    :cond_c3
    const/4 v0, 0x1

    iput v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    .line 12915
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    goto/16 :goto_3
.end method

.method private reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6599
    .line 6600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->bSaveToCalendarIsText:Z

    .line 6608
    const/4 v0, 0x0

    .line 6613
    if-nez p2, :cond_167

    .line 6614
    const-string v1, "abcdef"

    const-string v2, "plain text"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6618
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "<html> <body> <div style=\"word-break:keep-all;\">"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6619
    if-eqz p1, :cond_20

    .line 6620
    invoke-static {p1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6621
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6623
    :cond_20
    const-string v2, "</div></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6624
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6645
    :goto_29
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSaveToCalendarHtmlText:Ljava/lang/String;

    .line 6646
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    .line 6648
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v2, :cond_19d

    .line 6649
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 6651
    const/4 v2, 0x0

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 6652
    array-length v2, v4

    new-array v2, v2, [Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 6653
    const/4 v3, 0x0

    .line 6657
    array-length v5, v4

    const/4 v2, 0x0

    move v11, v2

    move-object v2, v1

    move v1, v3

    move v3, v11

    :goto_4a
    if-ge v3, v5, :cond_18c

    aget-object v6, v4, v3

    .line 6658
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    if-eqz v7, :cond_163

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v7, :cond_163

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v7, :cond_163

    .line 6662
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v7, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-direct {v2, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6663
    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\\E\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6665
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, " src=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6666
    iget-object v8, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6668
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " contentIdRe :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6669
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " srcContentUri :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6671
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6676
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 6677
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\s+(?i)background=\"cid(?-i):\\Q"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\E\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6679
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 6680
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " background=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6681
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6686
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v7, v2, v1

    .line 6688
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v2, v2, v1

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 6689
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v2, v2, v1

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 6690
    add-int/lit8 v1, v1, 0x1

    .line 6692
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6695
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v7, "width=\"0\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6696
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v7, "height=\"0\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6698
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HANATHEONE mBodyImageInfo number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6657
    :cond_163
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4a

    .line 6631
    :cond_167
    const-string v0, "(?i)<meta name=\"viewport\"[^>]+>"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6632
    const-string v0, "(?i)contenteditable=[\"]*true[\"]*"

    const-string v1, "contenteditable=\"false\""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6636
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6638
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 6640
    if-nez p2, :cond_18a

    const/4 v0, 0x1

    .line 6642
    :goto_185
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->bSaveToCalendarIsText:Z

    goto/16 :goto_29

    .line 6640
    :cond_18a
    const/4 v0, 0x0

    goto :goto_185

    .line 6703
    :cond_18c
    if-nez p3, :cond_194

    .line 6704
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageWebView;->setPreserveZoom(Z)V

    .line 6716
    :cond_194
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasNoBody:Z

    .line 6717
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    .line 6718
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyHtml:Ljava/lang/String;

    .line 6719
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyText:Ljava/lang/String;

    .line 6741
    :goto_19c
    return-object v2

    :cond_19d
    move-object v2, v1

    goto :goto_19c
.end method

.method private reloadUiFromBodyFromAttachmentCB(J)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 6208
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    .line 6209
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6211
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v2, :cond_116

    .line 6212
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 6214
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    if-eqz v2, :cond_ee

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_ee

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v2, :cond_ee

    .line 6219
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6220
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\\E\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6222
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, " src=\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6223
    iget-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v6, 0x22

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6225
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 6231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\s+(?i)background=\"cid(?-i):\\Q"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\\E\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6234
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 6235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " background=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6237
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6239
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    .line 6243
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v2, "width=\"0\""

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6244
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    const-string v2, "height=\"0\""

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6246
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 6257
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    if-eqz v2, :cond_ee

    .line 6258
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J

    array-length v6, v4

    move v2, v1

    :goto_ca
    if-ge v2, v6, :cond_ee

    aget-wide v7, v4, v2

    .line 6261
    cmp-long v7, v7, p1

    if-nez v7, :cond_1a9

    .line 6262
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v4, v2

    if-ge v1, v4, :cond_ee

    aget-object v2, v2, v1

    .line 6264
    if-nez v2, :cond_117

    .line 6265
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    .line 6267
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 6268
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 6269
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    .line 6366
    :cond_ee
    :goto_ee
    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    .line 6368
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseHistoryUrl()Z

    move-result v0

    if-nez v0, :cond_1ad

    .line 6369
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6377
    :cond_116
    :goto_116
    return-void

    .line 6272
    :cond_117
    iget-object v4, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_130

    iget-object v4, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    if-nez v4, :cond_130

    .line 6275
    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 6276
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    goto :goto_ee

    .line 6279
    :cond_130
    const-string v2, "Email"

    const-string v4, "This routine can not be run."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6280
    const-string v2, "Email"

    const-string v4, "If this log appeared, something wrong on the BodyImageInfo inst.!\n"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6291
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v2, v2

    .line 6292
    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 6295
    :goto_145
    if-ge v1, v2, :cond_184

    .line 6296
    new-instance v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v6, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v6, v4, v1

    .line 6298
    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v6, v6, v1

    if-nez v6, :cond_15d

    .line 6299
    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v7, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v7, v6, v1

    .line 6301
    :cond_15d
    aget-object v6, v4, v1

    sget-object v7, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 6302
    aget-object v6, v4, v1

    sget-object v7, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 6304
    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v6, v6, v1

    iput-object v5, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 6305
    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v6, v6, v1

    iput-object v5, v6, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 6306
    sget-object v6, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aput-object v5, v6, v1

    .line 6295
    add-int/lit8 v1, v1, 0x1

    goto :goto_145

    .line 6308
    :cond_184
    sput-object v5, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 6311
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    invoke-direct {v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    aput-object v1, v4, v2

    .line 6312
    aget-object v1, v4, v2

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    .line 6313
    aget-object v1, v4, v2

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 6315
    sput-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 6316
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I

    .line 6317
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I

    goto/16 :goto_ee

    .line 6258
    :cond_1a9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_ca

    .line 6372
    :cond_1ad
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "email://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_116
.end method

.method private removeAllAttachments()V
    .registers 5

    .prologue
    .line 1646
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_28

    .line 1647
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1648
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1649
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    const/4 v0, 0x0

    .line 1647
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1651
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_1d
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1652
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1654
    .end local v1           #i:I
    :cond_28
    return-void
.end method

.method private setAttachmentCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    .line 1833
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    .line 1834
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    if-lez v0, :cond_b

    .line 1835
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 1839
    :goto_a
    return-void

    .line 1837
    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->clearTabFlags(I)V

    goto :goto_a
.end method

.method private setMessageWebViewHeight()V
    .registers 9

    .prologue
    const/16 v4, 0xbe

    const/high16 v7, 0x3f80

    .line 8718
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-nez v0, :cond_9

    .line 8823
    :cond_8
    :goto_8
    return-void

    .line 8721
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getContentHeight()I

    move-result v1

    .line 8722
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v2

    .line 8724
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v0

    if-nez v0, :cond_189

    .line 8725
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getWebViewZoom()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x42c8

    div-float/2addr v0, v3

    .line 8726
    if-lez v1, :cond_156

    cmpl-float v0, v2, v0

    if-nez v0, :cond_156

    .line 8727
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getEmailWebViewContentHeight()I

    move-result v0

    if-nez v0, :cond_10c

    .line 8728
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageWebView;->setInitScale(F)V

    .line 8730
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 8733
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8735
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewIndex["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] setMessageWebViewHeight() - prev ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] new ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8738
    if-eqz v3, :cond_8b

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v4, :cond_8b

    .line 8739
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8740
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8743
    :cond_8b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setEmailWebViewContentHeight(I)V

    .line 8745
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_d2

    .line 8746
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ViewIndex["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] onPageFinished() - scale ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] nHeight ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] contentHeight ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 8818
    :cond_d2
    :goto_d2
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_8

    .line 8819
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewIndex["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] setMessageWebViewHeight() - contentHeight ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] scale ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 8752
    :cond_10c
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_d2

    .line 8753
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewIndex["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] onPageFinished() - scale ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] contentHeight ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] getEmailWebViewContentHeight()["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->getEmailWebViewContentHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d2

    .line 8762
    :cond_156
    if-nez v1, :cond_183

    .line 8763
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_17c

    .line 8764
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewIndex["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] contentHeight is 0 -> recheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 8767
    :cond_17c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->setMessageWebView()V

    goto/16 :goto_d2

    .line 8774
    :cond_183
    cmpl-float v0, v2, v7

    if-lez v0, :cond_d2

    goto/16 :goto_d2

    .line 8777
    :cond_189
    if-lez v1, :cond_237

    .line 8778
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageWebView;->setInitScale(F)V

    .line 8780
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 8783
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8785
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewIndex["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] setMessageWebViewHeight() - prev ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] new ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8788
    if-eqz v3, :cond_1e5

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v4, :cond_1e5

    .line 8789
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8790
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8793
    :cond_1e5
    cmpl-float v0, v2, v7

    if-eqz v0, :cond_264

    .line 8794
    int-to-float v0, v1

    mul-float/2addr v0, v7

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 8796
    :goto_1ed
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageWebView;->setEmailWebViewContentHeight(I)V

    .line 8798
    sget-boolean v1, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v1, :cond_234

    .line 8799
    const-string v1, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ViewIndex["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] onPageFinished() - scale ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] nHeight ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] contentHeight ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    :cond_234
    move v1, v0

    .line 8803
    goto/16 :goto_d2

    :cond_237
    if-nez v1, :cond_d2

    .line 8804
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_25d

    .line 8805
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ViewIndex["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] contentHeight is 0 -> recheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 8808
    :cond_25d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->setMessageWebView()V

    goto/16 :goto_d2

    :cond_264
    move v0, v1

    goto :goto_1ed
.end method

.method private setResponseOptions(I)V
    .registers 4
    .parameter

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const v1, 0x7f1001ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2034
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2035
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2036
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 2037
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 2038
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 2039
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 2040
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteLink:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2041
    return-void
.end method

.method private setTabTextStyle(I)V
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f1001ee

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2055
    .line 2058
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 2059
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 2061
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2062
    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2063
    const v2, 0x7f0b003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2065
    packed-switch p1, :pswitch_data_11a

    .line 2170
    :cond_29
    :goto_29
    return-void

    .line 2067
    :pswitch_2a
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2069
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2071
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2073
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2076
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2078
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2082
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    if-eq v0, p1, :cond_51

    .line 2083
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->setToMessageTab(Z)V

    .line 2086
    :cond_51
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v4}, Lcom/android/email/winset/MessageScrollView;->setIsMessageTab(Z)V

    .line 2088
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2089
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2090
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto :goto_29

    .line 2094
    :pswitch_66
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2096
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2099
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2101
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2103
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2105
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2108
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->setIsMessageTab(Z)V

    .line 2110
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2111
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2112
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    goto :goto_29

    .line 2116
    :pswitch_99
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2118
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2121
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2123
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2126
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2128
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2130
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->setIsMessageTab(Z)V

    .line 2132
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2133
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2134
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2137
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-ne v0, v6, :cond_f5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v6

    :goto_d3
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setResponseOptions(I)V

    .line 2138
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_fa

    .line 2139
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2146
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2147
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2148
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_29

    .line 2137
    :cond_f5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v3

    goto :goto_d3

    .line 2150
    :cond_fa
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_29

    .line 2152
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingDeleteEvent:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2159
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResponseOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2160
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2161
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_29

    .line 2065
    nop

    :pswitch_data_11a
    .packed-switch 0x65
        :pswitch_2a
        :pswitch_99
        :pswitch_66
    .end packed-switch
.end method

.method private showContactStatusChangingLocale()V
    .registers 4

    .prologue
    .line 12957
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0805db

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 12958
    return-void
.end method

.method private showDefaultQuickContactBadgeImage()V
    .registers 3

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1774
    return-void
.end method

.method private showRecipientList(IIII)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 8344
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 8347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    .line 8348
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f0802ef

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8349
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v4, 0x7f0802f0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8350
    if-nez p4, :cond_2c

    .line 8351
    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-direct {v4, p0, v0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8352
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    move v0, v1

    .line 8355
    :goto_2d
    if-ge v0, p1, :cond_58

    .line 8357
    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8359
    sget-object v5, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8355
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 8363
    :cond_58
    if-nez p4, :cond_66

    if-lez p2, :cond_66

    .line 8364
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-direct {v0, p0, v3, v3, v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8365
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_66
    move v0, v1

    .line 8368
    :goto_67
    if-ge v0, p2, :cond_92

    .line 8370
    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v7}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8372
    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8368
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 8374
    :cond_92
    const-string v3, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test3   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getPersonal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8376
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0400b6

    sget-object v4, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 8379
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8380
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 8382
    invoke-virtual {v1, v0, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$14;

    invoke-direct {v3, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$14;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 8406
    return-void
.end method

.method private showToast(II)V
    .registers 4
    .parameter "resID"
    .parameter "duration"

    .prologue
    .line 10249
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_12

    .line 10250
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    .line 10257
    :goto_c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10258
    return-void

    .line 10252
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 10253
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 10254
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_c
.end method

.method private showToast_checkBeforeViewAttachmentDownloadAll(Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2855
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_EXTERNALSRORAGE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-ne p1, v0, :cond_c

    .line 2856
    const v0, 0x7f08008e

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V

    .line 2870
    :cond_b
    :goto_b
    return-void

    .line 2857
    :cond_c
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_AVAILABLESTORAGESIZE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-ne p1, v0, :cond_1d

    .line 2858
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f080317

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 2860
    :cond_1d
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->ERROR_DOWNLOAD_NOT_COMPLETE:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-ne p1, v0, :cond_b

    .line 2862
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080451

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$3;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_b
.end method

.method private startMediaScan(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 2677
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    if-eqz v2, :cond_34

    .line 2678
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_35

    .line 2679
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2681
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2689
    .end local v1           #intent:Landroid/content/Intent;
    :cond_34
    :goto_34
    return-void

    .line 2683
    :cond_35
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 2684
    .local v0, files:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2686
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_34
.end method

.method private updateAttachmentThumbnail(J)V
    .registers 9
    .parameter "attachmentId"

    .prologue
    .line 5231
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_7
    if-ge v2, v1, :cond_26

    .line 5232
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 5234
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v4, v0, Lcom/android/email/AttachmentInfo;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_27

    .line 5235
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 5236
    .local v3, previewIcon:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_26

    .line 5237
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5242
    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #previewIcon:Landroid/graphics/Bitmap;
    :cond_26
    return-void

    .line 5231
    .restart local v0       #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method


# virtual methods
.method public ControlBgColor(IZ)V
    .registers 4
    .parameter "color"
    .parameter "reload"

    .prologue
    const/4 v0, 0x0

    .line 6920
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZZZ)V

    .line 6921
    return-void
.end method

.method public ControlBgColor(IZZZ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0203d5

    const/4 v3, 0x1

    const/high16 v2, -0x100

    .line 6924
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-nez v0, :cond_b

    .line 7022
    :cond_a
    :goto_a
    return-void

    .line 6927
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 6928
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getFontColor()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurFontColorCode:I

    .line 6930
    if-nez p3, :cond_5d

    .line 6931
    const-string v0, "Email"

    const-string v1, "Change background color!!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6932
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    .line 6934
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 6935
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/winset/MessageScrollView;->setBackgroundColor(I)V

    .line 6936
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6937
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6938
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6941
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6942
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setTabTextStyle(I)V

    .line 6948
    :cond_5d
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-ne v0, v3, :cond_11b

    .line 6949
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6950
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitleSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6958
    :goto_6d
    :try_start_6d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function() { document.getElementsByTagName(\'body\')[0].getElementsByTagName(\'div\')[0].style.color = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurFontColorCode:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->loadUrl(Ljava/lang/String;)V

    .line 6962
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:(function() { document.getElementsByTagName(\'body\')[0].style.color = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurFontColorCode:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/NullPointerException; {:try_start_6d .. :try_end_c1} :catch_127

    .line 6974
    :goto_c1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_dc

    .line 6975
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    .line 6979
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6980
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_dc

    .line 6981
    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    .line 6985
    :cond_dc
    if-eqz p2, :cond_e8

    .line 6996
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->refreshDrawableState()V

    .line 6998
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->fastInvalidate()V

    .line 7002
    :cond_e8
    if-eqz p4, :cond_a

    .line 7003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->WebView_loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 6953
    :cond_11b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 6954
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitleSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_6d

    .line 6966
    :catch_127
    move-exception v0

    .line 6967
    const-string v0, "Email"

    const-string v1, "mMessageWebView.loadUrl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1
.end method

.method public ControlPrint()V
    .registers 4

    .prologue
    .line 7029
    const-string v0, "Email"

    const-string v1, "ControlPrint started!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7031
    const-string v0, "com.sec.android.app.mobileprint.PRINT"

    .line 7034
    const-string v0, "email_printing_image.png"

    .line 7037
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->captureScreen()Ljava/lang/String;

    move-result-object v0

    .line 7039
    if-nez v0, :cond_2a

    .line 7040
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0801be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 7042
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "requestPrint : captureScreen() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7065
    :goto_29
    return-void

    .line 7045
    :cond_2a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7046
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4a

    .line 7048
    :cond_42
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "requestPrint : The captured image does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 7052
    :cond_4a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7054
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7056
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "Email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7058
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "email_printing_image.png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7061
    :try_start_68
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startActivity(Landroid/content/Intent;)V
    :try_end_6b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_29

    .line 7062
    :catch_6c
    move-exception v0

    .line 7063
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "requestPrint : There is no Activity prints"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method protected IsEAS()Z
    .registers 3

    .prologue
    .line 4000
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->isExchangeAccount(J)Z

    move-result v0

    return v0
.end method

.method protected final addTabFlags(I)V
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f10021e

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1778
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    .line 1780
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_69

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_69

    .line 1781
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1782
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1783
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1784
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    .line 1785
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    .line 1786
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    .line 1787
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f10021f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    .line 1788
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100223

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    .line 1789
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100220

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    .line 1791
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1792
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1793
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1825
    :cond_62
    :goto_62
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    .line 1826
    return-void

    .line 1795
    :cond_69
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a4

    .line 1796
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1797
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1798
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1799
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    .line 1801
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    .line 1802
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100221

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    .line 1803
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    .line 1806
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1808
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_62

    .line 1810
    :cond_a4
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_62

    .line 1811
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1812
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1813
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1814
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    .line 1815
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    .line 1817
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    .line 1818
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v1, 0x7f100222

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    .line 1820
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1821
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_62
.end method

.method public changeBgColorDialog()Landroid/app/Dialog;
    .registers 8

    .prologue
    .line 8410
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 8411
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    .line 8413
    const-string v0, "Email"

    const-string v3, "changeBgColorDialog enter!!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8415
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8423
    const/4 v0, 0x0

    :goto_17
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2f

    .line 8424
    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mImageId:[I

    aget v6, v6, v0

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;I)V

    .line 8425
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8423
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 8429
    :cond_2f
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f04006f

    invoke-direct {v0, p0, v4, v5, v3}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorAdapter:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    .line 8431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8432
    const v1, 0x7f0801e7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 8436
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v1

    .line 8437
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getFontColor()I

    .line 8443
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorAdapter:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$15;

    invoke-direct {v4, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$15;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/Preferences;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8463
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8464
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    .line 8465
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    .line 8467
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public changeFavoriteStatus(J)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6127
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "changeFavoriteStatus() Message favorite"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6128
    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_4b

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v2, :cond_4b

    .line 6129
    const-string v2, "eas"

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 6130
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 6131
    packed-switch v2, :pswitch_data_96

    move v0, v2

    .line 6143
    :goto_27
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6144
    const v2, 0x7f0200e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6145
    const v3, 0x7f0200e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6147
    const v4, 0x7f0200e1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6149
    packed-switch v0, :pswitch_data_a0

    .line 6162
    :goto_47
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 6174
    :cond_4b
    :goto_4b
    return-void

    .line 6133
    :pswitch_4c
    const/4 v0, 0x2

    .line 6134
    goto :goto_27

    :pswitch_4e
    move v0, v1

    .line 6139
    goto :goto_27

    .line 6151
    :pswitch_50
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_47

    .line 6154
    :pswitch_56
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_47

    .line 6157
    :pswitch_5c
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_47

    .line 6165
    :cond_62
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-nez v2, :cond_90

    .line 6167
    :goto_68
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6168
    const v2, 0x7f0200dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 6169
    const v2, 0x7f0200de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 6170
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_92

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_88
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6171
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    goto :goto_4b

    :cond_90
    move v1, v0

    .line 6165
    goto :goto_68

    .line 6170
    :cond_92
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_88

    .line 6131
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_27
        :pswitch_4e
    .end packed-switch

    .line 6149
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_56
        :pswitch_5c
    .end packed-switch
.end method

.method public checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z
    .registers 9
    .parameter

    .prologue
    .line 3956
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    .line 3957
    const/4 v0, 0x0

    .line 3958
    if-eqz v1, :cond_17

    if-eqz p1, :cond_17

    .line 3959
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 3960
    :cond_17
    if-eqz v0, :cond_76

    .line 3961
    iget v1, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    int-to-long v1, v1

    .line 3962
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " before checkDPM_Attachments DPM.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attachment.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    if-eqz v0, :cond_50

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_76

    iget-wide v3, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_76

    .line 3965
    :cond_50
    const-string v0, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDPM_Attachments  DPM.size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attachment.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    const/4 v0, 0x0

    .line 3970
    :goto_75
    return v0

    :cond_76
    const/4 v0, 0x1

    goto :goto_75
.end method

.method public checkITPolicy_AllowPOPIMAP()Z
    .registers 2

    .prologue
    .line 3974
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3977
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3978
    const/4 v0, 0x0

    .line 3981
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public cleanAnimation()V
    .registers 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mViewAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    .line 1283
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mViewAnimation:Landroid/view/animation/Animation;

    .line 1286
    :cond_c
    return-void
.end method

.method public clearContent()V
    .registers 1

    .prologue
    .line 1607
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 1608
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1609
    return-void
.end method

.method public clearIsMessageLoadedForTest()V
    .registers 2

    .prologue
    .line 9767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    .line 9768
    return-void
.end method

.method protected final clearTabFlags(I)V
    .registers 4
    .parameter "tabFlags"

    .prologue
    .line 1829
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    .line 1830
    return-void
.end method

.method public closePrevNextCursor()V
    .registers 3

    .prologue
    .line 10426
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1e

    .line 10427
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "mPrevNextCuror is not null, close cursor and observer"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10429
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNextPrevObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_16

    .line 10430
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNextPrevObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10432
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPrevNextCursor:Landroid/database/Cursor;

    .line 10435
    :cond_1e
    return-void
.end method

.method public extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 6834
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 6835
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 6838
    if-nez p1, :cond_11

    .line 6839
    const-string v0, ""

    .line 6914
    :goto_10
    return-object v0

    .line 6841
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 6849
    array-length v10, v9

    move v5, v1

    move v2, v1

    move v4, v1

    move v0, v1

    move v6, v1

    :goto_1b
    if-ge v5, v10, :cond_8d

    .line 6850
    aget-char v11, v9, v5

    .line 6852
    const/16 v12, 0x3c

    if-ne v11, v12, :cond_24

    move v0, v3

    .line 6856
    :cond_24
    if-nez v0, :cond_2d

    if-nez v4, :cond_2d

    if-nez v2, :cond_2d

    .line 6857
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6860
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    .line 6861
    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6863
    const/16 v12, 0x9

    if-le v6, v12, :cond_39

    .line 6864
    invoke-virtual {v8, v1, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 6867
    :cond_39
    if-nez v4, :cond_4c

    .line 6868
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "<script"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_4c

    move v4, v3

    .line 6873
    :cond_4c
    if-eqz v4, :cond_5f

    .line 6874
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "</script>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_5f

    move v4, v1

    .line 6879
    :cond_5f
    if-nez v2, :cond_72

    .line 6881
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "<style"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_72

    move v2, v3

    .line 6889
    :cond_72
    if-eqz v2, :cond_85

    .line 6891
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "</style>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_85

    move v2, v1

    .line 6899
    :cond_85
    const/16 v12, 0x3e

    if-ne v11, v12, :cond_8a

    move v0, v1

    .line 6849
    :cond_8a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 6907
    :cond_8d
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6909
    const-string v1, "&nbsp;"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6910
    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6911
    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6912
    const-string v1, "&#43;"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10
.end method

.method public finishAttachmentDownloadForZ7(J)V
    .registers 5
    .parameter

    .prologue
    .line 10354
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    if-nez v0, :cond_c

    .line 10355
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "finishAttachmentDownloadForZ7 : mHandler is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10362
    :goto_b
    return-void

    .line 10358
    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 10359
    const v1, 0x186a2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 10360
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10361
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b
.end method

.method public getAccountId()J
    .registers 3

    .prologue
    .line 1600
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method public getAlwaysDecryptOrVerifyMails()Z
    .registers 6

    .prologue
    .line 9779
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->PREFERENCES_FILE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 9781
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "isCheckSMIME"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 9782
    .local v0, always:Z
    return v0
.end method

.method public getContactProviderStatus()I
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 12961
    const/4 v7, 0x0

    .line 12962
    .local v7, providerStatus:I
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

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

    .line 12966
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2d

    .line 12968
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 12969
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2e

    move-result v7

    .line 12972
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 12975
    :cond_2d
    return v7

    .line 12972
    :catchall_2e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected final getController()Lcom/android/email/Controller;
    .registers 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method protected final getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method public getMessageMsgId()J
    .registers 3

    .prologue
    .line 10238
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide v0
.end method

.method public getMessageWebView()Lcom/android/email/activity/MessageWebView;
    .registers 2

    .prologue
    .line 12982
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    return-object v0
.end method

.method public getRecipientlength()I
    .registers 5

    .prologue
    .line 11036
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v3, :cond_6

    .line 11037
    const/4 v1, 0x0

    .line 11050
    :cond_5
    :goto_5
    return v1

    .line 11040
    :cond_6
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 11041
    .local v2, to:[Lcom/android/emailcommon/mail/Address;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 11043
    .local v0, cc:[Lcom/android/emailcommon/mail/Address;
    const/4 v1, 0x0

    .line 11044
    .local v1, length:I
    if-eqz v2, :cond_1b

    .line 11045
    array-length v3, v2

    add-int/2addr v1, v3

    .line 11047
    :cond_1b
    if-eqz v0, :cond_5

    .line 11048
    array-length v3, v0

    add-int/2addr v1, v3

    goto :goto_5
.end method

.method public getViewPatternMatching()Lcom/android/email/ViewPatternMatching;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;

    return-object v0
.end method

.method public initAttachmentDownloadForZ7()V
    .registers 5

    .prologue
    const v3, 0x186a0

    .line 10324
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    if-nez v0, :cond_f

    .line 10325
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "initAttachmentDownloadForZ7 : mHandler is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10334
    :goto_e
    return-void

    .line 10328
    :cond_f
    const-string v0, "MessageViewFragmentBase >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btl : initAttachmentDownloadForZ7 mAttachmentCnt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10329
    sget v0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt:I

    if-lez v0, :cond_35

    .line 10330
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e

    .line 10332
    :cond_35
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e
.end method

.method protected initializeArgCache()V
    .registers 1

    .prologue
    .line 1159
    return-void
.end method

.method public isMessageLoadedForTest()Z
    .registers 2

    .prologue
    .line 9763
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    return v0
.end method

.method protected final isMessageOpen()Z
    .registers 2

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract isMessageSpecified()Z
.end method

.method public isQ1Model()Z
    .registers 2

    .prologue
    .line 7963
    const-string v0, "Q1_EUR_OPEN"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Q1_CHN_OPEN"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "Q1_HKTW_OPEN"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7966
    :cond_18
    const/4 v0, 0x1

    .line 7968
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public loadContentFromServer(Z)V
    .registers 9
    .parameter "loadAttachment"

    .prologue
    .line 11005
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-nez v0, :cond_11

    .line 11033
    :cond_10
    :goto_10
    return-void

    .line 11008
    :cond_11
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasNoBody:Z

    if-eqz v0, :cond_73

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_73

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->isBodyDownloadInProgress()Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v6, 0x1

    .line 11011
    .local v6, dontShow:Z
    :goto_30
    if-nez v6, :cond_44

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_44

    .line 11013
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v1, "email://"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11017
    :cond_44
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_67

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 11018
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyHtml:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 11019
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyText:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 11020
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->setBusyIndicator()V

    .line 11030
    :cond_67
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_10

    .line 11031
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->readMoreAction()V

    goto :goto_10

    .line 11008
    .end local v6           #dontShow:Z
    :cond_73
    const/4 v6, 0x0

    goto :goto_30
.end method

.method protected final loadMessageIfResumed()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1612
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    if-nez v0, :cond_9

    .line 1613
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    .line 1628
    :goto_8
    return-void

    .line 1616
    :cond_9
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    .line 1617
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 1618
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1621
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    if-nez v0, :cond_17

    .line 1622
    sput-object p0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1623
    :cond_17
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 1626
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_8
.end method

.method public makeAnimateMessageViewMove(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    if-eqz v0, :cond_35

    .line 1902
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_35

    .line 1903
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransactionAnimation()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1904
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cleanAnimation()V

    .line 1905
    if-eqz p1, :cond_36

    .line 1906
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    const v1, 0x10a0002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mViewAnimation:Landroid/view/animation/Animation;

    .line 1912
    :goto_22
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mViewAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1914
    :cond_29
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1915
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1918
    :cond_35
    return-void

    .line 1909
    :cond_36
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    const v1, 0x10a003a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mViewAnimation:Landroid/view/animation/Animation;

    goto :goto_22
.end method

.method public makeAnimateMessageViewOpen(Z)V
    .registers 6
    .parameter

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    if-eqz v0, :cond_35

    .line 1871
    if-eqz p1, :cond_36

    const/4 v0, 0x0

    .line 1872
    :goto_7
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransactionAnimation()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1873
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_30

    .line 1874
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cleanAnimation()V

    .line 1875
    if-eqz p1, :cond_39

    .line 1878
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mViewAnimation:Landroid/view/animation/Animation;

    .line 1880
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mViewAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1888
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1896
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1898
    :cond_35
    return-void

    .line 1871
    :cond_36
    const/16 v0, 0x8

    goto :goto_7

    .line 1882
    :cond_39
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1883
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2b

    .line 1891
    :cond_4e
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_30

    .line 1892
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_30
.end method

.method public messageChanged()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x100

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v11, 0x8

    const/4 v8, 0x0

    .line 11249
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 11250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageView: messageChanged to id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 11252
    :cond_23
    sput-boolean v8, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageList:Z

    .line 11258
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 11259
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->closePrevNextCursor()V

    .line 11261
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_3a

    .line 11262
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->EMPTY_TEXT_CONTENT:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11267
    :cond_3a
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->removeAllAttachments()V

    .line 11269
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11282
    iput-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    .line 11283
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const v1, 0x7f10022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    .line 11290
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11294
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsPhone()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 11295
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11298
    :cond_61
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 11309
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_109

    .line 11314
    :try_start_6e
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 11315
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v9, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_90
    .catchall {:try_start_6e .. :try_end_90} :catchall_122
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_90} :catch_12c

    move-result-object v1

    .line 11321
    :try_start_91
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 11322
    const-string v0, "messageType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    and-long/2addr v2, v12

    cmp-long v0, v2, v12

    if-nez v0, :cond_10a

    move v0, v7

    :goto_a7
    sput-boolean v0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsSms:Z

    .line 11324
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "************** SMS is True ********"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/email/activity/MessageViewFragmentBase;->mIsSms:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_91 .. :try_end_c3} :catchall_12a
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_c3} :catch_11b

    .line 11336
    :goto_c3
    if-eqz v1, :cond_c8

    .line 11337
    :goto_c5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11345
    :cond_c8
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 11349
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->cancelPreviousAndExecuteParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 11354
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J

    const/16 v3, 0x61

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/EmailUtility;->isMailboxType(Landroid/content/Context;JI)Z

    move-result v0

    .line 11356
    if-eqz v0, :cond_109

    .line 11357
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const v1, 0x7f10030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 11358
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const v1, 0x7f100309

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 11360
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const v1, 0x7f100118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11362
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11367
    :cond_109
    return-void

    :cond_10a
    move v0, v8

    .line 11322
    goto :goto_a7

    .line 11329
    :cond_10c
    :try_start_10c
    const-string v0, "Email"

    const-string v2, "Exception on getting mMessageId"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11330
    const v0, 0x7f0800c6

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showToast(II)V
    :try_end_11a
    .catchall {:try_start_10c .. :try_end_11a} :catchall_12a
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_11a} :catch_11b

    goto :goto_c3

    .line 11333
    :catch_11b
    move-exception v0

    .line 11334
    :goto_11c
    :try_start_11c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_12a

    .line 11336
    if-eqz v1, :cond_c8

    goto :goto_c5

    :catchall_122
    move-exception v0

    move-object v1, v6

    :goto_124
    if-eqz v1, :cond_129

    .line 11337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11336
    :cond_129
    throw v0

    :catchall_12a
    move-exception v0

    goto :goto_124

    .line 11333
    :catch_12c
    move-exception v0

    move-object v1, v6

    goto :goto_11c

    :cond_12f
    move-object v1, v6

    goto :goto_c3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 1167
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1168
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1169
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1171
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->initializeArgCache()V

    .line 1173
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    .line 1174
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1177
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    if-nez v0, :cond_1f

    .line 1178
    sput-object p0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1179
    :cond_1f
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    .line 1182
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1185
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->installFragment(Landroid/app/Fragment;)V

    .line 1190
    :goto_31
    return-void

    .line 1187
    :cond_32
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1188
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_31
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 10373
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v1, :cond_c

    .line 10374
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/activity/MessageViewForSeven;->onActivityResult(IILandroid/content/Intent;)V

    .line 10376
    :cond_c
    packed-switch p1, :pswitch_data_34

    .line 10389
    :cond_f
    :goto_f
    return-void

    .line 10378
    :pswitch_10
    const/4 v1, -0x1

    if-ne p2, v1, :cond_f

    .line 10379
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "[HJP] onActivityResult Call!!"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 10380
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 10382
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    .line 10383
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getFontColor()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurFontColorCode:I

    .line 10385
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZZZ)V

    goto :goto_f

    .line 10376
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3804
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3932
    :cond_a
    :goto_a
    return-void

    .line 3807
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_12c

    goto :goto_a

    .line 3885
    :sswitch_13
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    goto :goto_a

    .line 3809
    :sswitch_1d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    if-eqz v0, :cond_24

    .line 3810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    .line 3812
    :cond_24
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    .line 3813
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_a

    .line 3820
    :sswitch_33
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 3821
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    goto :goto_a

    .line 3823
    :cond_43
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 3824
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_a

    .line 3828
    :cond_4d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 3829
    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    .line 3830
    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isSave:Z

    .line 3831
    iput-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    .line 3832
    invoke-direct {p0, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    goto :goto_a

    .line 3837
    :sswitch_5d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/AttachmentInfo;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 3838
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    goto :goto_a

    .line 3840
    :cond_6d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_77

    .line 3841
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_a

    .line 3845
    :cond_77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 3846
    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    .line 3847
    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isSave:Z

    .line 3848
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    .line 3849
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    goto :goto_a

    .line 3854
    :sswitch_87
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadZ7AttForSave:Z

    .line 3855
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDownloadAttachmentAll()V

    goto/16 :goto_a

    .line 3858
    :sswitch_8e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 3859
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3860
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsPhone()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 3861
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3863
    :cond_a6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    const v1, 0x7f0202e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_a

    .line 3866
    :cond_b0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3867
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsPhone()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 3868
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3870
    :cond_c0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    const v1, 0x7f0202e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_a

    .line 3889
    :sswitch_ca
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 3891
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 3892
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto/16 :goto_a

    .line 3894
    :cond_da
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3895
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto/16 :goto_a

    .line 3901
    :sswitch_e5
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 3902
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto/16 :goto_a

    .line 3907
    :sswitch_ef
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 3908
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto/16 :goto_a

    .line 3913
    :sswitch_f9
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    if-nez v0, :cond_103

    move v0, v1

    :goto_fe
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onShowDetails(Z)V

    goto/16 :goto_a

    :cond_103
    move v0, v2

    goto :goto_fe

    .line 3917
    :sswitch_105
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 3918
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 3919
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    goto/16 :goto_a

    .line 3921
    :cond_116
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadMessageForView()V

    goto/16 :goto_a

    .line 3923
    :cond_11b
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    goto/16 :goto_a

    .line 3927
    :sswitch_120
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v2, v2}, Lcom/android/email/winset/MessageScrollView;->smoothScrollTo(II)V

    .line 3928
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v2}, Lcom/android/email/winset/MessageScrollView;->ShowToTheTopButton(Z)V

    goto/16 :goto_a

    .line 3807
    :sswitch_data_12c
    .sparse-switch
        0x7f100023 -> :sswitch_13
        0x7f1000e2 -> :sswitch_33
        0x7f1001d2 -> :sswitch_33
        0x7f1001d4 -> :sswitch_5d
        0x7f1001fe -> :sswitch_f9
        0x7f1001ff -> :sswitch_1d
        0x7f10021e -> :sswitch_ca
        0x7f10021f -> :sswitch_ca
        0x7f100220 -> :sswitch_e5
        0x7f100221 -> :sswitch_e5
        0x7f100222 -> :sswitch_ef
        0x7f100223 -> :sswitch_ef
        0x7f100227 -> :sswitch_105
        0x7f10022d -> :sswitch_8e
        0x7f10022f -> :sswitch_87
        0x7f100232 -> :sswitch_120
    .end sparse-switch
.end method

.method public onClickAddressButton(Ljava/lang/String;Lcom/android/email/bubblebutton/BubbleButton;I)V
    .registers 4
    .parameter "addressStr"
    .parameter "bb"
    .parameter "type"

    .prologue
    .line 10699
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mClickedBubbleButton:Lcom/android/email/bubblebutton/BubbleButton;

    .line 10713
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 1415
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1417
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "[HJP] onConfigurationChanged() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const-string v1, "MessageViewFragmentBase >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HJP] newConfig.orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const-string v1, "MessageViewFragmentBase >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HJP] ThreePaneLayout.getCurrentPaneState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentPaneState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_85

    .line 1425
    const/16 v1, 0x13a

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    .line 1430
    :goto_49
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1431
    const-string v1, "MessageViewFragmentBase >>"

    const-string v2, "onConfigurationChanged() restoreMessageWithId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1433
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_7f

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_7f

    .line 1434
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v1, v2, :cond_7f

    .line 1435
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iput-boolean v2, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 1436
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_7c
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1441
    .end local v0           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_7f
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->setBubbleLayout(I)V

    .line 1454
    return-void

    .line 1427
    :cond_85
    const/16 v1, 0x270

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    goto :goto_49

    .line 1436
    .restart local v0       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_8a
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_7c
.end method

.method public onCopyImage(Ljava/lang/String;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7548
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCopyImage : Copy image - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7554
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7555
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v1, v3, :cond_44

    .line 7556
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 7559
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/download/copyImage.bmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7564
    :try_start_5f
    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6f

    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 7565
    :cond_6f
    new-instance v3, Ljava/net/URL;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7566
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v4, v3

    .line 7571
    :goto_81
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7573
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_8b} :catch_bc
    .catch Ljava/lang/NullPointerException; {:try_start_5f .. :try_end_8b} :catch_d0

    .line 7574
    :try_start_8b
    invoke-static {v4, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 7575
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_91} :catch_12c
    .catch Ljava/lang/NullPointerException; {:try_start_8b .. :try_end_91} :catch_129

    .line 7607
    :try_start_91
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 7608
    if-nez v2, :cond_f3

    .line 7609
    const-string v2, "Email"

    const-string v4, "onCopyImage : : failed to decode the image file."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9e} :catch_e8

    .line 7611
    if-eqz v3, :cond_a3

    .line 7612
    :try_start_a0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_e8

    .line 7658
    :cond_a3
    :goto_a3
    return v0

    .line 7567
    :cond_a4
    :try_start_a4
    const-string v3, "content://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 7568
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b9} :catch_bc
    .catch Ljava/lang/NullPointerException; {:try_start_a4 .. :try_end_b9} :catch_d0

    move-result-object v3

    move-object v4, v3

    goto :goto_81

    .line 7577
    :catch_bc
    move-exception v1

    move-object v1, v2

    .line 7578
    :goto_be
    const-string v2, "Email"

    const-string v3, "onCopyImage : IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7580
    if-eqz v1, :cond_a3

    .line 7581
    :try_start_c7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_a3

    .line 7583
    :catch_cb
    move-exception v1

    .line 7584
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 7587
    :catch_d0
    move-exception v1

    .line 7588
    :goto_d1
    const-string v1, "Email"

    const-string v3, "onCopyImage : NullPointerException"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7590
    if-eqz v2, :cond_a3

    .line 7591
    :try_start_da
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_a3

    .line 7593
    :catch_de
    move-exception v1

    .line 7594
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    .line 7614
    :catch_e3
    move-exception v2

    .line 7615
    :try_start_e4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_a3

    .line 7636
    :catch_e8
    move-exception v0

    .line 7637
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7651
    :goto_ec
    if-eqz v3, :cond_f1

    .line 7652
    :try_start_ee
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_11d

    :cond_f1
    :goto_f1
    move v0, v1

    .line 7658
    goto :goto_a3

    .line 7621
    :cond_f3
    :try_start_f3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-string v2, "clipboardEx"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 7623
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 7624
    invoke-virtual {v2, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    .line 7627
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v2}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    if-nez v0, :cond_115

    .line 7628
    const-string v0, "Email"

    const-string v2, "onCopyImage : : clipEx.setData returned false."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    .line 7630
    :cond_115
    const-string v0, "Email"

    const-string v2, "onCopyImage : : Copied the selected image successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_11c} :catch_e8

    goto :goto_ec

    .line 7654
    :catch_11d
    move-exception v0

    .line 7655
    const-string v2, "MessageViewFragmentBase >>"

    const-string v3, "onCopyImage : IOException"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7656
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f1

    .line 7587
    :catch_129
    move-exception v1

    move-object v2, v3

    goto :goto_d1

    .line 7577
    :catch_12c
    move-exception v1

    move-object v1, v3

    goto :goto_be

    :cond_12f
    move-object v4, v2

    goto/16 :goto_81
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 703
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    .line 706
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    .line 708
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.REQ_INFO_FROM_MINI_MEMO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 711
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 714
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    .line 715
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    .line 717
    sput-object p0, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 719
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    .line 722
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->securityPolicy:Lcom/android/email/SecurityPolicy;

    .line 723
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0203d5

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 731
    .line 732
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-nez v0, :cond_4f2

    .line 733
    const v0, 0x7f0400a5

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 737
    :goto_15
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    .line 738
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    .line 740
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c015c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_WIDTH:I

    .line 742
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c015c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_HEIGHT:I

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    .line 748
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const v3, 0x7f1001f7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mNoSelectedEmail:Landroid/widget/LinearLayout;

    .line 753
    const v0, 0x7f1001f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/MessageScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    .line 757
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v3, 0x7f1001f9

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    .line 759
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v3, 0x7f1001fa

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeView:Landroid/widget/TextView;

    .line 765
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v3, 0x7f1001fb

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    .line 768
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f1001fd

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 770
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f100202

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 772
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f100206

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 774
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f1001fc

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromText:Landroid/widget/TextView;

    .line 775
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f100201

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    .line 776
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f100205

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    .line 777
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f1001fe

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnMoreInformation:Landroid/widget/ImageButton;

    .line 778
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f100203

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    .line 779
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f100207

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    .line 781
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f100200

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToDivider:Landroid/view/View;

    .line 782
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f100204

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcDivider:Landroid/view/View;

    .line 784
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->registerChildViewsFromOwnXML()V

    .line 785
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->registerChildViewsFromOwnXML()V

    .line 786
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->registerChildViewsFromOwnXML()V

    .line 787
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnMoreInformation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v8, :cond_4fc

    .line 790
    const/16 v0, 0x270

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    .line 795
    :goto_12a
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    .line 796
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    .line 798
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    const v3, 0x7f1001ff

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    .line 799
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v3, 0x7f100208

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    .line 804
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v3, 0x7f100209

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitleSection:Landroid/widget/LinearLayout;

    .line 806
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f10000a

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    .line 810
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f100219

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    .line 811
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f10021b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    .line 812
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f100218

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    .line 813
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f10021a

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationTextLabel:Landroid/widget/TextView;

    .line 818
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f100215

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 819
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 820
    const v3, 0x7f020287

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 821
    const v3, 0x7f020288

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 822
    const v3, 0x7f0200e0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    .line 823
    const v3, 0x7f0200e2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    .line 824
    const v3, 0x7f0200e1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    .line 826
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f10020f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    .line 827
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f100213

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    .line 828
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f100214

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    .line 829
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f10020e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    .line 832
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f100212

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    .line 833
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f10017a

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    .line 835
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f10017c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescription:Landroid/widget/TextView;

    .line 838
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f100211

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    .line 839
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f10021d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    .line 841
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f10021e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    .line 842
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f100220

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    .line 843
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    const v3, 0x7f100222

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    .line 845
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v3, 0x7f100224

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    .line 855
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v3, 0x7f100225

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageWebView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    .line 856
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageWebView;->setVerticalScrollBarEnabled(Z)V

    .line 857
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 858
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 859
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageWebView;->setHapticFeedbackEnabled(Z)V

    .line 860
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageWebView;->setPreserveZoom(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v6}, Lcom/android/email/activity/MessageWebView;->setBackgroundColor(I)V

    .line 862
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragmentIndex:I

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageWebView;->setParentIndex(I)V

    .line 863
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    new-instance v3, Lcom/android/email/activity/MessageViewFragmentBase$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageViewFragmentBase$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 909
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->setMessageWebView(Lcom/android/email/activity/MessageWebView;)V

    .line 912
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 913
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 914
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 915
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 916
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 917
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 918
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 921
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 924
    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 925
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v3

    if-eqz v3, :cond_502

    .line 926
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 931
    :goto_311
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v3

    if-eqz v3, :cond_509

    .line 933
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setUseEmailViewPort(Z)V

    .line 940
    :goto_31a
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 941
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v0

    .line 942
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setViewFontSize(I)V

    .line 946
    const v0, 0x7f100226

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    .line 947
    const v0, 0x7f100227

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    .line 948
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 953
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v3, 0x7f100228

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/LinearLayout;

    .line 968
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    const v3, 0x7f100229

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    .line 970
    const v0, 0x7f10022a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    .line 972
    const v0, 0x7f10022e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    .line 973
    const v0, 0x7f10022c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsHeaderInfo:Landroid/widget/TextView;

    .line 974
    const v0, 0x7f10022f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;

    .line 975
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    iput-boolean v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownloadVisible:Z

    .line 979
    const v0, 0x7f10022d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    .line 980
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    const v0, 0x7f100230

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    .line 986
    const v0, 0x7f100231

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    .line 988
    const v0, 0x7f100232

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mbtnToTheTop:Landroid/widget/Button;

    .line 989
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mbtnToTheTop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutToTheTop:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Lcom/android/email/winset/MessageScrollView;->setLinearlayoutToTheTop(Landroid/widget/LinearLayout;)V

    .line 995
    const v0, 0x7f100234

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    .line 999
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-nez v0, :cond_53c

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_53c

    .line 1002
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_519

    .line 1003
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    .line 1020
    :cond_3ed
    :goto_3ed
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    if-nez v0, :cond_41a

    .line 1021
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const v3, 0x7f0801e8

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    const v3, 0x7f0801e9

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    const v3, 0x7f0801ea

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    const v3, 0x7f0801eb

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mColor:[Ljava/lang/String;

    .line 1028
    :cond_41a
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-nez v0, :cond_48c

    .line 1031
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1032
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1033
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1034
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1041
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1045
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    const v3, 0x7f0202ed

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1117
    :cond_48c
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "#000000"

    aput-object v3, v0, v6

    const-string v3, "#7d7d7d"

    aput-object v3, v0, v7

    const-string v3, "#FFFFFF"

    aput-object v3, v0, v8

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorString:[Ljava/lang/String;

    .line 1120
    new-array v0, v9, [I

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v0, v6

    const/16 v3, 0x7d

    const/16 v4, 0x7d

    const/16 v5, 0x7d

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v0, v7

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v0, v8

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    .line 1124
    new-array v0, v9, [I

    const/16 v3, 0xf3

    const/16 v4, 0xf3

    const/16 v5, 0xf3

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v0, v6

    const/16 v3, 0xa

    const/16 v4, 0x1d

    const/16 v5, 0x29

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v0, v7

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v0, v8

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBGColorCode:[I

    .line 1132
    invoke-virtual {p0, v6, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    .line 1133
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v0

    .line 1134
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getFontColor()I

    move-result v3

    .line 1135
    invoke-virtual {v2, v0}, Lcom/android/email/Preferences;->setBGColor(I)V

    .line 1136
    invoke-virtual {v2, v3}, Lcom/android/email/Preferences;->setFontColor(I)V

    .line 1155
    return-object v1

    .line 735
    :cond_4f2
    const v0, 0x7f0400a4

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_15

    .line 792
    :cond_4fc
    const/16 v0, 0x13a

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLayoutWidth:I

    goto/16 :goto_12a

    .line 928
    :cond_502
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto/16 :goto_311

    .line 934
    :cond_509
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWideViewPort()Z

    move-result v3

    if-eqz v3, :cond_514

    .line 935
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto/16 :goto_31a

    .line 937
    :cond_514
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    goto/16 :goto_31a

    .line 1005
    :cond_519
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    .line 1006
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, p0}, Lcom/android/email/activity/MessageViewForSeven;->onInit(Landroid/content/Context;Landroid/view/View;Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 1010
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    sget-boolean v0, Lcom/android/email/activity/MessageViewForSeven;->mInit:Z

    if-nez v0, :cond_3ed

    .line 1011
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p0}, Lcom/android/email/activity/MessageViewForSeven;->z7initInstance(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase;)V

    goto/16 :goto_3ed

    .line 1015
    :cond_53c
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    goto/16 :goto_3ed
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z

    .line 1317
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1318
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->reqMemoReceiver:Landroid/content/BroadcastReceiver;

    .line 1319
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageViewGone()V

    .line 1320
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1321
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    .line 1322
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 1323
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    .line 1324
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez v0, :cond_b0

    .line 1333
    :goto_25
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    .line 1334
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnMoreInformation:Landroid/widget/ImageButton;

    .line 1335
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 1336
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToText:Landroid/widget/TextView;

    .line 1337
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromText:Landroid/widget/TextView;

    .line 1338
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 1339
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcText:Landroid/widget/TextView;

    .line 1340
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    .line 1341
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToMargin:Landroid/view/View;

    .line 1342
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcMargin:Landroid/view/View;

    .line 1343
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToDivider:Landroid/view/View;

    .line 1344
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcDivider:Landroid/view/View;

    .line 1345
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    .line 1346
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    .line 1347
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    .line 1348
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    .line 1349
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    .line 1350
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    .line 1351
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 1352
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 1353
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    .line 1354
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    .line 1355
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    .line 1356
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    .line 1357
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    .line 1358
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    .line 1361
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    .line 1362
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearLayoutAddress:Landroid/widget/LinearLayout;

    .line 1364
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutTitleSection:Landroid/widget/LinearLayout;

    .line 1365
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    .line 1366
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    if-eqz v0, :cond_6f

    .line 1367
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v2}, Lcom/android/email/winset/MessageScrollView;->setLinearlayoutToTheTop(Landroid/widget/LinearLayout;)V

    .line 1368
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v0, v2}, Lcom/android/email/winset/MessageScrollView;->setMessageWebView(Lcom/android/email/activity/MessageWebView;)V

    .line 1370
    :cond_6f
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    .line 1373
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    .line 1374
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeView:Landroid/widget/TextView;

    .line 1378
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cleanupDetachedViews()V

    .line 1379
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    .line 1380
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    .line 1381
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsExpander:Landroid/widget/ImageButton;

    .line 1382
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;

    .line 1383
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsHeaderInfo:Landroid/widget/TextView;

    .line 1384
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    .line 1385
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    .line 1386
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativeLayoutSaveall:Landroid/widget/RelativeLayout;

    .line 1387
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRelativelayoutAttachmentsHeader:Landroid/widget/RelativeLayout;

    .line 1388
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutContent:Landroid/widget/LinearLayout;

    .line 1389
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mScrollviewInvite:Landroid/widget/LinearLayout;

    .line 1390
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLinearlayoutAttachment:Landroid/widget/LinearLayout;

    .line 1392
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    .line 1393
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->downloadManager:Landroid/app/DownloadManager;

    .line 1394
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1395
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    .line 1396
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAnimation:Landroid/view/animation/Animation;

    .line 1397
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    .line 1398
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    .line 1399
    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1400
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    .line 1401
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mActivity:Landroid/app/Activity;

    .line 1404
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    .line 1405
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    .line 1407
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusLoaderCallbacks:Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    .line 1408
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 1410
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1411
    return-void

    .line 1328
    :cond_b0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-static {v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1329
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimatForLoadingProgress(Landroid/view/View;Z)V

    goto/16 :goto_25
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 1290
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_FRAGMENTS:Z

    if-eqz v0, :cond_1c

    .line 1291
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroyView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_1c
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1295
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cleanAnimation()V

    .line 1297
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->uninstallFragment(Landroid/app/Fragment;)V

    .line 1298
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1299
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 1306
    :cond_32
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1307
    return-void
.end method

.method protected onMarkAsRead(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 10261
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v0, p1, :cond_16

    .line 10262
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-boolean p1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 10263
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/email/Controller;->setMessageRead(JZ)V

    .line 10267
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    .line 10268
    const/4 v2, 0x5

    if-eq v0, v2, :cond_27

    const/4 v2, 0x4

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6f

    .line 10270
    :cond_27
    const/4 v0, 0x0

    .line 10273
    :goto_28
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_6e

    if-ne v0, v1, :cond_6e

    .line 10275
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10276
    const v1, 0x7f080284

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10278
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080609

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10279
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 10281
    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$16;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$16;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10309
    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$17;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageViewFragmentBase$17;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10315
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 10317
    :cond_6e
    return-void

    :cond_6f
    move v0, v1

    goto :goto_28
.end method

.method public onMemoPlus()V
    .registers 4

    .prologue
    .line 6789
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMAIL_TO_MEMO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6792
    :try_start_7
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 6793
    const-string v1, "email_title"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 6799
    :cond_24
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 6800
    const-string v1, "email_date"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 6814
    :cond_41
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->bSaveToCalendarIsText:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5b

    .line 6815
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSaveToCalendarHtmlText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 6816
    const-string v2, "email_message"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_55} :catch_67

    .line 6829
    :goto_55
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6830
    return-void

    .line 6820
    :cond_5b
    :try_start_5b
    const-string v1, "email_message"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSaveToCalendarHtmlText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_66
    .catch Ljava/lang/NullPointerException; {:try_start_5b .. :try_end_66} :catch_67

    goto :goto_55

    .line 6825
    :catch_67
    move-exception v1

    .line 6826
    const-string v1, "Email"

    const-string v2, "onMemoPlus : NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method protected onMessageShown(JI)V
    .registers 5
    .parameter "messageId"
    .parameter "mailboxType"

    .prologue
    .line 4338
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    invoke-interface {v0, p3}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageViewShown(I)V

    .line 4339
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    .line 1254
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_e

    .line 1255
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewForSeven;->onPause()V

    .line 1260
    :cond_e
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1261
    return-void
.end method

.method protected onPostLoadBody()V
    .registers 1

    .prologue
    .line 4345
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1205
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1207
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResumed:Z

    .line 1208
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1209
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageSpecified()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1210
    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadWhenResumed:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-nez v2, :cond_1d

    .line 1211
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->loadMessageIfResumed()V

    .line 1226
    :cond_1d
    iget-boolean v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->isSystemFont:Z

    if-eqz v2, :cond_2a

    .line 1227
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1228
    .local v1, webSettings:Landroid/webkit/WebSettings;
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->controlSystemFontSize(Landroid/webkit/WebSettings;)V

    .line 1233
    .end local v1           #webSettings:Landroid/webkit/WebSettings;
    :cond_2a
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v2, :cond_35

    .line 1234
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven;->onResume()V

    .line 1238
    :cond_35
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 1239
    .local v0, settingValue:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getBGColor()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    .line 1240
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getFontColor()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurFontColorCode:I

    .line 1241
    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    invoke-virtual {p0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    .line 1242
    return-void
.end method

.method public onSaveImage(Z)V
    .registers 15
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 7423
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 7424
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v6

    .line 7425
    const-string v2, ""

    .line 7431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/download/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7434
    :try_start_2a
    const-string v0, "content://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_119

    move v5, v4

    move v0, v4

    .line 7436
    :goto_34
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v8, v8

    if-ge v5, v8, :cond_5a

    if-nez v0, :cond_5a

    .line 7437
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 7438
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v0, v0, v5

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    .line 7439
    const-string v0, "%20"

    const-string v8, " "

    invoke-virtual {v2, v0, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 7436
    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 7444
    :cond_5a
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_67
    .catchall {:try_start_2a .. :try_end_67} :catchall_1d4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_67} :catch_147
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_67} :catch_175
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_67} :catch_1a6

    move-result-object v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    .line 7454
    :goto_6b
    if-nez v0, :cond_2a1

    .line 7455
    :try_start_6d
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f080313

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_249
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6d .. :try_end_75} :catch_286
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_75} :catch_274
    .catch Ljava/lang/NullPointerException; {:try_start_6d .. :try_end_75} :catch_262

    move-result-object v5

    .line 7461
    :goto_76
    :try_start_76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7462
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_84

    .line 7463
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 7465
    :cond_84
    invoke-static {v0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_87
    .catchall {:try_start_76 .. :try_end_87} :catchall_249
    .catch Landroid/content/ActivityNotFoundException; {:try_start_76 .. :try_end_87} :catch_28d
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_87} :catch_279
    .catch Ljava/lang/NullPointerException; {:try_start_76 .. :try_end_87} :catch_267

    move-result-object v0

    .line 7467
    :try_start_88
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_24c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_88 .. :try_end_8d} :catch_294
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8d} :catch_27d
    .catch Ljava/lang/NullPointerException; {:try_start_88 .. :try_end_8d} :catch_26b

    .line 7468
    :try_start_8d
    invoke-static {v2, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 7469
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 7471
    if-nez p1, :cond_c5

    .line 7472
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v9, 0x7f08008d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v3, v7, v8}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_c5
    .catchall {:try_start_8d .. :try_end_c5} :catchall_252
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8d .. :try_end_c5} :catch_29a
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_c5} :catch_282
    .catch Ljava/lang/NullPointerException; {:try_start_8d .. :try_end_c5} :catch_270

    .line 7487
    :cond_c5
    if-eqz v2, :cond_ca

    .line 7489
    :try_start_c7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_241

    .line 7494
    :cond_ca
    :goto_ca
    if-eqz v1, :cond_e2

    .line 7496
    :try_start_cc
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 7502
    if-eqz v0, :cond_e2

    .line 7503
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_e2} :catch_1a3

    .line 7512
    :cond_e2
    :goto_e2
    if-eqz p1, :cond_118

    .line 7516
    if-nez v4, :cond_1f5

    .line 7517
    :try_start_e6
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 7527
    :goto_f4
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 7528
    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 7529
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0801c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_118} :catch_208
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_e6 .. :try_end_118} :catch_212
    .catch Ljava/lang/IllegalStateException; {:try_start_e6 .. :try_end_118} :catch_21f
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_118} :catch_22c

    .line 7545
    :cond_118
    :goto_118
    return-void

    .line 7446
    :cond_119
    :try_start_119
    new-instance v0, Ljava/net/URL;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7448
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7449
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v2, v5, v8

    .line 7450
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_140
    .catchall {:try_start_119 .. :try_end_140} :catchall_1d4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_119 .. :try_end_140} :catch_147
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_140} :catch_175
    .catch Ljava/lang/NullPointerException; {:try_start_119 .. :try_end_140} :catch_1a6

    move-result-object v0

    move v4, v1

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    .line 7451
    goto/16 :goto_6b

    .line 7476
    :catch_147
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    move v12, v4

    move-object v4, v2

    move v2, v12

    .line 7477
    :goto_14d
    :try_start_14d
    const-string v5, "Email"

    const-string v7, "ActivityNotFoundException1"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catchall {:try_start_14d .. :try_end_154} :catchall_257

    .line 7487
    if-eqz v1, :cond_159

    .line 7489
    :try_start_156
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_159} :catch_238

    .line 7494
    :cond_159
    :goto_159
    if-eqz v3, :cond_171

    .line 7496
    :try_start_15b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 7502
    if-eqz v0, :cond_171

    .line 7503
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v0, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_171} :catch_244

    :cond_171
    :goto_171
    move-object v5, v4

    move v4, v2

    .line 7510
    goto/16 :goto_e2

    .line 7478
    :catch_175
    move-exception v0

    move-object v1, v3

    move-object v5, v2

    move-object v2, v3

    .line 7479
    :goto_179
    :try_start_179
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v7, 0x7f08008e

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V
    :try_end_184
    .catchall {:try_start_179 .. :try_end_184} :catchall_25f

    .line 7487
    if-eqz v2, :cond_189

    .line 7489
    :try_start_186
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_189} :catch_23b

    .line 7494
    :cond_189
    :goto_189
    if-eqz v1, :cond_e2

    .line 7496
    :try_start_18b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 7502
    if-eqz v3, :cond_e2

    .line 7503
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1a1} :catch_1a3

    goto/16 :goto_e2

    .line 7507
    :catch_1a3
    move-exception v0

    goto/16 :goto_e2

    .line 7481
    :catch_1a6
    move-exception v0

    move-object v1, v3

    move-object v5, v2

    move-object v2, v3

    .line 7482
    :goto_1aa
    :try_start_1aa
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v7, 0x7f08008e

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V
    :try_end_1b5
    .catchall {:try_start_1aa .. :try_end_1b5} :catchall_25f

    .line 7487
    if-eqz v2, :cond_1ba

    .line 7489
    :try_start_1b7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1ba} :catch_23e

    .line 7494
    :cond_1ba
    :goto_1ba
    if-eqz v1, :cond_e2

    .line 7496
    :try_start_1bc
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 7502
    if-eqz v3, :cond_e2

    .line 7503
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1d2} :catch_1a3

    goto/16 :goto_e2

    .line 7487
    :catchall_1d4
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    :goto_1d7
    if-eqz v2, :cond_1dc

    .line 7489
    :try_start_1d9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1dc} :catch_236

    .line 7494
    :cond_1dc
    :goto_1dc
    if-eqz v1, :cond_1f4

    .line 7496
    :try_start_1de
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 7502
    if-eqz v3, :cond_1f4

    .line 7503
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_1f4} :catch_247

    .line 7487
    :cond_1f4
    :goto_1f4
    throw v0

    .line 7519
    :cond_1f5
    :try_start_1f5
    new-instance v0, Ljava/net/URL;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7520
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_205
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_205} :catch_208
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1f5 .. :try_end_205} :catch_212
    .catch Ljava/lang/IllegalStateException; {:try_start_1f5 .. :try_end_205} :catch_21f
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_205} :catch_22c

    move-result-object v0

    goto/16 :goto_f4

    .line 7533
    :catch_208
    move-exception v0

    .line 7534
    const-string v1, "Email"

    const-string v2, "Failed to set wallpaper."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_118

    .line 7535
    :catch_212
    move-exception v0

    .line 7536
    const-string v1, "Email"

    const-string v2, "BadTokenException!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7537
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_118

    .line 7538
    :catch_21f
    move-exception v0

    .line 7539
    const-string v1, "Email"

    const-string v2, "IllegalStateException!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7540
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_118

    .line 7541
    :catch_22c
    move-exception v0

    .line 7542
    const-string v1, "Email"

    const-string v2, "Failed to set wallpaper2."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_118

    .line 7490
    :catch_236
    move-exception v2

    goto :goto_1dc

    :catch_238
    move-exception v1

    goto/16 :goto_159

    :catch_23b
    move-exception v0

    goto/16 :goto_189

    :catch_23e
    move-exception v0

    goto/16 :goto_1ba

    :catch_241
    move-exception v2

    goto/16 :goto_ca

    .line 7507
    :catch_244
    move-exception v0

    goto/16 :goto_171

    :catch_247
    move-exception v1

    goto :goto_1f4

    .line 7487
    :catchall_249
    move-exception v0

    move-object v1, v3

    goto :goto_1d7

    :catchall_24c
    move-exception v1

    move-object v12, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_1d7

    :catchall_252
    move-exception v3

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_1d7

    :catchall_257
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v12

    goto/16 :goto_1d7

    :catchall_25f
    move-exception v0

    goto/16 :goto_1d7

    .line 7481
    :catch_262
    move-exception v1

    move-object v1, v3

    move-object v5, v0

    goto/16 :goto_1aa

    :catch_267
    move-exception v0

    move-object v1, v3

    goto/16 :goto_1aa

    :catch_26b
    move-exception v1

    move-object v1, v3

    move-object v3, v0

    goto/16 :goto_1aa

    :catch_270
    move-exception v3

    move-object v3, v0

    goto/16 :goto_1aa

    .line 7478
    :catch_274
    move-exception v1

    move-object v1, v3

    move-object v5, v0

    goto/16 :goto_179

    :catch_279
    move-exception v0

    move-object v1, v3

    goto/16 :goto_179

    :catch_27d
    move-exception v1

    move-object v1, v3

    move-object v3, v0

    goto/16 :goto_179

    :catch_282
    move-exception v3

    move-object v3, v0

    goto/16 :goto_179

    .line 7476
    :catch_286
    move-exception v1

    move-object v1, v2

    move v2, v4

    move-object v4, v0

    move-object v0, v3

    goto/16 :goto_14d

    :catch_28d
    move-exception v0

    move-object v0, v3

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    goto/16 :goto_14d

    :catch_294
    move-exception v1

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    goto/16 :goto_14d

    :catch_29a
    move-exception v3

    move-object v3, v1

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    goto/16 :goto_14d

    :cond_2a1
    move-object v5, v0

    goto/16 :goto_76
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    .line 1499
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 1500
    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1504
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_1a

    .line 1505
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewForSeven;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1512
    :cond_1a
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1513
    return-void
.end method

.method public onSetWallpaper()V
    .registers 2

    .prologue
    .line 7418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveImage(Z)V

    .line 7419
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 1197
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1198
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 1268
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1269
    return-void
.end method

.method protected abstract openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 5574
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    .line 5577
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 5578
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 5579
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    .line 5580
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->securityPolicy:Lcom/android/email/SecurityPolicy;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    .line 5583
    :cond_36
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->register(Landroid/net/Uri;)V

    .line 5586
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_52

    .line 5589
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->makeAttachmentInfos(J)V

    .line 5593
    :cond_52
    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v0

    .line 5594
    if-nez v0, :cond_5d

    .line 5595
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/ContactInfoCache;->init(Landroid/content/Context;)V

    .line 5598
    :cond_5d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {p0, v0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 5600
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 5601
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v10, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5608
    :try_start_82
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_289

    .line 5609
    const-string v0, "isMimeLoaded"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_91
    .catchall {:try_start_82 .. :try_end_91} :catchall_ed
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_91} :catch_e4

    move-result v0

    .line 5615
    :goto_92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5622
    :goto_95
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    if-eq v1, v10, :cond_a3

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->hasInlineDataImage(JI)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 5625
    :cond_a3
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_ab

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_f2

    .line 5626
    :cond_ab
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 5630
    :goto_ad
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseCheckAfterPageFinished()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 5631
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 5633
    :cond_b6
    const-string v0, "MessageView"

    const-string v1, "mFlagTruncated == FLAG_TRUNCATED_YES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5699
    :cond_bd
    :goto_bd
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v0

    if-eqz v0, :cond_23c

    .line 5700
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_1d5

    .line 5701
    if-eqz p2, :cond_1b8

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v10, :cond_1b8

    .line 5702
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5703
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    .line 5755
    :goto_e3
    return-void

    .line 5612
    :catch_e4
    move-exception v0

    .line 5613
    :try_start_e5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_ed

    .line 5615
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 5616
    goto :goto_95

    .line 5615
    :catchall_ed
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 5628
    :cond_f2
    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    goto :goto_ad

    .line 5638
    :cond_f5
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 5639
    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 5640
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v2, v10, :cond_127

    .line 5641
    const-string v2, "MessageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message.mFlagLoaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Message.FLAG_LOADED_COMPLETE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5644
    :cond_127
    if-eqz v1, :cond_1a8

    const-string v2, "2.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 5648
    if-nez v0, :cond_159

    .line 5649
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5650
    const-string v2, "isMimeLoaded"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5651
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5653
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v7

    .line 5656
    :cond_159
    if-ne v0, v7, :cond_19e

    .line 5657
    const-string v0, "MessageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEx2003 = true, Protocol Version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Message Truncated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5659
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_187

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_19b

    .line 5660
    :cond_187
    iput-boolean v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 5664
    :goto_189
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseCheckAfterPageFinished()Z

    move-result v0

    if-nez v0, :cond_192

    .line 5665
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 5687
    :cond_192
    :goto_192
    const-string v0, "MessageView"

    const-string v1, "mFlagTruncated == FLAG_TRUNCATED_NO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bd

    .line 5662
    :cond_19b
    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    goto :goto_189

    .line 5673
    :cond_19e
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseCheckAfterPageFinished()Z

    move-result v0

    if-nez v0, :cond_192

    .line 5674
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto :goto_192

    .line 5689
    :cond_1a8
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto/16 :goto_bd

    .line 5694
    :cond_1ad
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseCheckAfterPageFinished()Z

    move-result v0

    if-nez v0, :cond_bd

    .line 5695
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    goto/16 :goto_bd

    .line 5705
    :cond_1b8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-virtual {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5707
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 5708
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_e3

    .line 5711
    :cond_1d5
    if-eqz p2, :cond_1f2

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f2

    .line 5712
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5713
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    goto/16 :goto_e3

    .line 5715
    :cond_1f2
    if-eqz p2, :cond_226

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v10, :cond_226

    .line 5716
    iput-boolean v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 5717
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseCheckAfterPageFinished()Z

    move-result v0

    if-nez v0, :cond_203

    .line 5718
    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 5720
    :cond_203
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5724
    :goto_210
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-eqz v0, :cond_232

    .line 5725
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 5729
    :goto_21d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_e3

    .line 5722
    :cond_226
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-virtual {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    goto :goto_210

    .line 5727
    :cond_232
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, v10}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    goto :goto_21d

    .line 5741
    :cond_23c
    if-eqz p2, :cond_258

    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-eq v0, v10, :cond_258

    .line 5742
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5743
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMessageForView(J)V

    goto/16 :goto_e3

    .line 5745
    :cond_258
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    invoke-virtual {v0, v11, v12}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 5747
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_26d

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-eqz v0, :cond_27f

    .line 5748
    :cond_26d
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    .line 5752
    :goto_276
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_e3

    .line 5750
    :cond_27f
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {v0, p0, v1, v2, v10}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    goto :goto_276

    :cond_289
    move v0, v6

    goto/16 :goto_92
.end method

.method protected resetView()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1668
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 1669
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez v2, :cond_c5

    .line 1681
    :goto_c
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransactionAnimation()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1682
    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageOpenMode:I

    sget v3, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    if-eq v2, v3, :cond_1b

    .line 1683
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimateMessageViewOpen(Z)V

    .line 1687
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->showLoadMoreButton(Z)V

    .line 1688
    iput-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    .line 1689
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    if-eqz v2, :cond_2c

    .line 1690
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 1691
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabFlags(I)V

    .line 1694
    :cond_2c
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    if-eqz v2, :cond_35

    .line 1695
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v2}, Lcom/android/email/winset/MessageScrollView;->resetMessageScrollView()V

    .line 1698
    :cond_35
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v2, :cond_9d

    .line 1699
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->resetMessageWebView()V

    .line 1701
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->stopLoading()V

    .line 1705
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearActionMode()V

    .line 1707
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 1710
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2, v4, v4}, Lcom/android/email/activity/MessageWebView;->scrollTo(II)V

    .line 1711
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->clearHistory()V

    .line 1714
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->clearView()V

    .line 1715
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->clearViewState()V

    .line 1717
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseInitScale()Z

    move-result v2

    if-ne v2, v5, :cond_72

    .line 1718
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getWebViewZoom()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageWebView;->setInitialScale(I)V

    .line 1721
    :cond_72
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1722
    .local v1, webSettings:Landroid/webkit/WebSettings;
    if-eqz v1, :cond_88

    .line 1723
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 1724
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseEmailViewPort(Z)V

    .line 1725
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1735
    :cond_88
    :goto_88
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseMessageWebViewSizeChange()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 1736
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1739
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1740
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1744
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #webSettings:Landroid/webkit/WebSettings;
    :cond_9d
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->removeAllAttachments()V

    .line 1745
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_ab

    .line 1746
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1748
    :cond_ab
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v2, :cond_b6

    .line 1749
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven;->z7StopDownloading()V

    .line 1751
    :cond_b6
    iput-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z

    .line 1753
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->onShowDetails(Z)V

    .line 1755
    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mResetView:Z

    .line 1756
    const-string v2, "Email"

    const-string v3, "resetView()"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    return-void

    .line 1675
    :cond_c5
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    invoke-direct {p0, v2, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimatForLoadingProgress(Landroid/view/View;Z)V

    goto/16 :goto_c

    .line 1678
    :cond_cc
    invoke-virtual {p0, v4, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    goto/16 :goto_c

    .line 1726
    .restart local v1       #webSettings:Landroid/webkit/WebSettings;
    :cond_d1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 1727
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1728
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_88

    .line 1730
    :cond_e0
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1731
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_88
.end method

.method public saveRecipientAsGroupDialog()Landroid/app/Dialog;
    .registers 10

    .prologue
    const v8, 0x7f0802ef

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8016
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 8022
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v0, :cond_10

    move-object v0, v2

    .line 8083
    :goto_f
    return-object v0

    .line 8024
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I

    .line 8025
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly1([Lcom/android/emailcommon/mail/Address;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I

    .line 8027
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCclength:I

    if-lez v0, :cond_b5

    .line 8029
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8031
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    if-nez v0, :cond_5d

    .line 8032
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x7f0802e7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0802f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    :cond_5d
    move v0, v1

    .line 8039
    :goto_5e
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_72

    .line 8040
    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mGroupRange:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {v5, p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V

    .line 8042
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8039
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 8045
    :cond_72
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v6, 0x7f0400b7

    invoke-direct {v0, p0, v5, v6, v4}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientRangeAdapter:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    .line 8048
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8049
    const-string v3, "range"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8051
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRecipientRangeAdapter:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$13;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageViewFragmentBase$13;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8074
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f080043

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8076
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    .line 8077
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;

    .line 8078
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 8079
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    goto/16 :goto_f

    .line 8082
    :cond_b5
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTolength:I

    invoke-direct {p0, v0, v1, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showRecipientList(IIII)V

    move-object v0, v2

    .line 8083
    goto/16 :goto_f
.end method

.method public setAlwaysDecryptOrVerifyMails(Z)V
    .registers 7
    .parameter "always"

    .prologue
    .line 9771
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->PREFERENCES_FILE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 9773
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9774
    .local v0, editPref:Landroid/content/SharedPreferences$Editor;
    const-string v2, "isCheckSMIME"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 9775
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9776
    return-void
.end method

.method public setBubbleLayout(I)V
    .registers 4
    .parameter "newWidth"

    .prologue
    const/4 v1, 0x0

    .line 1457
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    .line 1458
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setExpectedLayoutWidth(I)V

    .line 1459
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->rebuildBubbleLayout(I)V

    .line 1460
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->rebuildBubbleLayout(I)V

    .line 1461
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 1535
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 1536
    return-void
.end method

.method setCurrentTab(I)V
    .registers 2
    .parameter "tab"

    .prologue
    .line 2050
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setTabTextStyle(I)V

    .line 2051
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    .line 2052
    return-void
.end method

.method public setViewFontSize(I)V
    .registers 12
    .parameter "zoom"

    .prologue
    const/16 v4, 0x10

    const/4 v9, 0x1

    const/16 v8, 0xf

    const/16 v7, 0xd

    const/16 v6, 0x14

    .line 7713
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-nez v3, :cond_15

    .line 7714
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "setViewFontSize : mMessageWebView is null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7960
    :goto_14
    return-void

    .line 7718
    :cond_15
    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontSize:I

    if-ne v3, p1, :cond_21

    .line 7719
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "setViewFontSize : FontSize is not changed. do nothing"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 7722
    :cond_21
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontSize:I

    .line 7725
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 7727
    .local v2, webSettings:Landroid/webkit/WebSettings;
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    .line 7728
    .local v0, fontSizeMode:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_TEXTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_4a

    .line 7729
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 7731
    .local v1, size:Landroid/webkit/WebSettings$TextSize;
    packed-switch p1, :pswitch_data_286

    .line 7748
    :goto_34
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 7959
    .end local v1           #size:Landroid/webkit/WebSettings$TextSize;
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->loadMessageIfResumed()V

    goto :goto_14

    .line 7733
    .restart local v1       #size:Landroid/webkit/WebSettings$TextSize;
    :pswitch_3b
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    .line 7734
    goto :goto_34

    .line 7736
    :pswitch_3e
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    .line 7737
    goto :goto_34

    .line 7739
    :pswitch_41
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    .line 7740
    goto :goto_34

    .line 7742
    :pswitch_44
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    .line 7743
    goto :goto_34

    .line 7745
    :pswitch_47
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    goto :goto_34

    .line 7749
    .end local v1           #size:Landroid/webkit/WebSettings$TextSize;
    :cond_4a
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_IPAD1:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_87

    .line 7750
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7751
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7752
    packed-switch p1, :pswitch_data_294

    goto :goto_37

    .line 7754
    :pswitch_58
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7755
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7758
    :pswitch_63
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7759
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7762
    :pswitch_6a
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7763
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7766
    :pswitch_75
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7767
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7770
    :pswitch_7c
    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7771
    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7774
    :cond_87
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_IPAD2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_c6

    .line 7775
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7776
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7777
    packed-switch p1, :pswitch_data_2a2

    goto :goto_37

    .line 7779
    :pswitch_95
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7780
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7783
    :pswitch_9c
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7784
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7787
    :pswitch_a3
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7788
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto :goto_37

    .line 7791
    :pswitch_ae
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7792
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7795
    :pswitch_ba
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7796
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7799
    :cond_c6
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_109

    .line 7800
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7801
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7802
    packed-switch p1, :pswitch_data_2b0

    goto/16 :goto_37

    .line 7804
    :pswitch_d5
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7805
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7808
    :pswitch_dd
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7809
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7812
    :pswitch_e9
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7813
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7816
    :pswitch_f1
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7817
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7820
    :pswitch_fd
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7821
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7824
    :cond_109
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_1ef

    .line 7825
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isQ1Model()Z

    move-result v3

    if-eqz v3, :cond_194

    .line 7826
    const-string v3, "MessageViewFragmentBase >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fontSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7828
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->isSystemFont:Z

    .line 7830
    packed-switch p1, :pswitch_data_2be

    goto/16 :goto_37

    .line 7832
    :pswitch_137
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->controlSystemFontSize(Landroid/webkit/WebSettings;)V

    .line 7833
    iput-boolean v9, p0, Lcom/android/email/activity/MessageViewFragmentBase;->isSystemFont:Z

    goto/16 :goto_14

    .line 7836
    :pswitch_13e
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7837
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7838
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7839
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7842
    :pswitch_154
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7843
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7844
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7845
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7848
    :pswitch_162
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7849
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7850
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7851
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7854
    :pswitch_170
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7855
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7856
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7857
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7860
    :pswitch_17e
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7861
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7862
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7863
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7867
    :cond_194
    packed-switch p1, :pswitch_data_2ce

    goto/16 :goto_37

    .line 7869
    :pswitch_199
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7870
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7871
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7872
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7875
    :pswitch_1af
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7876
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7877
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7878
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7881
    :pswitch_1bd
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7882
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7883
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7884
    invoke-virtual {v2, v8}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7887
    :pswitch_1cb
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7888
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7889
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7890
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7893
    :pswitch_1d9
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7894
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7895
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7896
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7900
    :cond_1ef
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC3:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_256

    .line 7901
    packed-switch p1, :pswitch_data_2dc

    goto/16 :goto_37

    .line 7903
    :pswitch_1f8
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7904
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7905
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7906
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7909
    :pswitch_206
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7910
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7911
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7912
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7915
    :pswitch_21c
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7916
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7917
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7918
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7921
    :pswitch_22a
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7922
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7923
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7924
    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7927
    :pswitch_240
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7928
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7929
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 7930
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7933
    :cond_256
    sget-object v3, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMLOGICALFONTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    if-ne v0, v3, :cond_37

    .line 7934
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 7935
    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 7936
    packed-switch p1, :pswitch_data_2ea

    goto/16 :goto_37

    .line 7938
    :pswitch_265
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7941
    :pswitch_26c
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7944
    :pswitch_271
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7947
    :pswitch_278
    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7950
    :pswitch_27f
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    goto/16 :goto_37

    .line 7731
    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_47
    .end packed-switch

    .line 7752
    :pswitch_data_294
    .packed-switch 0x0
        :pswitch_58
        :pswitch_63
        :pswitch_6a
        :pswitch_75
        :pswitch_7c
    .end packed-switch

    .line 7777
    :pswitch_data_2a2
    .packed-switch 0x0
        :pswitch_95
        :pswitch_9c
        :pswitch_a3
        :pswitch_ae
        :pswitch_ba
    .end packed-switch

    .line 7802
    :pswitch_data_2b0
    .packed-switch 0x0
        :pswitch_d5
        :pswitch_dd
        :pswitch_e9
        :pswitch_f1
        :pswitch_fd
    .end packed-switch

    .line 7830
    :pswitch_data_2be
    .packed-switch 0x0
        :pswitch_137
        :pswitch_13e
        :pswitch_154
        :pswitch_162
        :pswitch_170
        :pswitch_17e
    .end packed-switch

    .line 7867
    :pswitch_data_2ce
    .packed-switch 0x0
        :pswitch_199
        :pswitch_1af
        :pswitch_1bd
        :pswitch_1cb
        :pswitch_1d9
    .end packed-switch

    .line 7901
    :pswitch_data_2dc
    .packed-switch 0x0
        :pswitch_1f8
        :pswitch_206
        :pswitch_21c
        :pswitch_22a
        :pswitch_240
    .end packed-switch

    .line 7936
    :pswitch_data_2ea
    .packed-switch 0x0
        :pswitch_265
        :pswitch_26c
        :pswitch_271
        :pswitch_278
        :pswitch_27f
    .end packed-switch
.end method

.method public showContent(ZZ)V
    .registers 5
    .parameter "showContent"
    .parameter "showProgressWhenHidden"

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1642
    :goto_4
    return-void

    .line 1639
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageScrollView:Lcom/android/email/winset/MessageScrollView;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1640
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez p1, :cond_15

    if-eqz p2, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimatForLoadingProgress(Landroid/view/View;Z)V

    goto :goto_4

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public showDownloadITPolicyToast()V
    .registers 4

    .prologue
    .line 3936
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803eb

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 3938
    return-void
.end method

.method public showHTMLITPolicyToast()V
    .registers 4

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803ed

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 3946
    return-void
.end method

.method public showLoadMoreButton(Z)V
    .registers 6
    .parameter "show"

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1465
    if-eqz p1, :cond_35

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->showingLoadMore:Z

    if-eqz v0, :cond_35

    .line 1466
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1467
    const-string v0, "Inline Image"

    const-string v1, "Showing Load More2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1469
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    :cond_1f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 1472
    const-string v0, "Inline Image"

    const-string v1, "Showing Load More1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1474
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1485
    :cond_34
    :goto_34
    return-void

    .line 1477
    :cond_35
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    if-eqz v0, :cond_3e

    .line 1478
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessageHolder:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1480
    :cond_3e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 1481
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMoreMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34
.end method

.method public showPop3ImapITPolicyToast()V
    .registers 4

    .prologue
    .line 3941
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803ec

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 3942
    return-void
.end method

.method protected showPopUpOnImage(I)Landroid/app/Dialog;
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x0

    const v10, 0x7f0801f2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7303
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 7305
    packed-switch p1, :pswitch_data_dc

    .line 7411
    :goto_d
    return-object v4

    .line 7310
    :pswitch_e
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v3

    .line 7311
    invoke-virtual {v3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v5

    .line 7313
    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0801aa

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0801ab

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v3, 0x2

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0801ac

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v8, 0x7f0801ad

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 7320
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7324
    const-string v2, "content://"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_84

    move v3, v0

    move-object v2, v4

    .line 7325
    :goto_58
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    array-length v8, v8

    if-ge v3, v8, :cond_a4

    if-nez v0, :cond_a4

    .line 7326
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v8, v8, v3

    if-nez v8, :cond_6f

    .line 7327
    const-string v8, "Email"

    const-string v9, "FILENAME = mBodyImageInfo is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7325
    :cond_6c
    :goto_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 7331
    :cond_6f
    sget-object v8, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mContentUri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 7332
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageInfo:[Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$BodyImageInfo;->mFileName:Ljava/lang/String;

    move-object v2, v0

    move v0, v1

    .line 7333
    goto :goto_6c

    .line 7336
    :cond_84
    const-string v2, "http://"

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d9

    .line 7337
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7338
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    move v0, v1

    .line 7342
    :cond_a4
    :goto_a4
    if-ne v0, v1, :cond_d5

    .line 7343
    if-eqz v2, :cond_d1

    .line 7344
    const-string v0, "%20"

    const-string v1, " "

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7345
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7353
    :goto_b3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragmentBase$11;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7359
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$12;

    invoke-direct {v0, p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$12;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7406
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_d

    .line 7347
    :cond_d1
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_b3

    .line 7350
    :cond_d5
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_b3

    :cond_d9
    move-object v2, v4

    goto :goto_a4

    .line 7305
    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_e
    .end packed-switch
.end method

.method public startAttachmentDownloadForZ7(JJ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 10337
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    if-nez v0, :cond_c

    .line 10338
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "startAttachmentDownloadForZ7 : mHandler is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10351
    :goto_b
    return-void

    .line 10341
    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 10342
    const v1, 0x186a1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 10343
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10345
    long-to-int v1, p3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 10346
    sget v1, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCnt_saved:I

    if-nez v1, :cond_28

    .line 10347
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b

    .line 10349
    :cond_28
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b
.end method

.method public startSmimeProcessing()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 9787
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v0, :cond_1e

    .line 9788
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    .line 9789
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 9799
    :cond_1d
    :goto_1d
    return-void

    .line 9790
    :cond_1e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v0, :cond_1d

    .line 9793
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "__attachment_message_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 9794
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    .line 9795
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1d

    .line 9797
    :cond_47
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V

    goto :goto_1d
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 5769
    const/4 v0, 0x1

    if-ne p2, v0, :cond_178

    .line 5770
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 5771
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    .line 5772
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 5774
    const-string v1, ""

    .line 5775
    const-string v0, ""

    .line 5776
    if-eqz v2, :cond_2b

    .line 5777
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    .line 5778
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 5779
    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->senderInfoForPhotoImage:Ljava/lang/String;

    .line 5782
    :cond_2b
    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-eqz v5, :cond_39

    const-string v5, ""

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 5783
    :cond_39
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0801f2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5787
    :goto_47
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->resetLayout()V

    .line 5788
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->resetLayout()V

    .line 5789
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v5}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->resetLayout()V

    .line 5791
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    .line 5792
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    .line 5793
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsOpenedRecipientInfo:Z

    .line 5801
    if-eqz v2, :cond_6f

    .line 5802
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setType(ILjava/lang/String;)V

    .line 5803
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v0, v5}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->addButton(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5806
    :cond_6f
    array-length v0, v3

    if-lez v0, :cond_9f

    .line 5807
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setType(ILjava/lang/String;)V

    .line 5808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    .line 5809
    const/4 v0, 0x0

    :goto_80
    array-length v1, v3

    if-ge v0, v1, :cond_9f

    .line 5810
    aget-object v1, v3, v0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    .line 5811
    aget-object v2, v3, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 5812
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v5, v1, v2, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->addButton(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5809
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 5785
    :cond_97
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_47

    .line 5816
    :cond_9f
    array-length v0, v4

    if-lez v0, :cond_c7

    .line 5817
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setType(ILjava/lang/String;)V

    .line 5818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    .line 5819
    const/4 v0, 0x0

    :goto_b0
    array-length v1, v4

    if-ge v0, v1, :cond_c7

    .line 5820
    aget-object v1, v4, v0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    .line 5821
    aget-object v2, v4, v0

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 5822
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->addButton(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5819
    add-int/lit8 v0, v0, 0x1

    goto :goto_b0

    .line 5826
    :cond_c7
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasToList:Z

    if-nez v0, :cond_377

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHasCcList:Z

    if-nez v0, :cond_377

    .line 5827
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnMoreInformation:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 5832
    :goto_d5
    const-string v0, "eas"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_ea

    .line 5833
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5836
    :cond_ea
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_110

    .line 5837
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_fb

    .line 5838
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5840
    :cond_fb
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_105

    .line 5841
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5843
    :cond_105
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_110

    .line 5844
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5848
    :cond_110
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 5850
    :try_start_117
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_147} :catch_37f

    .line 5858
    :goto_147
    const-string v0, "eas"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ad

    .line 5860
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagStatus:I

    .line 5862
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v1

    if-eqz v1, :cond_3a4

    .line 5863
    packed-switch v0, :pswitch_data_5a8

    .line 5891
    :goto_15c
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v0

    if-nez v0, :cond_178

    .line 5892
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentPager()Z

    move-result v0

    if-nez v0, :cond_178

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsPhone()Z

    move-result v0

    if-eqz v0, :cond_178

    .line 5893
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageOpenMode:I

    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    if-ne v0, v1, :cond_3eb

    .line 5894
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimateMessageViewOpen(Z)V

    .line 5907
    :cond_178
    :goto_178
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_4c1

    .line 5908
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    if-eqz v0, :cond_4a3

    .line 5910
    :try_start_184
    new-instance v0, Lcom/android/emailcommon/mail/PackedString;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 5911
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM dd,yyyy hh:mm a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5912
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5913
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x3c

    .line 5914
    const-string v3, "Meeting Req"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5915
    const-string v3, "DTSTART"

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5916
    const-string v4, "DTEND"

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5917
    const-string v5, "LOC"

    invoke-virtual {v0, v5}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5919
    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v5

    int-to-long v7, v2

    sub-long/2addr v5, v7

    .line 5920
    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v3

    int-to-long v7, v2

    sub-long v2, v3, v7

    .line 5922
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5923
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5924
    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5925
    const/4 v3, 0x0

    const/16 v5, 0xc

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5931
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_412

    .line 5932
    const-string v2, "Meeting Req"

    const-string v3, "Meeting ends same day"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    .line 5934
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    .line 5935
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5936
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5937
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5938
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    if-nez v1, :cond_403

    .line 5939
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5964
    :cond_24d
    :goto_24d
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationTextLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5965
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationTextLabel:Landroid/widget/TextView;

    const-string v2, "Location: "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5966
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5967
    const-string v1, "------------GS------------"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 2 meetingLocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5969
    if-eqz v0, :cond_49a

    .line 5970
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_27f
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_27f} :catch_40c

    .line 5993
    :goto_27f
    const-string v0, "eas"

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d4

    .line 5994
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4df

    .line 5995
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5996
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6004
    :goto_29c
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_4fc

    .line 6005
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6006
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6007
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6008
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6018
    :goto_2c0
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_52b

    .line 6019
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6024
    :goto_2ca
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v0, :cond_534

    .line 6025
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6033
    :cond_2d4
    :goto_2d4
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_308

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_308

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    if-lez v0, :cond_308

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_308

    .line 6034
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6035
    const/4 v0, 0x0

    .line 6037
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerb:I

    packed-switch v1, :pswitch_data_5b2

    .line 6051
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6053
    :goto_301
    if-eqz v0, :cond_308

    .line 6054
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLastVerbDateTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6081
    :cond_308
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_376

    .line 6082
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 6083
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x402c333333333333L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_595

    .line 6084
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v0

    .line 6085
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/irm/IRMEnforcer;->isIRMEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_582

    .line 6086
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_376

    .line 6087
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6088
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    .line 6089
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    .line 6090
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescription:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6093
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_36c

    .line 6094
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescription:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6096
    :cond_36c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$9;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageViewFragmentBase$9;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6124
    :cond_376
    :goto_376
    return-void

    .line 5829
    :cond_377
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mBtnMoreInformation:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_d5

    .line 5854
    :catch_37f
    move-exception v0

    .line 5855
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "updateHeaderView : Exception has occoured"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_147

    .line 5865
    :pswitch_389
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_15c

    .line 5868
    :pswitch_392
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_15c

    .line 5871
    :pswitch_39b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_15c

    .line 5875
    :cond_3a4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15c

    .line 5878
    :cond_3ad
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 5879
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3d7

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    :goto_3b5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5880
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSplitMode()Z

    move-result v0

    if-eqz v0, :cond_3e3

    sget-boolean v0, Lcom/android/email/activity/Welcome;->needFull:Z

    if-nez v0, :cond_3e3

    .line 5881
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3da

    .line 5882
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15c

    .line 5879
    :cond_3d7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_3b5

    .line 5884
    :cond_3da
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15c

    .line 5887
    :cond_3e3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15c

    .line 5895
    :cond_3eb
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageOpenMode:I

    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    if-ne v0, v1, :cond_3f7

    .line 5896
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimateMessageViewMove(Z)V

    goto/16 :goto_178

    .line 5897
    :cond_3f7
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageOpenMode:I

    sget v1, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    if-ne v0, v1, :cond_178

    .line 5898
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimateMessageViewMove(Z)V

    goto/16 :goto_178

    .line 5941
    :cond_403
    :try_start_403
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_40a
    .catch Ljava/lang/Exception; {:try_start_403 .. :try_end_40a} :catch_40c

    goto/16 :goto_24d

    .line 5974
    :catch_40c
    move-exception v0

    .line 5975
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_27f

    .line 5944
    :cond_412
    :try_start_412
    const-string v2, "Meeting Req"

    const-string v3, "Meeting does not end same day"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    .line 5946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime2:Ljava/lang/String;

    .line 5947
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5948
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5949
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5950
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_47f

    .line 5951
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    if-nez v1, :cond_476

    .line 5952
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24d

    .line 5954
    :cond_476
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24d

    .line 5956
    :cond_47f
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24d

    .line 5957
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime2:Ljava/lang/String;

    if-nez v1, :cond_491

    .line 5958
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24d

    .line 5960
    :cond_491
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->meetingTime2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24d

    .line 5972
    :cond_49a
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4a1
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_4a1} :catch_40c

    goto/16 :goto_27f

    .line 5978
    :cond_4a3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5979
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationTextLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5980
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5981
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_27f

    .line 5984
    :cond_4c1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeTextLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5985
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationTextLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5986
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingTimeText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5987
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingLocationText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_27f

    .line 5997
    :cond_4df
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    if-nez v0, :cond_4f3

    .line 5998
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5999
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29c

    .line 6001
    :cond_4f3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_29c

    .line 6009
    :cond_4fc
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageType:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_522

    .line 6010
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6011
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6012
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPriorityIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6013
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFavoriteIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2c0

    .line 6015
    :cond_522
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTypeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2c0

    .line 6021
    :cond_52b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSignIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2ca

    .line 6027
    :cond_534
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mEncryptionIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2d4

    .line 6039
    :pswitch_53d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0803e2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_301

    .line 6043
    :pswitch_554
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0803e3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_301

    .line 6047
    :pswitch_56b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v1, 0x7f0803e4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDateTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_301

    .line 6113
    :cond_582
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_376

    .line 6114
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6115
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_376

    .line 6118
    :cond_595
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    if-eqz v0, :cond_376

    .line 6119
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mPermission:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6120
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_376

    .line 5863
    :pswitch_data_5a8
    .packed-switch 0x0
        :pswitch_389
        :pswitch_392
        :pswitch_39b
    .end packed-switch

    .line 6037
    :pswitch_data_5b2
    .packed-switch 0x1
        :pswitch_53d
        :pswitch_554
        :pswitch_56b
    .end packed-switch
.end method

.method protected updateTabFlags(I)V
    .registers 10
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1987
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    .line 1989
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3b

    .line 1990
    new-instance v3, Lcom/android/emailcommon/mail/PackedString;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    if-nez v0, :cond_23

    .line 1992
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageViewFragment:Landroid/view/View;

    const v4, 0x7f1001f4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    .line 1994
    :cond_23
    const-string v0, "PROPOSE_NEW_TIME"

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1995
    if-eqz v0, :cond_c8

    .line 1996
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_bb

    .line 1997
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2005
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2007
    :cond_3b
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_4a

    .line 2008
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurColorCode:I

    if-ne v0, v5, :cond_cf

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v5

    :goto_47
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setResponseOptions(I)V

    .line 2011
    :cond_4a
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_d5

    move v0, v1

    .line 2012
    :goto_4f
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-static {v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2013
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_d8

    move v0, v1

    :goto_5b
    invoke-static {v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2014
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_da

    move v0, v1

    :goto_65
    invoke-static {v3, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2016
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0007

    iget v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2022
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextMessageTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_a0

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_a0

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_a1

    :cond_a0
    move v2, v1

    :cond_a1
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 2025
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 2026
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2027
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTextInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2030
    :cond_ba
    return-void

    .line 1998
    :cond_bb
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_36

    .line 2000
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_36

    .line 2003
    :cond_c8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mProposeNewTime:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_36

    .line 2008
    :cond_cf
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFontColorCode:[I

    aget v0, v0, v2

    goto/16 :goto_47

    :cond_d5
    move v0, v2

    .line 2011
    goto/16 :goto_4f

    :cond_d8
    move v0, v2

    .line 2013
    goto :goto_5b

    :cond_da
    move v0, v2

    .line 2014
    goto :goto_65
.end method
