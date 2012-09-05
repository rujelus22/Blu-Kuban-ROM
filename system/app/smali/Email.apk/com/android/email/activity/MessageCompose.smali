.class public Lcom/android/email/activity/MessageCompose;
.super Landroid/app/Activity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCompose$ItemView;,
        Lcom/android/email/activity/MessageCompose$SMemoItem;,
        Lcom/android/email/activity/MessageCompose$SMemoAdapter;,
        Lcom/android/email/activity/MessageCompose$AddAddessTask;,
        Lcom/android/email/activity/MessageCompose$ControllerResults;,
        Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;,
        Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;,
        Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;,
        Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;,
        Lcom/android/email/activity/MessageCompose$MessageComposeListener;,
        Lcom/android/email/activity/MessageCompose$AccountInfoItem;,
        Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;,
        Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;,
        Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;,
        Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;,
        Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;,
        Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;,
        Lcom/android/email/activity/MessageCompose$LoadMessageTask;,
        Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

.field private static final ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

.field public static Notificationdata:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefaultFontSize:I

.field public static mIsSpellCheckMode:Z

.field private static mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

.field private static mStartWithIntent:Landroid/content/Intent;

.field private static mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

.field public static note:Landroid/app/Notification;

.field public static notificationManager:Landroid/app/NotificationManager;

.field private static sSaveInProgress:Z

.field private static final sSaveInProgressCondition:Ljava/lang/Object;

.field private static spellcheck_x:I

.field private static spellcheck_y:I

.field private static tLastSpellcheck:J


# instance fields
.field private final DPMReceiver:Landroid/content/BroadcastReceiver;

.field private bIsDeliveryChecked:Z

.field private bIsEncryptChecked:Z

.field private bIsHtmlComposerFocused:Z

.field private bIsReadChecked:Z

.field private bIsSignChecked:Z

.field private bUserDictionaryPushedToWebkit:Z

.field private irmRemoveView:Landroid/widget/ImageView;

.field private isFirstCall:Z

.field private isPausedBefore:Z

.field private isSyncedDraftMessage:Z

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountCheckDialog:Landroid/app/AlertDialog;

.field private mAccountDialog:Landroid/app/AlertDialog;

.field private mAccountInfoArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageCompose$AccountInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAction:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBar_Title:Landroid/widget/TextView;

.field private mActionBar_attach:Landroid/widget/RelativeLayout;

.field private mActionBar_cancel:Landroid/widget/RelativeLayout;

.field private mActionBar_mail:Landroid/widget/RelativeLayout;

.field private mActionBar_save:Landroid/widget/RelativeLayout;

.field private mActionBar_smemo:Landroid/widget/RelativeLayout;

.field private mAddAddressContactButtonTask:Landroid/os/AsyncTask;

.field private mAddAddressFromIntentTask:Landroid/os/AsyncTask;

.field private mAddAddressProgressDialog:Landroid/app/ProgressDialog;

.field private mAddAttachmentDialog:Landroid/app/AlertDialog;

.field private mAddAttachmentTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

.field private mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

.field private mApp:Lcom/android/email/Email;

.field private final mAttachmentCnt:I

.field private mAttachmentDeleteAllDialog:Landroid/app/AlertDialog;

.field private mAttachmentLayout:Landroid/widget/LinearLayout;

.field private mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

.field private mAttachmentSummaryUpDownBtn:Landroid/widget/ImageView;

.field private mAttachmentTotalCount:I

.field private mAttachmentTotalSize:I

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mAttatchment_fetched:I

.field private mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mBccContactBtn:Landroid/widget/ImageButton;

.field private mBccEditLayout:Landroid/widget/RelativeLayout;

.field private mBccEditView:Lcom/android/email/activity/AddressTextView;

.field private mBccLayout:Landroid/widget/RelativeLayout;

.field private mBccSummaryText:Landroid/widget/TextView;

.field private mBccTitleText:Landroid/widget/TextView;

.field private mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mCcContactBtn:Landroid/widget/ImageButton;

.field private mCcEditLayout:Landroid/widget/RelativeLayout;

.field private mCcEditView:Lcom/android/email/activity/AddressTextView;

.field private mCcLayout:Landroid/widget/RelativeLayout;

.field private mCcSummaryText:Landroid/widget/TextView;

.field private mCcTitleText:Landroid/widget/TextView;

.field private mChangeFontSize:I

.field private mCntPressedSemicolon:I

.field private mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

.field private mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

.field private mCompose_header_layout:Landroid/widget/LinearLayout;

.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageCompose$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;

.field private mCurrentOrientation:I

.field private mDoNotSaveDraft:Z

.field private mDownloadSmimeAttachment:Z

.field private mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mDraftNeedsSaving:Z

.field private mDummy_view:Landroid/widget/LinearLayout;

.field private mEditFromBubble:Z

.field private mEmbeddedImageDownload:Z

.field private mEncryptionIcon:Landroid/widget/ImageView;

.field private mFromLayout:Landroid/widget/LinearLayout;

.field private mFromLayoutMode:I

.field private mFromSummaryText:Landroid/widget/TextView;

.field private mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

.field private final mHandler:Landroid/os/Handler;

.field private mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

.field private final mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

.field private mHtmlComposerView:Landroid/webkit/HtmlComposerView;

.field private mIgnoreDraftNeedsSaving:Z

.field private final mInitialText:Ljava/lang/StringBuffer;

.field private mInlineImageCallbackCount:I

.field private mInlineImageCount:I

.field private mInlineImageDialog:Landroid/app/ProgressDialog;

.field private mInsertTextOrImageDialog:Landroid/app/AlertDialog;

.field private mIrmIcon:Landroid/widget/ImageView;

.field private mIrmWait:Landroid/app/ProgressDialog;

.field private mIsBlackThemeUse:Z

.field private mIsDeliveryChecked:Z

.field private final mIsDetectedUserAction:Z

.field private mIsEncryptChecked:Z

.field private mIsExistFile:Z

.field private mIsOriginMsgEdited:Z

.field private mIsQ1BasedModel:Z

.field private mIsReadChecked:Z

.field private mIsSignChecked:Z

.field private mLastDeleteBtn:Landroid/widget/ImageView;

.field private mLayout_ToolBarView:Landroid/widget/LinearLayout;

.field private mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

.field private mLoadAttachmentId:J

.field private mLoadAttachmentName:Ljava/lang/String;

.field private mLoadAttachmentSave:Z

.field private mLoadAttachmentsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "[",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Void;",
            "[",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadMessageTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadMoreDialog:Landroid/app/ProgressDialog;

.field private mLocationMode:I

.field private mMessageId:J

.field private mMessageLoaded:Z

.field private mOldBGColor:I

.field private mOldFontColor:I

.field private mOldPicBGColor:I

.field private mOldPicFontColor:I

.field private mOnSend:Z

.field private mOriginalMessageId:J

.field private mOriginalMessageIdForIRM:J

.field mPageFinished:Z

.field private mPriority:I

.field private mPriorityDialog:Landroid/app/AlertDialog;

.field private mPriorityHighIcon:Landroid/widget/ImageView;

.field private mPriorityLowIcon:Landroid/widget/ImageView;

.field private mProgressDialog1:Landroid/app/ProgressDialog;

.field private final mProgressSpellChecking:Landroid/app/ProgressDialog;

.field private final mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

.field private mQuotedText:Landroid/webkit/HtmlComposerView;

.field private mQuotedTextBar:Landroid/view/View;

.field private mQuotedTextDelete:Landroid/widget/ImageView;

.field private mReceiptsOptionsDialog:Landroid/app/AlertDialog;

.field private mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

.field private mSaveDialog:Landroid/app/AlertDialog;

.field private mSaveEnabled:Z

.field private final mScrollCount:I

.field private mScrollView:Lcom/android/email/ExtendedScrollView;

.field private mScrolledDistance:F

.field private mSecurityOptions:Z

.field private mSecurityOptionsDialog:Landroid/app/AlertDialog;

.field private mSecurityPolicyDialog:Landroid/app/AlertDialog;

.field private mSelectedQuickResponseStringType:I

.field private mSelectedResizeType:I

.field private mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

.field private mShouldHaveFocus:Z

.field private mSignIcon:Landroid/widget/ImageView;

.field private mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

.field private mSmimeProgressDialog:Landroid/app/ProgressDialog;

.field private mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mSourceMessageProcessed:Z

.field private mSubjectTitleText:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/EditText;

.field private mTemplateDescription:Ljava/lang/String;

.field private mTemplateId:Ljava/lang/String;

.field private mTemplateName:Ljava/lang/String;

.field private mTextSelectorForHtmlComposer:Lcom/android/email/TextSelectorForHtmlComposer;

.field private mTextSelectorForQuotedText:Lcom/android/email/TextSelectorForHtmlComposer;

.field private mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

.field private mToContactBtn:Landroid/widget/ImageButton;

.field private mToEditLayout:Landroid/widget/RelativeLayout;

.field private mToEditView:Lcom/android/email/activity/AddressTextView;

.field private mToLayout:Landroid/widget/RelativeLayout;

.field private mToSummaryText:Landroid/widget/TextView;

.field private mToTitleText:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mToolBarView:Lcom/android/email/activity/ToolBarView;

.field private mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

.field private mToolbarLayout:Landroid/widget/RelativeLayout;

.field private mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

.field private mTouchEventY:F

.field public m_bIsSoftInputPadShowing:Z

.field private misChangedFontBGColor:Z

.field private misChangedFontColor:Z

.field private misspelledWordSelected:Z

.field private final reqReceiver:Landroid/content/BroadcastReceiver;

.field private final sendorsave:Z

.field private final showMoreHandler:Landroid/os/Handler;

.field private smimeutils:Lcom/android/email/SMIMEHelperUtils;

.field suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private templateDescription:Landroid/widget/TextView;

.field private templateDescriptionLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 275
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    const-string v1, "_size"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    .line 279
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    .line 382
    sput-boolean v2, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    .line 385
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    .line 539
    sput-object v3, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    .line 540
    sput-object v3, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    .line 548
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    .line 723
    sput-object v3, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    .line 781
    const/16 v0, 0x18

    sput v0, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    .line 7896
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->Notificationdata:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 223
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 292
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    .line 390
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 406
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 428
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mPageFinished:Z

    .line 435
    const/16 v0, 0x3f1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    .line 438
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z

    .line 462
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsBlackThemeUse:Z

    .line 463
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsQ1BasedModel:Z

    .line 468
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    .line 470
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    .line 472
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    .line 475
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    .line 476
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    .line 478
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    .line 480
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    .line 482
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    .line 484
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    .line 487
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentDeleteAllDialog:Landroid/app/AlertDialog;

    .line 491
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;

    .line 492
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    .line 493
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;

    .line 532
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDoNotSaveDraft:Z

    .line 543
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;

    .line 550
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z

    .line 551
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bUserDictionaryPushedToWebkit:Z

    .line 559
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    .line 562
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    .line 567
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    .line 570
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    .line 571
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    .line 583
    iput v4, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    .line 585
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    .line 587
    iput v5, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    .line 591
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    .line 608
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mOldFontColor:I

    .line 609
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mOldPicFontColor:I

    .line 610
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mOldBGColor:I

    .line 611
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mOldPicBGColor:I

    .line 612
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->misChangedFontColor:Z

    .line 613
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->misChangedFontBGColor:Z

    .line 682
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsDetectedUserAction:Z

    .line 683
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    .line 686
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 687
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 688
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    .line 689
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    .line 691
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    .line 694
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    .line 695
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    .line 696
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    .line 697
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    .line 701
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    .line 709
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 711
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 716
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    .line 719
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z

    .line 726
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    .line 728
    new-instance v0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    .line 730
    new-instance v0, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    .line 732
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForHtmlComposer:Lcom/android/email/TextSelectorForHtmlComposer;

    .line 734
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForQuotedText:Lcom/android/email/TextSelectorForHtmlComposer;

    .line 748
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mScrollCount:I

    .line 749
    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mTouchEventY:F

    .line 750
    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    .line 755
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    .line 756
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    .line 758
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    .line 759
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    .line 763
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageId:J

    .line 765
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    .line 767
    iput v5, p0, Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I

    .line 769
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->isPausedBefore:Z

    .line 774
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->m_bIsSoftInputPadShowing:Z

    .line 783
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mChangeFontSize:I

    .line 785
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 787
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mShouldHaveFocus:Z

    .line 789
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    .line 1110
    new-instance v0, Lcom/android/email/activity/MessageCompose$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$1;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->reqReceiver:Landroid/content/BroadcastReceiver;

    .line 1565
    new-instance v0, Lcom/android/email/activity/MessageCompose$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$2;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    .line 3392
    new-instance v0, Lcom/android/email/activity/MessageCompose$22;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$22;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->showMoreHandler:Landroid/os/Handler;

    .line 5994
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttatchment_fetched:I

    .line 5996
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->sendorsave:Z

    .line 5998
    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentCnt:I

    .line 8195
    new-instance v0, Lcom/android/email/activity/MessageCompose$27;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$27;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    .line 14467
    return-void
.end method

.method private AddComposeToMe()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 7606
    .line 7608
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsStringArray()[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 7610
    :goto_a
    array-length v5, v4

    if-ge v0, v5, :cond_1f

    .line 7611
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v2, v3

    .line 7610
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7616
    :cond_1f
    if-nez v2, :cond_33

    .line 7617
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 7618
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 7619
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 7623
    :goto_32
    return-void

    .line 7621
    :cond_33
    const v0, 0x7f08021e

    invoke-direct {p0, v0, v3}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_32
.end method

.method public static ClearComposerIntent()V
    .registers 1

    .prologue
    .line 792
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    .line 793
    return-void
.end method

.method public static GetComposerIntent()Landroid/content/Intent;
    .registers 1

    .prologue
    .line 777
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private IsEAS()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1052
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1054
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_6

    .line 1066
    :cond_5
    :goto_5
    return v3

    .line 1057
    :cond_6
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v1

    .line 1061
    .local v1, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v1, :cond_5

    .line 1064
    iget-object v2, v1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 1066
    .local v2, scheme:Ljava/lang/String;
    const-string v3, "eas"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_5
.end method

.method private IsEAS2010()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1070
    const-wide/16 v0, 0x0

    .line 1072
    .local v0, versionDouble:D
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v3, :cond_8

    .line 1077
    :cond_7
    :goto_7
    return v2

    .line 1074
    :cond_8
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 1075
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1077
    :cond_1a
    const-wide/high16 v3, 0x402c

    cmpl-double v3, v0, v3

    if-ltz v3, :cond_7

    const/4 v2, 0x1

    goto :goto_7
.end method

.method private IsSnc()Z
    .registers 4

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1084
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_6

    .line 1085
    const/4 v1, 0x0

    .line 1087
    :goto_5
    return v1

    :cond_6
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v1

    goto :goto_5
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollView()V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/email/activity/MessageCompose;)Landroid/os/AsyncTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/android/email/activity/MessageCompose;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10202(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$10300(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mProgressSpellChecking:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/email/activity/MessageCompose;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getComposerActivityContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/email/activity/MessageCompose;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    return-void
.end method

.method static synthetic access$10802(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    return p1
.end method

.method static synthetic access$10900(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/email/activity/MessageCompose;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->changeSmimeOptions(ZZ)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    return v0
.end method

.method static synthetic access$11502(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    return p1
.end method

.method static synthetic access$11600(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    return v0
.end method

.method static synthetic access$11602(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    return p1
.end method

.method static synthetic access$11800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$AccountInfoItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isEnabledGPS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/android/email/activity/MessageCompose;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->startAttachmentActivity(I)V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    return v0
.end method

.method static synthetic access$12202(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    return p1
.end method

.method static synthetic access$12300(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    return v0
.end method

.method static synthetic access$12302(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    return p1
.end method

.method static synthetic access$12402(Lcom/android/email/activity/MessageCompose;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$12500(Lcom/android/email/activity/MessageCompose;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onAddTextActivity(I)V

    return-void
.end method

.method static synthetic access$12602(Lcom/android/email/activity/MessageCompose;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$12700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$12702(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$12900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller$Result;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13100(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I

    return v0
.end method

.method static synthetic access$13102(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mSelectedQuickResponseStringType:I

    return p1
.end method

.method static synthetic access$13200(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    return v0
.end method

.method static synthetic access$13202(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    return p1
.end method

.method static synthetic access$13300(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;III)Landroid/net/Uri;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$13500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    return-object v0
.end method

.method static synthetic access$13502(Lcom/android/email/activity/MessageCompose;Lcom/android/email/SMIMEHelperUtils;)Lcom/android/email/SMIMEHelperUtils;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    return-object p1
.end method

.method static synthetic access$13600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/android/email/activity/MessageCompose;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentId:J

    return-wide v0
.end method

.method static synthetic access$13702(Lcom/android/email/activity/MessageCompose;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-wide p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentId:J

    return-wide p1
.end method

.method static synthetic access$13802(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentSave:Z

    return p1
.end method

.method static synthetic access$13902(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z

    return v0
.end method

.method static synthetic access$14100(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->doSpellCheck()V

    return-void
.end method

.method static synthetic access$14200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ColorPickerDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mOldFontColor:I

    return v0
.end method

.method static synthetic access$14302(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mOldFontColor:I

    return p1
.end method

.method static synthetic access$14400(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mOldPicFontColor:I

    return v0
.end method

.method static synthetic access$14402(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mOldPicFontColor:I

    return p1
.end method

.method static synthetic access$14500(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->misChangedFontColor:Z

    return v0
.end method

.method static synthetic access$14502(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->misChangedFontColor:Z

    return p1
.end method

.method static synthetic access$14600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ColorPickerDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mOldBGColor:I

    return v0
.end method

.method static synthetic access$14702(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mOldBGColor:I

    return p1
.end method

.method static synthetic access$14800(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mOldPicBGColor:I

    return v0
.end method

.method static synthetic access$14802(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mOldPicBGColor:I

    return p1
.end method

.method static synthetic access$14900(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->misChangedFontBGColor:Z

    return v0
.end method

.method static synthetic access$14902(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->misChangedFontBGColor:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$15002(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    sput-wide p0, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    return-wide p0
.end method

.method static synthetic access$15100()Lcom/android/email/activity/utils/spellcheck/UserDictionary;
    .registers 1

    .prologue
    .line 223
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    return-object v0
.end method

.method static synthetic access$15102(Lcom/android/email/activity/utils/spellcheck/UserDictionary;)Lcom/android/email/activity/utils/spellcheck/UserDictionary;
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    sput-object p0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    return-object p0
.end method

.method static synthetic access$15200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$15202(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$15400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$15500(Lcom/android/email/activity/MessageCompose;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    return-void
.end method

.method static synthetic access$15600(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->focusOutRecipient()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageCompose;)Ljava/lang/StringBuffer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageCompose;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$3100()I
    .registers 1

    .prologue
    .line 223
    sget v0, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ActionBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    return p1
.end method

.method static synthetic access$3408(Lcom/android/email/activity/MessageCompose;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mCntPressedSemicolon:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mEditFromBubble:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/EmailAddressAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageCompose;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->showMoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAddressFromGroup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/EmailAddressAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/EmailAddressAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    return-object v0
.end method

.method static synthetic access$4400()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 223
    sget-object v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500()Z
    .registers 1

    .prologue
    .line 223
    sget-boolean v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    return v0
.end method

.method static synthetic access$4502(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    sput-boolean p0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    return p0
.end method

.method static synthetic access$4602(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    return p1
.end method

.method static synthetic access$4702(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowSecurityPolicyDialog()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onLoadMoreMessage()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageCompose;JI)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->hasInlineDataImage(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    return p1
.end method

.method static synthetic access$5408(Lcom/android/email/activity/MessageCompose;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    return v0
.end method

.method static synthetic access$5502(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    return p1
.end method

.method static synthetic access$5508(Lcom/android/email/activity/MessageCompose;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAccountSetup()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ControllerResultUiThreadWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/email/activity/MessageCompose;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageCompose;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    return-void
.end method

.method static synthetic access$7102(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/email/activity/MessageCompose;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    return-wide v0
.end method

.method static synthetic access$7202(Lcom/android/email/activity/MessageCompose;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-wide p1, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    return-wide p1
.end method

.method static synthetic access$7300(Lcom/android/email/activity/MessageCompose;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->applyIRMresctrition(J)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/email/activity/MessageCompose;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isPausedBefore:Z

    return v0
.end method

.method static synthetic access$7800(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsSnc()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS2010()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8102(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;)Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptions:Z

    return v0
.end method

.method static synthetic access$8300([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->send()V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/email/activity/MessageCompose;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/email/activity/MessageCompose;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    return v0
.end method

.method static synthetic access$8902(Lcom/android/email/activity/MessageCompose;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscard()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic access$9100(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    return v0
.end method

.method static synthetic access$9200(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z

    return v0
.end method

.method static synthetic access$9702(Lcom/android/email/activity/MessageCompose;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$9802(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSmimeProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$9900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    return-object p1
.end method

.method public static actionCompose(Landroid/content/Context;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 832
    :try_start_0
    const-string v0, "Email"

    const-string v1, "[Email_log] actionCompose IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 834
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 835
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 836
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    .line 843
    :goto_18
    return-void

    .line 837
    :catch_19
    move-exception v0

    .line 841
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public static actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 873
    const/high16 v0, 0x2400

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 874
    const-string v0, "account_id"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 876
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_d} :catch_f

    .line 877
    const/4 v0, 0x1

    .line 883
    :goto_e
    return v0

    .line 878
    :catch_f
    move-exception v0

    .line 882
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 883
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 856
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 857
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 859
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 860
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_1a

    .line 861
    const/4 v0, 0x1

    .line 867
    :goto_19
    return v0

    .line 862
    :catch_1a
    move-exception v0

    .line 866
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 867
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static actionEditDraft(Landroid/content/Context;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 947
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 948
    return-void
.end method

.method public static actionEmailDoc(Landroid/content/Context;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 932
    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 933
    return-void
.end method

.method public static actionForward(Landroid/content/Context;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 921
    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 922
    return-void
.end method

.method public static actionMeetingResponse(Landroid/content/Context;JI)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 909
    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;JI)V

    .line 910
    return-void
.end method

.method public static actionProposeNewTime(Landroid/content/Context;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 901
    const-string v0, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 902
    return-void
.end method

.method public static actionReply(Landroid/content/Context;JZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 896
    if-eqz p3, :cond_8

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    :goto_4
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 897
    return-void

    .line 896
    :cond_8
    const-string v0, "com.android.email.intent.action.REPLY"

    goto :goto_4
.end method

.method private addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 4518
    return-void
.end method

.method private addAddress(Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/lang/String;)V
    .registers 4
    .parameter "bubbleLayout"
    .parameter "address"

    .prologue
    .line 4492
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 4496
    :cond_8
    :goto_8
    return-void

    .line 4495
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto :goto_8
.end method

.method private addAddressFromGroup(Ljava/lang/String;)V
    .registers 13
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 14243
    .line 14244
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-ne v0, v10, :cond_7b

    .line 14245
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 14246
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    move-object v8, v0

    .line 14258
    :goto_12
    if-eqz p1, :cond_9e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 14259
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v6, v7

    .line 14260
    :goto_25
    array-length v0, v9

    if-ge v6, v0, :cond_9e

    .line 14261
    aget-object v0, v9, v6

    .line 14263
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "primary_emails"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 14266
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "data1"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v4, "display_name"

    aput-object v4, v2, v0

    .line 14270
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 14274
    :try_start_5e
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_9f

    .line 14275
    const v0, 0x7f0805f7

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_b7

    .line 14286
    :cond_6f
    const-string v0, ""

    invoke-virtual {v8, v0}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 14287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14260
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_25

    .line 14247
    :cond_7b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-ne v0, v10, :cond_8b

    .line 14248
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 14249
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    move-object v8, v0

    goto :goto_12

    .line 14250
    :cond_8b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-ne v0, v10, :cond_9c

    .line 14251
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 14252
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    move-object v8, v0

    goto/16 :goto_12

    .line 14254
    :cond_9c
    iput-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 14291
    :cond_9e
    return-void

    .line 14278
    :cond_9f
    :try_start_9f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v7

    .line 14279
    :goto_a3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_6f

    .line 14280
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 14281
    invoke-direct {p0, v8, v2}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 14282
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b4
    .catchall {:try_start_9f .. :try_end_b4} :catchall_b7

    .line 14279
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 14286
    :catchall_b7
    move-exception v0

    const-string v2, ""

    invoke-virtual {v8, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 14287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14286
    throw v0
.end method

.method private addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V
    .registers 9
    .parameter "bubbleLayout"
    .parameter "addresses"

    .prologue
    .line 4472
    if-nez p2, :cond_3

    .line 4478
    :cond_2
    return-void

    .line 4475
    :cond_3
    move-object v1, p2

    .local v1, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 4476
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 4475
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V
    .registers 8
    .parameter "bubbleLayout"
    .parameter "addresses"

    .prologue
    .line 4481
    if-nez p2, :cond_3

    .line 4489
    :cond_2
    return-void

    .line 4484
    :cond_3
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 4485
    .local v3, oneAddress:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_14

    .line 4486
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 4484
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private addAllAddressFromEditText(Z)V
    .registers 3
    .parameter "animationOn"

    .prologue
    .line 11042
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 11043
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    .line 11045
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 11046
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    .line 11048
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    .line 11049
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    .line 11051
    :cond_21
    return-void
.end method

.method private addAttachment(Landroid/net/Uri;)I
    .registers 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 12590
    new-instance v0, Lcom/android/email/activity/MessageCompose$47;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$47;-><init>(Lcom/android/email/activity/MessageCompose;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$47;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    .line 12690
    return v2
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .registers 3
    .parameter "attachment"

    .prologue
    .line 12582
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)I

    move-result v0

    return v0
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)I
    .registers 5
    .parameter "attachment"
    .parameter "isExchange"

    .prologue
    .line 12283
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12289
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 12290
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12292
    :cond_20
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mIsExistFile:Z

    .line 12294
    :try_start_25
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_69

    .line 12295
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 12297
    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 12298
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v1}, Lcom/android/email/EmailUtility;->IsDRMFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 12300
    const/4 v1, 0x2

    .line 12555
    :goto_50
    return v1

    .line 12304
    :cond_51
    const-string v1, "application/vnd.oma.drm.content"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5a} :catch_5f

    move-result v1

    if-eqz v1, :cond_69

    .line 12305
    const/4 v1, 0x2

    goto :goto_50

    .line 12308
    :catch_5f
    move-exception v1

    .line 12309
    const-string v2, "Compose >>"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12313
    :cond_69
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-nez v1, :cond_72

    .line 12314
    const/16 v1, 0x8

    goto :goto_50

    .line 12321
    :cond_72
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v9

    .line 12323
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    int-to-long v3, v9

    cmp-long v1, v1, v3

    if-lez v1, :cond_81

    .line 12324
    const/4 v1, 0x1

    goto :goto_50

    .line 12327
    :cond_81
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 12328
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 12329
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12330
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-le v1, v9, :cond_d8

    .line 12331
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 12332
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 12333
    const/4 v1, 0x1

    goto/16 :goto_50

    .line 12336
    :cond_d8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    const/16 v2, 0xfa

    if-le v1, v2, :cond_fd

    .line 12337
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 12338
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 12339
    const/16 v1, 0x10

    goto/16 :goto_50

    .line 12345
    :cond_fd
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mIsBlackThemeUse:Z

    if-eqz v1, :cond_1d8

    .line 12346
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040083

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    .line 12353
    :goto_114
    const v1, 0x7f1000e2

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12354
    const v2, 0x7f1000e1

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 12355
    const v2, 0x7f100193

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 12356
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 12361
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->IsSnc()Z

    move-result v3

    if-eqz v3, :cond_1eb

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_1eb

    const/4 v3, 0x1

    .line 12362
    :goto_140
    if-nez p2, :cond_144

    if-eqz v3, :cond_149

    .line 12363
    :cond_144
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12365
    :cond_149
    if-eqz v3, :cond_14b

    .line 12372
    :cond_14b
    const v3, 0x7f100192

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/ImageView;

    .line 12374
    invoke-direct/range {p0 .. p1}, Lcom/android/email/activity/MessageCompose;->getPreviewImageOfAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12388
    const-string v3, "Compose >>"

    const-string v5, "In case of attaching vcf: start"

    invoke-static {v3, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12389
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v3, :cond_4bb

    .line 12390
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const-string v5, ".vcf"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_183

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v5, "com.android.contacts/contacts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_363

    :cond_183
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v10, 0x0

    cmp-long v3, v5, v10

    if-nez v3, :cond_363

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_363

    .line 12396
    const-wide/16 v6, 0x0

    .line 12398
    const/4 v5, 0x0

    .line 12399
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 12401
    sget-boolean v10, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v10, :cond_1bc

    .line 12402
    const-string v10, "Compose >>"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "case 1: fileUri = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12406
    :cond_1bc
    :try_start_1bc
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 12407
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 12409
    const/16 v3, 0xff

    new-array v3, v3, [B

    .line 12410
    if-eqz v5, :cond_1ee

    .line 12411
    :goto_1ce
    const/4 v12, -0x1

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_1d2
    .catchall {:try_start_1bc .. :try_end_1d2} :catchall_323
    .catch Ljava/io/FileNotFoundException; {:try_start_1bc .. :try_end_1d2} :catch_2a1
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1d2} :catch_2e2

    move-result v13

    if-eq v12, v13, :cond_1ee

    .line 12412
    int-to-long v12, v13

    add-long/2addr v6, v12

    goto :goto_1ce

    .line 12349
    :cond_1d8
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040086

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_114

    .line 12361
    :cond_1eb
    const/4 v3, 0x0

    goto/16 :goto_140

    .line 12415
    :cond_1ee
    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-lez v3, :cond_1f8

    .line 12416
    :try_start_1f4
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 12417
    :cond_1f8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 12418
    const-string v3, "Compose >>"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Total Elapsed time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v10, v12, v10

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_220
    .catchall {:try_start_1f4 .. :try_end_220} :catchall_323
    .catch Ljava/io/FileNotFoundException; {:try_start_1f4 .. :try_end_220} :catch_2a1
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_220} :catch_2e2

    .line 12426
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-lez v3, :cond_572

    .line 12427
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 12428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v7, v10

    invoke-static {v6, v7}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12435
    :goto_25b
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 12437
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v5, v3

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v5, v10

    long-to-int v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 12438
    const-string v3, "Compose >>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attachment uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12439
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-le v3, v9, :cond_3d6

    .line 12440
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v1, v1

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 12441
    const/4 v1, 0x1

    goto/16 :goto_50

    .line 12419
    :catch_2a1
    move-exception v3

    .line 12421
    :try_start_2a2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2a5
    .catchall {:try_start_2a2 .. :try_end_2a5} :catchall_323

    .line 12426
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-lez v3, :cond_560

    .line 12427
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 12428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v7, v10

    invoke-static {v6, v7}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25b

    .line 12422
    :catch_2e2
    move-exception v3

    .line 12424
    :try_start_2e3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e6
    .catchall {:try_start_2e3 .. :try_end_2e6} :catchall_323

    .line 12426
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-lez v3, :cond_569

    .line 12427
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 12428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v7, v10

    invoke-static {v6, v7}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25b

    .line 12426
    :catchall_323
    move-exception v2

    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    if-lez v3, :cond_557

    .line 12427
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 12428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v6

    invoke-static {v4, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12435
    :goto_35f
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 12426
    throw v2

    .line 12443
    :cond_363
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v9, 0x0

    cmp-long v3, v5, v9

    if-nez v3, :cond_488

    .line 12444
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 12446
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_391

    .line 12447
    const-string v5, "Compose >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "case 2: fileUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12450
    :cond_391
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12451
    if-eqz v5, :cond_3a5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3a5

    .line 12452
    const/4 v1, 0x4

    goto/16 :goto_50

    .line 12454
    :cond_3a5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v6

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12464
    :cond_3d6
    :goto_3d6
    const-string v3, "Compose >>"

    const-string v5, "In case of attaching vcf: end"

    invoke-static {v3, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 12467
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12468
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 12469
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12470
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 12471
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12472
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 12473
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/MessageCompose;->mLastDeleteBtn:Landroid/widget/ImageView;

    .line 12474
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12476
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 12477
    invoke-virtual {v4, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 12484
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 12485
    if-lez v1, :cond_415

    .line 12490
    :cond_415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12491
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 12494
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_485

    .line 12495
    const/4 v2, 0x0

    .line 12497
    if-eqz p4, :cond_553

    .line 12500
    :try_start_42b
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v3

    .line 12501
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 12503
    if-eqz v1, :cond_584

    .line 12505
    const/16 v10, 0x27

    .line 12506
    const/16 v9, 0x27

    .line 12508
    if-eqz v3, :cond_581

    .line 12509
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 12510
    int-to-float v2, v3

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 12511
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    .line 12514
    :goto_46e
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 12516
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 12520
    if-le v10, v2, :cond_57e

    .line 12523
    :goto_478
    if-le v9, v1, :cond_57b

    .line 12528
    :goto_47a
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v1}, Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_47f
    .catch Ljava/io/FileNotFoundException; {:try_start_42b .. :try_end_47f} :catch_4ee
    .catch Ljava/lang/OutOfMemoryError; {:try_start_42b .. :try_end_47f} :catch_513
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42b .. :try_end_47f} :catch_533

    move-result-object v1

    .line 12550
    :goto_480
    if-eqz v1, :cond_485

    .line 12551
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12555
    :cond_485
    const/4 v1, 0x0

    goto/16 :goto_50

    .line 12457
    :cond_488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v6

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3d6

    .line 12461
    :cond_4bb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-float v6, v6

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3d6

    .line 12531
    :catch_4ee
    move-exception v1

    .line 12532
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: addAttachment(),File not found \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12534
    const/4 v1, 0x0

    .line 12535
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/email/activity/MessageCompose;->mIsExistFile:Z

    goto/16 :goto_480

    .line 12536
    :catch_513
    move-exception v1

    .line 12537
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: addAttachment().Thumnail Out of Memory \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12539
    const/4 v1, 0x0

    .line 12544
    goto/16 :goto_480

    .line 12540
    :catch_533
    move-exception v1

    .line 12541
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: addAttachment().Illegal Argument \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12543
    const/4 v1, 0x0

    goto/16 :goto_480

    :cond_553
    move-object/from16 v1, p3

    .line 12547
    goto/16 :goto_480

    .line 12433
    :cond_557
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35f

    :cond_560
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25b

    :cond_569
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25b

    :cond_572
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25b

    :cond_57b
    move v1, v9

    goto/16 :goto_47a

    :cond_57e
    move v2, v10

    goto/16 :goto_478

    :cond_581
    move-object v3, v1

    goto/16 :goto_46e

    :cond_584
    move-object v1, v2

    goto/16 :goto_480
.end method

.method private addBccAddressFromEditText(Z)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 11114
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11115
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 11116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 11117
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 11118
    array-length v3, v2

    move v1, v0

    :goto_1d
    if-ge v1, v3, :cond_29

    aget-object v4, v2, v1

    .line 11119
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v5, v4, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    .line 11118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 11121
    :cond_29
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 11129
    :cond_30
    :goto_30
    return v0

    .line 11126
    :cond_31
    const/4 v0, 0x1

    goto :goto_30
.end method

.method private addCcAddressFromEditText(Z)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 11088
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11089
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 11090
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 11091
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 11092
    array-length v3, v2

    move v1, v0

    :goto_1d
    if-ge v1, v3, :cond_29

    aget-object v4, v2, v1

    .line 11093
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v5, v4, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    .line 11092
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 11095
    :cond_29
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 11103
    :cond_30
    :goto_30
    return v0

    .line 11100
    :cond_31
    const/4 v0, 0x1

    goto :goto_30
.end method

.method private addToAddressFromEditText(Z)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 11061
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11062
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 11064
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 11065
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 11066
    array-length v3, v2

    move v1, v0

    :goto_1d
    if-ge v1, v3, :cond_29

    aget-object v4, v2, v1

    .line 11067
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v5, v4, p1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Lcom/android/emailcommon/mail/Address;Z)Z

    .line 11066
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 11069
    :cond_29
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 11077
    :cond_30
    :goto_30
    return v0

    .line 11074
    :cond_31
    const/4 v0, 0x1

    goto :goto_30
.end method

.method private applyIRMresctrition(J)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3952
    const-wide/16 v2, 0x0

    .line 3953
    :try_start_4
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 3954
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 3955
    :cond_16
    const-wide v4, 0x402c333333333333L

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_7a

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_7a

    .line 3957
    invoke-static {p0}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v2

    .line 3958
    invoke-virtual {v2, p1, p2}, Lcom/android/email/irm/IRMEnforcer;->getIRMLicenseFlag(J)I

    move-result v4

    .line 3963
    const/4 v2, -0x1

    if-eq v4, v2, :cond_7a

    .line 3964
    and-int/lit8 v2, v4, 0x8

    if-eqz v2, :cond_7b

    move v3, v0

    .line 3965
    :goto_33
    and-int/lit8 v2, v4, 0x20

    if-eqz v2, :cond_7d

    move v2, v0

    .line 3966
    :goto_38
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7f

    .line 3968
    :goto_3c
    if-nez v0, :cond_69

    .line 3969
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setFocusable(Z)V

    .line 3970
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3971
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setFocusable(Z)V

    .line 3972
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3973
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setFocusable(Z)V

    .line 3974
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3975
    const-string v0, "Compose >>"

    const-string v1, "Editing Recipients is disabled by IRM"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    :cond_69
    if-nez v3, :cond_81

    .line 3979
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_7a

    .line 3980
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->disableEditing()V

    .line 3981
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setFocusable(Z)V

    .line 3993
    :cond_7a
    :goto_7a
    return-void

    :cond_7b
    move v3, v1

    .line 3964
    goto :goto_33

    :cond_7d
    move v2, v1

    .line 3965
    goto :goto_38

    :cond_7f
    move v0, v1

    .line 3966
    goto :goto_3c

    .line 3983
    :cond_81
    if-nez v2, :cond_7a

    .line 3984
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    if-eqz v0, :cond_7a

    .line 3985
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->setDisableCopyNCut(Z)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_91} :catch_92

    goto :goto_7a

    .line 3990
    :catch_92
    move-exception v0

    .line 3991
    const-string v0, "Compose >>"

    const-string v1, "Caught Exception: applyIRMresctrition"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a
.end method

.method private arrangeAttachments()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 10601
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 10604
    if-le v1, v7, :cond_3c

    .line 10606
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f100195

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10608
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v2

    .line 10614
    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-nez v3, :cond_3d

    .line 10615
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080322

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10630
    :cond_3c
    :goto_3c
    return-void

    .line 10621
    :cond_3d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802f8

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-float v6, v6

    invoke-static {v1, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v1, 0x2

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c
.end method

.method private arrangeScrollView()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 13735
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mScrolledDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 13736
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mScrollView.getScrollY() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v2}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 13738
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mScrollView.getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v2}, Lcom/android/email/ExtendedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 13739
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zarrangeScrollView() mCompose_header_layout.getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCompose_header_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 13742
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCompose_header_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 13743
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v1}, Lcom/android/email/ExtendedScrollView;->getHeight()I

    .line 13747
    new-array v1, v6, [I

    .line 13748
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 13750
    new-array v2, v6, [I

    .line 13751
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 13753
    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_ee

    .line 13782
    :cond_97
    :goto_97
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_ed

    .line 13783
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v1}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    if-ge v1, v3, :cond_ed

    .line 13784
    const-string v1, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v4}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  <  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  -  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  - 4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 13786
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_141

    .line 13804
    :cond_ed
    :goto_ed
    return-void

    .line 13755
    :cond_ee
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v3}, Lcom/android/email/ExtendedScrollView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int v4, v0, v4

    if-le v3, v4, :cond_97

    .line 13756
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_ed

    .line 13760
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 13767
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    aget v1, v1, v5

    neg-int v1, v1

    invoke-virtual {v3, v1, v5}, Lcom/android/email/activity/ToolBarScrollView;->scrollTo(II)V

    .line 13769
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    if-ne v1, v6, :cond_135

    .line 13770
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13771
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_97

    .line 13773
    :cond_135
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13774
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_97

    .line 13789
    :cond_141
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarScrollView;->getToolBarState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 13795
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13796
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    aget v1, v2, v5

    neg-int v1, v1

    invoke-virtual {v0, v1, v5}, Lcom/android/email/activity/ToolBarScrollView;->scrollTo(II)V

    .line 13797
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ed
.end method

.method private arrangeScrollViewForHeaderChange()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 13570
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v0, v2, v2}, Lcom/android/email/ExtendedScrollView;->measure(II)V

    .line 13571
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v1}, Lcom/android/email/ExtendedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/ExtendedScrollView;->scrollTo(II)V

    .line 13572
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    invoke-virtual {v0}, Lcom/android/email/ExtendedScrollView;->invalidate()V

    .line 13573
    return-void
.end method

.method public static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "account"
    .parameter "accountType"

    .prologue
    .line 1557
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private changeSmimeOptions(ZZ)V
    .registers 3
    .parameter "bSign"
    .parameter "bEncrypt"

    .prologue
    .line 10276
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 10277
    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 10279
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateSignEncryptIcons()V

    .line 10280
    return-void
.end method

.method private checkAttachment()V
    .registers 8

    .prologue
    .line 12696
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v3

    .line 12698
    .local v3, maxSize:I
    const/4 v1, 0x0

    .line 12700
    .local v1, atSize:I
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_d
    if-ltz v2, :cond_32

    .line 12701
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 12702
    .local v0, at:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-le v4, v3, :cond_32

    .line 12703
    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 12704
    iget v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 12705
    add-int/lit8 v1, v1, 0x1

    .line 12700
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 12709
    .end local v0           #at:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_32
    const/4 v2, 0x0

    :goto_33
    if-ge v2, v1, :cond_45

    .line 12710
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 12709
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 12712
    :cond_45
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout()V

    .line 12713
    return-void
.end method

.method private checkITPolicy_AllowPOPIMAP()Z
    .registers 2

    .prologue
    .line 1579
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1580
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1581
    const/4 v0, 0x0

    .line 1584
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private checkValidityOfAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 11
    .parameter "account"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 1011
    if-nez p1, :cond_6

    move v0, v8

    .line 1048
    :goto_5
    return v0

    .line 1015
    :cond_6
    const/4 v6, 0x0

    .line 1017
    .local v6, cur:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1018
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1034
    :goto_1e
    :try_start_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1036
    :cond_24
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "emailAddress"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_61
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_35} :catch_58

    move-result v0

    if-eqz v0, :cond_4d

    .line 1038
    const/4 v0, 0x1

    .line 1046
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 1024
    :cond_3d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "typeMsg = 0  AND  displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1e

    .line 1040
    :cond_4d
    :try_start_4d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_61
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_58

    move-result v0

    if-nez v0, :cond_24

    .line 1046
    :cond_53
    :goto_53
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1048
    goto :goto_5

    .line 1042
    :catch_58
    move-exception v7

    .line 1043
    .local v7, e:Ljava/lang/Exception;
    :try_start_59
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_61

    goto :goto_53

    .line 1046
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_61
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10229
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_10

    .line 10230
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 10231
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 10272
    :cond_c
    :goto_c
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateSignEncryptIcons()V

    .line 10273
    return-void

    .line 10234
    :cond_10
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 10238
    iget-boolean v1, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    if-eqz v1, :cond_30

    .line 10239
    :cond_2e
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 10242
    :cond_30
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    if-eqz v0, :cond_40

    .line 10244
    :cond_3e
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 10248
    :cond_40
    if-eqz p1, :cond_48

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_48

    .line 10249
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 10251
    :cond_48
    if-eqz p1, :cond_50

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v0, :cond_50

    .line 10252
    iput-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 10255
    :cond_50
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-eqz v0, :cond_c

    .line 10256
    :cond_58
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-nez v0, :cond_71

    .line 10257
    const v0, 0x7f080507

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 10261
    :cond_71
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 10263
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v0, :cond_c

    .line 10264
    const v0, 0x7f080505

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c
.end method

.method private static convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    .registers 6
    .parameter "addresses"

    .prologue
    .line 5615
    array-length v3, p0

    new-array v2, v3, [Ljavax/mail/Address;

    .line 5616
    .local v2, ret:[Ljavax/mail/Address;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v3, p0

    if-ge v1, v3, :cond_1c

    .line 5618
    :try_start_7
    new-instance v3, Ljavax/mail/internet/InternetAddress;

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1
    :try_end_14
    .catch Ljavax/mail/internet/AddressException; {:try_start_7 .. :try_end_14} :catch_17

    .line 5616
    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5619
    :catch_17
    move-exception v0

    .line 5620
    .local v0, ex:Ljavax/mail/internet/AddressException;
    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_14

    .line 5624
    .end local v0           #ex:Ljavax/mail/internet/AddressException;
    :cond_1c
    return-object v2
.end method

.method private createBgColorPickerDialog()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 13643
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    if-eqz v0, :cond_d

    .line 13645
    :try_start_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_48

    .line 13649
    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    .line 13652
    :cond_d
    new-instance v0, Lcom/android/email/activity/ColorPickerDialog;

    invoke-direct {v0, p0}, Lcom/android/email/activity/ColorPickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    .line 13653
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ColorPickerDialog;->setIcon(I)V

    .line 13654
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    const v1, 0x7f08021d

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ColorPickerDialog;->setTitle(I)V

    .line 13656
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->misChangedFontBGColor:Z

    .line 13658
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    const/4 v1, -0x1

    const v2, 0x7f080042

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageCompose$55;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$55;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 13681
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    const/4 v1, -0x2

    const v2, 0x7f080043

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageCompose$56;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$56;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 13696
    return-void

    .line 13646
    :catch_48
    move-exception v0

    .line 13647
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method private createColorPickerDialog()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 13587
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    if-eqz v0, :cond_d

    .line 13589
    :try_start_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_48

    .line 13593
    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    .line 13596
    :cond_d
    new-instance v0, Lcom/android/email/activity/ColorPickerDialog;

    invoke-direct {v0, p0}, Lcom/android/email/activity/ColorPickerDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    .line 13597
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ColorPickerDialog;->setIcon(I)V

    .line 13598
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    const v1, 0x7f08021c

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ColorPickerDialog;->setTitle(I)V

    .line 13600
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->misChangedFontColor:Z

    .line 13602
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    const/4 v1, -0x1

    const v2, 0x7f080042

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageCompose$53;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$53;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 13625
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    const/4 v1, -0x2

    const v2, 0x7f080043

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageCompose$54;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$54;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 13640
    return-void

    .line 13590
    :catch_48
    move-exception v0

    .line 13591
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method private createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 12559
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 12561
    .local v3, preview_bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_c

    move-object v3, v5

    .line 12578
    .end local v3           #preview_bitmap:Landroid/graphics/Bitmap;
    :goto_b
    return-object v3

    .line 12564
    .restart local v3       #preview_bitmap:Landroid/graphics/Bitmap;
    :cond_c
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 12565
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 12567
    .local v2, p:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 12568
    .local v4, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12570
    .local v1, dst:Landroid/graphics/Rect;
    if-eqz v0, :cond_28

    if-eqz v2, :cond_28

    if-eqz v4, :cond_28

    if-nez v1, :cond_2a

    :cond_28
    move-object v3, v5

    .line 12571
    goto :goto_b

    .line 12573
    :cond_2a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 12574
    invoke-virtual {v1, v7, v7, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 12576
    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_b
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 10022
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 16
    .parameter "textBody"
    .parameter "htmlBody"
    .parameter "messageId"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10055
    if-eqz p2, :cond_50

    move v9, v0

    .line 10056
    .local v9, htmlTextFlag:Z
    :goto_5
    if-eqz v9, :cond_52

    move-object v2, p2

    .line 10057
    .local v2, text:Ljava/lang/String;
    :goto_8
    if-eqz v2, :cond_69

    .line 10058
    if-eqz v9, :cond_54

    .line 10062
    :goto_c
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10063
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v8

    .line 10066
    .local v8, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v8, :cond_59

    .line 10067
    move-object v6, v8

    .local v6, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v11, v6

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1e
    if-ge v10, v11, :cond_59

    aget-object v7, v6, v10

    .line 10068
    .local v7, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_4d

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 10069
    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_4d

    .line 10070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10067
    :cond_4d
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    .end local v2           #text:Ljava/lang/String;
    .end local v6           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v7           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v8           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v9           #htmlTextFlag:Z
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_50
    move v9, v1

    .line 10055
    goto :goto_5

    .restart local v9       #htmlTextFlag:Z
    :cond_52
    move-object v2, p1

    .line 10056
    goto :goto_8

    .line 10058
    .restart local v2       #text:Ljava/lang/String;
    :cond_54
    invoke-static {v2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 10076
    .restart local v8       #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_59
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_69

    .line 10079
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const-string v1, "email://"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10085
    .end local v8           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_69
    return-void
.end method

.method private doSpellCheck()V
    .registers 4

    .prologue
    .line 14216
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    .line 14221
    .local v0, sInvalidWord:Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 14222
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->onSpellCheckAddWord(Ljava/lang/String;)V

    .line 14225
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->misspelledWordSelected:Z

    .line 14227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    .line 14230
    return-void
.end method

.method public static exifOrientationToDegrees(I)F
    .registers 2
    .parameter

    .prologue
    .line 12175
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 12176
    const/high16 v0, 0x42b4

    .line 12182
    :goto_5
    return v0

    .line 12177
    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 12178
    const/high16 v0, 0x4334

    goto :goto_5

    .line 12179
    :cond_c
    const/16 v0, 0x8

    if-ne p0, v0, :cond_13

    .line 12180
    const/high16 v0, 0x4387

    goto :goto_5

    .line 12182
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private focusBccLayout(Z)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f0801c2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11001
    if-eqz p1, :cond_30

    .line 11002
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11003
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 11004
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    .line 11005
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11007
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 11008
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 11010
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 11011
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 11012
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setFromLayoutMode(I)V

    .line 11039
    :goto_2f
    return-void

    .line 11014
    :cond_30
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11015
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 11016
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11017
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 11021
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 11028
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11030
    invoke-direct {p0, v4, v3}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    .line 11032
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2f

    .line 11036
    :cond_67
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method private focusCcLayout(Z)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f0801c2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10954
    if-eqz p1, :cond_30

    .line 10955
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10957
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 10958
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    .line 10959
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10961
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 10962
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 10964
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 10965
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 10966
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setFromLayoutMode(I)V

    .line 10992
    :goto_2f
    return-void

    .line 10968
    :cond_30
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10969
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 10970
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10971
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 10975
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 10982
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10983
    invoke-direct {p0, v4, v3}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    .line 10985
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2f

    .line 10989
    :cond_67
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method private focusOutRecipient()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 14322
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 14323
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 14324
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    .line 14325
    :cond_17
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 14326
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 14328
    :cond_1d
    return-void
.end method

.method private focusToLayout(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0801c2

    const/4 v2, 0x1

    .line 10908
    if-eqz p1, :cond_26

    .line 10909
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 10910
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    .line 10911
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10913
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->requestFocus()Z

    .line 10914
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    .line 10916
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 10945
    :goto_25
    return-void

    .line 10918
    :cond_26
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setViewMode(I)Z

    .line 10919
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10921
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 10925
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 10931
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 10932
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10934
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 10940
    :goto_60
    invoke-direct {p0, v3, v2}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_25

    .line 10937
    :cond_64
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_60

    .line 10942
    :cond_6a
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_25
.end method

.method private getAccount(Landroid/content/Intent;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 7
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 1093
    const-string v0, "account_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1094
    cmp-long v2, v0, v3

    if-nez v2, :cond_10

    .line 1095
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 1097
    :cond_10
    cmp-long v2, v0, v3

    if-nez v2, :cond_16

    .line 1098
    const/4 v0, 0x0

    .line 1100
    :goto_15
    return-object v0

    :cond_16
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    goto :goto_15
.end method

.method private getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;
    .registers 4
    .parameter "view"

    .prologue
    .line 4526
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 4527
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    return-object v0
.end method

.method private getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 14

    .prologue
    .line 4773
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 4775
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4777
    const/4 v2, 0x0

    .line 4780
    const/4 v1, 0x0

    .line 4782
    const/4 v0, 0x0

    move v3, v0

    :goto_f
    if-ge v3, v4, :cond_61

    .line 4784
    :try_start_11
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_2f1

    .line 4787
    :try_start_1d
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4788
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_5a

    const-string v5, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 4791
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4792
    if-eqz v5, :cond_5a

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_45} :catch_52

    move-result v2

    if-nez v2, :cond_5a

    .line 4793
    const/4 v1, 0x1

    move v12, v1

    move-object v1, v0

    move v0, v12

    .line 4782
    :goto_4c
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_f

    .line 4797
    :catch_52
    move-exception v2

    .line 4798
    :goto_53
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 4802
    :cond_5a
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v1

    move-object v1, v0

    move v0, v12

    goto :goto_4c

    .line 4805
    :cond_61
    const/4 v0, 0x1

    if-ne v1, v0, :cond_6b

    .line 4806
    const v0, 0x7f080575

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 4813
    :cond_6b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    if-eqz v0, :cond_177

    .line 4814
    const-wide/16 v1, 0x0

    .line 4815
    const/4 v0, 0x0

    .line 4817
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v3

    .line 4819
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v0

    move-wide v8, v1

    :cond_8a
    :goto_8a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_177

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/webkit/WebSubPart;

    .line 4820
    if-eqz v6, :cond_8a

    .line 4823
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    .line 4824
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4826
    if-eqz v1, :cond_138

    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 4827
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4828
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4830
    if-eqz v2, :cond_f8

    .line 4832
    :try_start_be
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 4833
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4834
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    .line 4836
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_f5

    .line 4837
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_be .. :try_end_f5} :catchall_133

    .line 4841
    :cond_f5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4845
    :cond_f8
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v7

    move-wide v2, v8

    .line 4868
    :goto_fe
    if-eqz v1, :cond_2fa

    if-nez v4, :cond_2fa

    .line 4869
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 4871
    :goto_106
    if-nez v0, :cond_10a

    .line 4872
    const-string v0, ""

    .line 4875
    :cond_10a
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 4876
    iput-object v1, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 4877
    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 4878
    iput-wide v2, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 4879
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 4880
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getCid()Ljava/lang/String;

    move-result-object v0

    const-string v5, "cid:"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 4881
    const/4 v0, 0x1

    iput v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    .line 4883
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    move-wide v8, v2

    .line 4884
    goto/16 :goto_8a

    .line 4841
    :catchall_133
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4847
    :cond_138
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->fileSize()J

    move-result-wide v2

    .line 4849
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_165

    .line 4851
    if-eqz v1, :cond_165

    :try_start_144
    const-string v0, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 4853
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4854
    if-eqz v0, :cond_165

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_165

    .line 4855
    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_164} :catch_16e

    move-result-wide v2

    .line 4864
    :cond_165
    :goto_165
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 4865
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getMime()Ljava/lang/String;

    move-result-object v0

    goto :goto_fe

    .line 4858
    :catch_16e
    move-exception v0

    .line 4859
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_165

    .line 4887
    :cond_177
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 4889
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    if-eqz v0, :cond_2e7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    if-eqz v0, :cond_2e7

    .line 4892
    const-wide/16 v1, 0x0

    .line 4893
    const/4 v0, 0x0

    .line 4896
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 4897
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 4899
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v3

    .line 4901
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v0

    move-wide v8, v1

    :cond_1b7
    :goto_1b7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/webkit/WebSubPart;

    .line 4902
    if-eqz v6, :cond_1b7

    .line 4905
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    .line 4906
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4908
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a7

    .line 4909
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4910
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4912
    if-eqz v2, :cond_223

    .line 4914
    :try_start_1e9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_220

    .line 4915
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4916
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    .line 4918
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_220

    .line 4919
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_220
    .catchall {:try_start_1e9 .. :try_end_220} :catchall_2a2

    .line 4923
    :cond_220
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4927
    :cond_223
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v7

    move-wide v2, v8

    .line 4950
    :goto_229
    if-nez v4, :cond_2f7

    .line 4951
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 4953
    :goto_22f
    if-nez v0, :cond_233

    .line 4954
    const-string v0, ""

    .line 4957
    :cond_233
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 4958
    iput-object v1, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 4959
    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 4960
    iput-wide v2, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 4961
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->contentUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 4962
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getCid()Ljava/lang/String;

    move-result-object v0

    const-string v5, "cid:"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 4963
    const/4 v0, 0x1

    iput v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    .line 4966
    if-eqz v4, :cond_29b

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v0, :cond_29b

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_29b

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v0, :cond_29b

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-ne v0, v5, :cond_29b

    .line 4969
    iget v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 4970
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 4974
    :cond_29b
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    move-wide v8, v2

    .line 4975
    goto/16 :goto_1b7

    .line 4923
    :catchall_2a2
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4929
    :cond_2a7
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->fileSize()J

    move-result-wide v2

    .line 4931
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2d4

    .line 4933
    if-eqz v1, :cond_2d4

    :try_start_2b3
    const-string v0, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d4

    .line 4935
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4936
    if-eqz v0, :cond_2d4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2d4

    .line 4937
    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_2d3
    .catch Ljava/lang/Exception; {:try_start_2b3 .. :try_end_2d3} :catch_2de

    move-result-wide v2

    .line 4946
    :cond_2d4
    :goto_2d4
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 4947
    invoke-virtual {v6}, Landroid/webkit/WebSubPart;->getMime()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_229

    .line 4940
    :catch_2de
    move-exception v0

    .line 4941
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_2d4

    .line 4980
    :cond_2e7
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    return-object v0

    .line 4797
    :catch_2f1
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    goto/16 :goto_53

    :cond_2f7
    move-object v1, v4

    goto/16 :goto_22f

    :cond_2fa
    move-object v1, v4

    goto/16 :goto_106
.end method

.method private static getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 796
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 797
    const-string v1, "from_within_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 798
    return-object v0
.end method

.method private getComposerActivityContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 8499
    return-object p0
.end method

.method private getFilePath(Landroid/content/Intent;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 13141
    .line 13144
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 13146
    if-eqz v2, :cond_d7

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d7

    .line 13147
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 13148
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePath: path= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 13151
    :cond_31
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    .line 13203
    :cond_37
    :goto_37
    return-object v3

    .line 13154
    :cond_38
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 13155
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_4f

    .line 13156
    const-string v0, "Email"

    const-string v1, "getFilePath Uri scheme is file"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 13159
    :cond_4f
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 13160
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 13161
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 13165
    :cond_70
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ce

    .line 13167
    const-string v0, "Email"

    const-string v1, "getFilePath Uri scheme is content"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 13169
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 13172
    if-nez v1, :cond_a5

    .line 13176
    const-string v0, "Email"

    const-string v1, "Query on returns null result."

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 13182
    :cond_a5
    :try_start_a5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_be

    .line 13184
    :cond_b2
    const-string v0, "Email"

    const-string v2, "Query on returns 0 or multiple rows."

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_a5 .. :try_end_b9} :catchall_c9

    .line 13192
    :goto_b9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_37

    .line 13189
    :cond_be
    :try_start_be
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_c7
    .catchall {:try_start_be .. :try_end_c7} :catchall_c9

    move-result-object v3

    goto :goto_b9

    .line 13192
    :catchall_c9
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 13197
    :cond_ce
    const-string v0, "Email"

    const-string v1, "getFilePath URI path is not normal scheme"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 13200
    :cond_d7
    const-string v0, "Email"

    const-string v1, "getFilePath: Uri is null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37
.end method

.method private getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 13086
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 13137
    :cond_13
    :goto_13
    return-object v3

    .line 13089
    :cond_14
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 13090
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 13091
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 13092
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 13096
    :cond_41
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ef

    .line 13099
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 13102
    if-nez v1, :cond_8b

    .line 13103
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 13104
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 13110
    :cond_8b
    :try_start_8b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_98

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 13111
    :cond_98
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_ba

    .line 13112
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " returns 0 or multiple rows."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_8b .. :try_end_ba} :catchall_ea

    .line 13122
    :cond_ba
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_13

    .line 13119
    :cond_bf
    :try_start_bf
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_c8
    .catchall {:try_start_bf .. :try_end_c8} :catchall_ea

    move-result-object v3

    .line 13122
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 13125
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 13126
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 13122
    :catchall_ea
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 13131
    :cond_ef
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 13132
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath URI path is not file scheme - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13
.end method

.method private getMaxAttachmentUploadSize()I
    .registers 7

    .prologue
    .line 11289
    const/4 v1, 0x0

    .line 11291
    .local v1, maxSize:I
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mApp:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->getSettingsManager()Lcom/seven/Z7/common/settings/Z7SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    long-to-int v3, v3

    const-string v4, "hidden_pref_max_attachment_size"

    const-string v5, "0"

    invoke-virtual {v2, v3, v4, v5}, Lcom/seven/Z7/common/settings/Z7SettingsManager;->getStringPreference(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1d

    move-result v1

    .line 11301
    :goto_18
    if-nez v1, :cond_1c

    .line 11302
    sget v1, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_UPLOAD_SIZE:I

    .line 11304
    :cond_1c
    return v1

    .line 11298
    :catch_1d
    move-exception v0

    .line 11299
    .local v0, e:Ljava/lang/Exception;
    sget v1, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_UPLOAD_SIZE:I

    goto :goto_18
.end method

.method public static getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 807
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 808
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 809
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 810
    return-object v0
.end method

.method private getOrCreateDraftId()J
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 4990
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    monitor-enter v3

    .line 4991
    :try_start_4
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_14

    .line 4992
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    monitor-exit v3

    .line 5001
    :goto_13
    return-wide v1

    .line 4995
    :cond_14
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v2, :cond_1f

    .line 4996
    const-wide/16 v1, -0x1

    monitor-exit v3

    goto :goto_13

    .line 5002
    :catchall_1c
    move-exception v1

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v1

    .line 4998
    :cond_1f
    :try_start_1f
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 4999
    .local v0, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    array-length v5, v0

    if-lez v5, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v1, v5}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    .line 5000
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 5001
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_1c

    goto :goto_13
.end method

.method private getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "addrStr"

    .prologue
    .line 4531
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 4532
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPreviewImageOfAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .registers 9
    .parameter

    .prologue
    const v1, 0x7f020299

    const v2, 0x7f02028f

    const v0, 0x7f02028b

    const v3, 0x7f020280

    const/4 v6, 0x1

    .line 12220
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".vcf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_1f

    .line 12221
    const v0, 0x7f02027a

    .line 12279
    :cond_1e
    :goto_1e
    return v0

    .line 12222
    :cond_1f
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_1e

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_1e

    .line 12225
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_4d

    .line 12226
    const v0, 0x7f02028e

    goto :goto_1e

    .line 12227
    :cond_4d
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_77

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wma"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_77

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".3ga"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_79

    :cond_77
    move v0, v2

    .line 12230
    goto :goto_1e

    .line 12231
    :cond_79
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".vcs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_8b

    .line 12232
    const v0, 0x7f020270

    goto :goto_1e

    .line 12233
    :cond_8b
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".vnt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_9d

    .line 12234
    const v0, 0x7f02028d

    goto :goto_1e

    .line 12235
    :cond_9d
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".vts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_b0

    .line 12236
    const v0, 0x7f020297

    goto/16 :goto_1e

    .line 12237
    :cond_b0
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".avi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_da

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_da

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wmv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_dd

    :cond_da
    move v0, v1

    .line 12240
    goto/16 :goto_1e

    .line 12241
    :cond_dd
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".hwp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_f0

    .line 12242
    const v0, 0x7f02028a

    goto/16 :goto_1e

    .line 12243
    :cond_f0
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pdf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_103

    .line 12244
    const v0, 0x7f020290

    goto/16 :goto_1e

    .line 12245
    :cond_103
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".doc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_11f

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".docx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_124

    .line 12247
    :cond_11f
    const v0, 0x7f02027b

    goto/16 :goto_1e

    .line 12248
    :cond_124
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".gul"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_137

    .line 12249
    const v0, 0x7f02028c

    goto/16 :goto_1e

    .line 12250
    :cond_137
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_14a

    .line 12251
    const v0, 0x7f020279

    goto/16 :goto_1e

    .line 12252
    :cond_14a
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_15d

    .line 12253
    const v0, 0x7f020298

    goto/16 :goto_1e

    .line 12254
    :cond_15d
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".rtf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_170

    .line 12255
    const v0, 0x7f020294

    goto/16 :goto_1e

    .line 12256
    :cond_170
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".htm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_18c

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_191

    .line 12258
    :cond_18c
    const v0, 0x7f020289

    goto/16 :goto_1e

    .line 12259
    :cond_191
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xls"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_1ad

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".xlsx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_1b2

    .line 12261
    :cond_1ad
    const v0, 0x7f02029b

    goto/16 :goto_1e

    .line 12262
    :cond_1b2
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".ppt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eq v4, v6, :cond_1ce

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pptx"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_1d3

    .line 12264
    :cond_1ce
    const v0, 0x7f020291

    goto/16 :goto_1e

    .line 12266
    :cond_1d3
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_20a

    .line 12267
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 12269
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "video/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    move v0, v1

    .line 12270
    goto/16 :goto_1e

    .line 12271
    :cond_1f6
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_207

    move v0, v2

    .line 12272
    goto/16 :goto_1e

    :cond_207
    move v0, v3

    .line 12274
    goto/16 :goto_1e

    :cond_20a
    move v0, v3

    .line 12276
    goto/16 :goto_1e
.end method

.method private getRecipientCount()I
    .registers 3

    .prologue
    .line 7584
    const/4 v0, 0x0

    .line 7585
    .local v0, recipientCnt:I
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_19

    .line 7586
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 7588
    :cond_19
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_31

    .line 7589
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 7591
    :cond_31
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_49

    .line 7592
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 7595
    :cond_49
    return v0
.end method

.method public static getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I
    .registers 13
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 12186
    const/4 v8, 0x0

    .line 12187
    .local v8, degree:I
    if-eqz p0, :cond_37

    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 12188
    const/4 v7, 0x0

    .line 12190
    .local v7, cur:Landroid/database/Cursor;
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 12192
    if-eqz v7, :cond_2a

    .line 12193
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 12194
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_30
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_5e

    move-result v8

    .line 12199
    :cond_2a
    if-eqz v7, :cond_2f

    .line 12200
    :goto_2c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 12213
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_2f
    :goto_2f
    return v8

    .line 12199
    .restart local v7       #cur:Landroid/database/Cursor;
    :catchall_30
    move-exception v0

    if-eqz v7, :cond_36

    .line 12200
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 12199
    :cond_36
    throw v0

    .line 12203
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_37
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 12205
    :try_start_43
    new-instance v10, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 12206
    .local v10, exif:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->exifOrientationToDegrees(I)F
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_56} :catch_59

    move-result v0

    float-to-int v8, v0

    goto :goto_2f

    .line 12208
    .end local v10           #exif:Landroid/media/ExifInterface;
    :catch_59
    move-exception v9

    .line 12209
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 12197
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v7       #cur:Landroid/database/Cursor;
    :catch_5e
    move-exception v0

    .line 12199
    if-eqz v7, :cond_2f

    goto :goto_2c
.end method

.method private getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .registers 6
    .parameter "message"

    .prologue
    .line 4536
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4537
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "timeStamp"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4538
    const-string v1, "fromList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4539
    const-string v1, "toList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4540
    const-string v1, "ccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4541
    const-string v1, "bccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4542
    const-string v1, "subject"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4543
    const-string v1, "displayName"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4544
    const-string v1, "flagRead"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4545
    const-string v1, "flagLoaded"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4546
    const-string v1, "flagAttachment"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4547
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4548
    const-string v1, "importance"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4551
    const-string v1, "smimeFlags"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Message;->getSmimeFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4555
    const-string v1, "IRMTemplateId"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4556
    const-string v1, "IRMTemplateName"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    const-string v1, "IRMTemplateDescription"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4560
    const-string v1, "snippet"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4562
    return-object v0
.end method

.method private handleCommand(I)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 8946
    sparse-switch p1, :sswitch_data_c8

    :goto_5
    move v0, v1

    .line 9080
    :goto_6
    return v0

    .line 8952
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onComposerSmemo()V

    goto :goto_6

    .line 8958
    :sswitch_b
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 8960
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onComposerAttach()V

    goto :goto_6

    .line 8972
    :sswitch_12
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v1

    if-nez v1, :cond_24

    .line 8973
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_6

    .line 8975
    :cond_24
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_6

    .line 8981
    :sswitch_28
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->AddComposeToMe()V

    goto :goto_5

    .line 8985
    :sswitch_2c
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollViewForHeaderChange()V

    .line 8986
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 8987
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 8988
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 8989
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_6

    .line 8993
    :sswitch_3c
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollViewForHeaderChange()V

    .line 8994
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 8995
    :cond_4f
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 8996
    :cond_54
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 8997
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeAll()V

    .line 8998
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->removeAll()V

    .line 8999
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9000
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/android/email/activity/AddressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9001
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 9002
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 9003
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto :goto_6

    .line 9005
    :cond_7e
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto :goto_6

    .line 9009
    :sswitch_82
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    .line 9010
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto/16 :goto_6

    .line 9014
    :sswitch_8a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onCancel()V

    goto/16 :goto_6

    .line 9028
    :sswitch_8f
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onCancel()V

    goto/16 :goto_6

    .line 9047
    :sswitch_94
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeScrollViewForHeaderChange()V

    .line 9048
    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 9049
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    goto/16 :goto_6

    .line 9053
    :sswitch_9f
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowPriorityDialog()V

    goto/16 :goto_6

    .line 9057
    :sswitch_a4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowReceiptsOptionsDialog()V

    goto/16 :goto_6

    .line 9061
    :sswitch_a9
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    if-nez v2, :cond_b2

    .line 9062
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowSecurityOptionsDialog()V

    goto/16 :goto_6

    .line 9064
    :cond_b2
    const v2, 0x7f0805b8

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 9070
    :sswitch_c2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onIRMOperation()Z

    goto/16 :goto_6

    .line 8946
    nop

    :sswitch_data_c8
    .sparse-switch
        0x102002c -> :sswitch_8f
        0x7f10018d -> :sswitch_12
        0x7f100190 -> :sswitch_b
        0x7f100191 -> :sswitch_7
        0x7f1001ba -> :sswitch_94
        0x7f1002fc -> :sswitch_28
        0x7f1002fd -> :sswitch_2c
        0x7f1002fe -> :sswitch_3c
        0x7f1002ff -> :sswitch_82
        0x7f100300 -> :sswitch_8a
        0x7f100301 -> :sswitch_9f
        0x7f100302 -> :sswitch_a4
        0x7f100303 -> :sswitch_a9
        0x7f100304 -> :sswitch_c2
    .end sparse-switch
.end method

.method private hasInlineDataImage(JI)Z
    .registers 8
    .parameter "mId"
    .parameter "isMimeLoaded"

    .prologue
    .line 13893
    const/4 v1, 0x0

    .line 13894
    .local v1, isDataImage:Z
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 13896
    .local v0, html:Ljava/lang/String;
    if-nez v0, :cond_9

    move v2, v1

    .line 13904
    .end local v1           #isDataImage:Z
    .local v2, isDataImage:I
    :goto_8
    return v2

    .line 13899
    .end local v2           #isDataImage:I
    .restart local v1       #isDataImage:Z
    :cond_9
    if-eqz p3, :cond_d

    move v2, v1

    .line 13900
    .restart local v2       #isDataImage:I
    goto :goto_8

    .line 13902
    .end local v2           #isDataImage:I
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->parseHtmlATag(Ljava/lang/String;)Z

    move-result v1

    move v2, v1

    .line 13904
    .restart local v2       #isDataImage:I
    goto :goto_8
.end method

.method private hasRTLChar(Ljava/lang/String;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 14300
    if-nez p1, :cond_5

    .line 14318
    :cond_4
    :goto_4
    return v0

    .line 14304
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v0

    .line 14305
    :goto_a
    if-ge v2, v3, :cond_4

    .line 14306
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 14308
    const/16 v5, 0x621

    if-lt v4, v5, :cond_18

    const/16 v5, 0x65f

    if-le v4, v5, :cond_3c

    :cond_18
    const/16 v5, 0x66e

    if-lt v4, v5, :cond_20

    const/16 v5, 0x6d3

    if-le v4, v5, :cond_3c

    :cond_20
    const v5, 0xfb50

    if-lt v4, v5, :cond_2a

    const v5, 0xfdff

    if-le v4, v5, :cond_3c

    :cond_2a
    const v5, 0xfe70

    if-lt v4, v5, :cond_34

    const v5, 0xfefc

    if-le v4, v5, :cond_3c

    :cond_34
    const/16 v5, 0x61b

    if-eq v4, v5, :cond_3c

    const/16 v5, 0x61f

    if-ne v4, v5, :cond_3e

    :cond_3c
    move v0, v1

    .line 14313
    goto :goto_4

    .line 14314
    :cond_3e
    const/16 v5, 0x590

    if-lt v4, v5, :cond_48

    const/16 v5, 0x5ff

    if-gt v4, v5, :cond_48

    move v0, v1

    .line 14315
    goto :goto_4

    .line 14305
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private imageResizeByResolution(Ljava/lang/String;III)Landroid/net/Uri;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12870
    const/4 v7, 0x0

    .line 12874
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 12876
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 12877
    :cond_e
    const/4 v0, 0x0

    .line 12991
    :goto_f
    return-object v0

    .line 12878
    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12879
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 12880
    :cond_1d
    const/4 v0, 0x0

    goto :goto_f

    .line 12883
    :cond_1f
    :try_start_1f
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12886
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 12887
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/email/activity/MessageCompose;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v9

    .line 12888
    int-to-float v1, v9

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 12889
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12890
    const/16 v1, 0x5a

    if-eq v9, v1, :cond_50

    const/16 v1, 0x10e

    if-ne v9, v1, :cond_fc

    .line 12891
    :cond_50
    const/4 v1, 0x1

    invoke-static {v0, p3, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12895
    :goto_55
    const-string v1, "Email"

    const-string v2, "onSelectedResizeType() resize done!"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_5c} :catch_103

    move-object v4, v0

    .line 12920
    :goto_5d
    if-eqz v4, :cond_1fd

    .line 12922
    :try_start_5f
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 12923
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 12925
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 12926
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 12927
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 12928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_resized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12930
    const/4 v0, 0x0

    .line 12932
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12933
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_ba

    .line 12934
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_ba
    move-object v3, v2

    .line 12936
    :goto_bb
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_167

    .line 12938
    add-int/lit8 v0, v0, 0x1

    .line 12939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_resized_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_f9} :catch_1ad

    move-result-object v1

    move-object v3, v2

    goto :goto_bb

    .line 12893
    :cond_fc
    const/4 v1, 0x1

    :try_start_fd
    invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_100
    .catch Ljava/lang/OutOfMemoryError; {:try_start_fd .. :try_end_100} :catch_103

    move-result-object v0

    goto/16 :goto_55

    .line 12897
    :catch_103
    move-exception v0

    .line 12899
    const/4 v1, 0x1

    if-ne p4, v1, :cond_111

    .line 12900
    const/4 v0, 0x2

    :try_start_108
    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 12901
    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_10e
    move-object v4, v0

    .line 12917
    goto/16 :goto_5d

    .line 12902
    :cond_111
    const/4 v1, 0x2

    if-ne p4, v1, :cond_11c

    .line 12903
    const/4 v0, 0x4

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 12904
    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_10e

    .line 12905
    :cond_11c
    const/4 v1, 0x3

    if-ne p4, v1, :cond_128

    .line 12906
    const/16 v0, 0x8

    iput v0, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 12907
    invoke-static {p1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_10e

    .line 12909
    :cond_128
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectedResizeType() resize error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_144
    .catch Ljava/lang/OutOfMemoryError; {:try_start_108 .. :try_end_144} :catch_147

    .line 12911
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 12913
    :catch_147
    move-exception v0

    .line 12914
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectedResizeType() resize error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12916
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 12943
    :cond_167
    :try_start_167
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16c} :catch_1ad

    .line 12948
    const/4 v1, 0x0

    .line 12951
    :try_start_16d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 12956
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_18e

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1b4

    .line 12958
    :cond_18e
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v4, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 12963
    :cond_195
    :goto_195
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 12965
    const-string v0, "Email"

    const-string v3, "onSelectedResizeType() restore done!"

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19f
    .catchall {:try_start_16d .. :try_end_19f} :catchall_1dd
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_19f} :catch_1c8

    .line 12977
    if-eqz v1, :cond_1a4

    .line 12979
    :try_start_1a1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1a4} :catch_1f8

    :cond_1a4
    :goto_1a4
    move-object v0, v2

    .line 12987
    :goto_1a5
    if-eqz v0, :cond_1e4

    .line 12988
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_f

    .line 12944
    :catch_1ad
    move-exception v0

    .line 12945
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12946
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 12959
    :cond_1b4
    :try_start_1b4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_195

    .line 12960
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v4, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1c7
    .catchall {:try_start_1b4 .. :try_end_1c7} :catchall_1dd
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1c7} :catch_1c8

    goto :goto_195

    .line 12966
    :catch_1c8
    move-exception v0

    .line 12967
    :try_start_1c9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1cc
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_1dd

    .line 12968
    if-eqz v1, :cond_1d1

    .line 12970
    :try_start_1ce
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1d1
    .catchall {:try_start_1ce .. :try_end_1d1} :catchall_1dd
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1d1} :catch_1d8

    .line 12977
    :cond_1d1
    :goto_1d1
    if-eqz v1, :cond_1d6

    .line 12979
    :try_start_1d3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1d6} :catch_1f3

    :cond_1d6
    :goto_1d6
    move-object v0, v2

    .line 12985
    goto :goto_1a5

    .line 12971
    :catch_1d8
    move-exception v0

    .line 12973
    :try_start_1d9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1dc
    .catchall {:try_start_1d9 .. :try_end_1dc} :catchall_1dd

    goto :goto_1d1

    .line 12977
    :catchall_1dd
    move-exception v0

    if-eqz v1, :cond_1e3

    .line 12979
    :try_start_1e0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e3} :catch_1ee

    .line 12977
    :cond_1e3
    :goto_1e3
    throw v0

    .line 12990
    :cond_1e4
    const-string v0, "Email"

    const-string v1, "onSelectedResizeType() file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12991
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 12980
    :catch_1ee
    move-exception v1

    .line 12982
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e3

    .line 12980
    :catch_1f3
    move-exception v0

    .line 12982
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d6

    .line 12980
    :catch_1f8
    move-exception v0

    .line 12982
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a4

    :cond_1fd
    move-object v0, v7

    goto :goto_1a5
.end method

.method private includeQuotedText()Z
    .registers 2

    .prologue
    .line 7551
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 7552
    const/4 v0, 0x1

    .line 7554
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private initViews()V
    .registers 13

    .prologue
    const/4 v3, -0x1

    const/high16 v11, 0x200

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 2045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    .line 2047
    const v0, 0x7f100178

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCompose_header_layout:Landroid/widget/LinearLayout;

    .line 2049
    const v0, 0x7f1001b3

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToLayout:Landroid/widget/RelativeLayout;

    .line 2050
    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    .line 2051
    const v0, 0x7f100198

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    .line 2052
    const v0, 0x7f1001a7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    .line 2080
    const v0, 0x7f1001b7

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    .line 2081
    const v0, 0x7f1001a4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    .line 2082
    const v0, 0x7f10019d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    .line 2084
    invoke-static {}, Lcom/android/email/ContactInfoCache;->getInstance()Lcom/android/email/ContactInfoCache;

    move-result-object v0

    if-nez v0, :cond_6f

    .line 2085
    invoke-static {p0}, Lcom/android/email/ContactInfoCache;->init(Landroid/content/Context;)V

    .line 2087
    :cond_6f
    const v0, 0x7f1001b5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 2088
    const v0, 0x7f1001a2

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 2089
    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 2091
    const v0, 0x7f1001b9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddressTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    .line 2092
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 2093
    const v0, 0x7f1001a6

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddressTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    .line 2094
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 2095
    const v0, 0x7f10019f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddressTextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    .line 2096
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 2097
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    const v1, 0x7f1001ae

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setNextFocusDownId(I)V

    .line 2099
    const v0, 0x7f1001b8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToContactBtn:Landroid/widget/ImageButton;

    .line 2100
    const v0, 0x7f1001a5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcContactBtn:Landroid/widget/ImageButton;

    .line 2101
    const v0, 0x7f10019e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccContactBtn:Landroid/widget/ImageButton;

    .line 2111
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001b4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    .line 2113
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1001a1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    .line 2115
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f100199

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    .line 2117
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    const v1, 0x7f1001ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 2124
    const v0, 0x7f1001aa

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectTitleText:Landroid/widget/TextView;

    .line 2128
    const v0, 0x7f1001ae

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    .line 2129
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorColor(I)V

    .line 2132
    const v0, 0x7f1001ab

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    .line 2133
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    .line 2134
    const v0, 0x7f1001af

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    .line 2135
    const v0, 0x7f1001b1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    .line 2138
    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    .line 2140
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2141
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2142
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2143
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2146
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2149
    const v0, 0x7f100183

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    .line 2150
    const v0, 0x7f100185

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    .line 2152
    const v0, 0x7f100177

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/ExtendedScrollView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    .line 2153
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$8;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$8;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Lcom/android/email/ExtendedScrollView;->setOnChangeKeyboardStatusListener(Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;)V

    .line 2163
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v1, 0x7f1001b6

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    .line 2165
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v1, 0x7f1001a3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    .line 2167
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const v1, 0x7f10019b

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    .line 2169
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1001a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    .line 2175
    const v0, 0x7f10017d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    .line 2176
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f10017f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    .line 2177
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f10017e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    .line 2186
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f100196

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryUpDownBtn:Landroid/widget/ImageView;

    .line 2189
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryUpDownBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 2193
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerChildViewsFromOwnXML()V

    .line 2194
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerChildViewsFromOwnXML()V

    .line 2195
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerChildViewsFromOwnXML()V

    .line 2196
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerMessageHandler(Landroid/os/Handler;)V

    .line 2197
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerMessageHandler(Landroid/os/Handler;)V

    .line 2198
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->registerMessageHandler(Landroid/os/Handler;)V

    .line 2200
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/AddressTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2201
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/AddressTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2202
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/AddressTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2206
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2207
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 2208
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2209
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 2210
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2211
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 2212
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2213
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 2217
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2218
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 2219
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2220
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 2221
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2222
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 2223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2224
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    .line 2227
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2228
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2229
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2230
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2251
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToContactBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2252
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcContactBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2253
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccContactBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2271
    const v0, 0x7f10017b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->irmRemoveView:Landroid/widget/ImageView;

    .line 2272
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->irmRemoveView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$9;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$9;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2315
    const v0, 0x7f10017a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescriptionLayout:Landroid/widget/LinearLayout;

    .line 2316
    const v0, 0x7f10017c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;

    .line 2319
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2321
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryUpDownBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2323
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setDefaultFontSizeBySettings()I

    move-result v0

    sput v0, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    .line 2325
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2326
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2328
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2331
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/high16 v2, 0x4188

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 2333
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget v2, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->setDefaultFontSize(I)V

    .line 2334
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 2335
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, v10}, Landroid/webkit/HtmlComposerView;->setAutoTextSelection(Z)V

    .line 2336
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p0}, Landroid/webkit/HtmlComposerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2337
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p0}, Landroid/webkit/HtmlComposerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2338
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, v8}, Landroid/webkit/HtmlComposerView;->setVerticalScrollBarEnabled(Z)V

    .line 2339
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getImeOptions()I

    move-result v2

    or-int/2addr v2, v11

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->setImeOptions(I)V

    .line 2342
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->setWebView(Landroid/webkit/HtmlComposerView;)V

    .line 2343
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposeMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V

    .line 2344
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/high16 v2, 0x4188

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 2346
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget v1, Lcom/android/email/activity/MessageCompose;->mDefaultFontSize:I

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setDefaultFontSize(I)V

    .line 2347
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 2348
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v10}, Landroid/webkit/HtmlComposerView;->setAutoTextSelection(Z)V

    .line 2349
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2350
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p0}, Landroid/webkit/HtmlComposerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2351
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v8}, Landroid/webkit/HtmlComposerView;->setVerticalScrollBarEnabled(Z)V

    .line 2352
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v11

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setImeOptions(I)V

    .line 2354
    const v0, 0x7f100186

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    .line 2355
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2356
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2357
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDummy_view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2364
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;->setWebView(Landroid/webkit/HtmlComposerView;)V

    .line 2365
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedMenu:Lcom/android/email/activity/MessageCompose$MessageComposerActionMenu;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V

    .line 2367
    new-instance v0, Lcom/android/email/TextSelectorForHtmlComposer;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-direct {v0, v1}, Lcom/android/email/TextSelectorForHtmlComposer;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForHtmlComposer:Lcom/android/email/TextSelectorForHtmlComposer;

    .line 2368
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForHtmlComposer:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->isVisibleCursorhandlerListener(Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;)V

    .line 2369
    new-instance v0, Lcom/android/email/TextSelectorForHtmlComposer;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-direct {v0, v1}, Lcom/android/email/TextSelectorForHtmlComposer;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForQuotedText:Lcom/android/email/TextSelectorForHtmlComposer;

    .line 2370
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForQuotedText:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->isVisibleCursorhandlerListener(Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;)V

    .line 2372
    const v0, 0x7f100188

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    .line 2374
    const v0, 0x7f100189

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/ToolBarView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    .line 2375
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    .line 2377
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/ToolBarView;->setActivity(Landroid/app/Activity;)V

    .line 2382
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2384
    const v0, 0x7f100180

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    .line 2385
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHeightLayout_TooBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2387
    const v0, 0x7f100181

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    .line 2389
    const v0, 0x7f100182

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/ToolBarView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    .line 2390
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    .line 2392
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/ToolBarView;->setActivity(Landroid/app/Activity;)V

    .line 2394
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0, v8}, Lcom/android/email/activity/ToolBarView;->setVisibility(I)V

    .line 2395
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2397
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$10;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$10;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V

    .line 2408
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$11;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$11;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setOnRichTextFormatChangedListener(Landroid/webkit/HtmlComposerView$RichTextFormatChangedListener;)V

    .line 2421
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    const v1, 0x7f100278

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    .line 2422
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    const v1, 0x7f100278

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    .line 2426
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->createColorPickerDialog()V

    .line 2427
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->createBgColorPickerDialog()V

    .line 2429
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->changeToolBarFontColor(I)V

    .line 2430
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->changeToolBarFontBgColor(I)V

    .line 2432
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 2434
    if-lez v0, :cond_4fb

    .line 2435
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 2436
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v0, v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setExpectedLayoutWidth(I)V

    .line 2439
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v0, v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setExpectedLayoutWidth(I)V

    .line 2442
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccTitleText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->setExpectedLayoutWidth(I)V

    .line 2447
    :cond_4fb
    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 2449
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 2451
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$12;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2512
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$13;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$13;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2529
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2531
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    .line 2543
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 2545
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsBlackThemeUse:Z

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setActionBarByGUIThemeOfPreference(Z)V

    .line 2547
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsBlackThemeUse:Z

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setCursorColorByGUIThemeOfPreference(Z)V

    .line 2553
    const v0, 0x7f10018b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    .line 2554
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2555
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2557
    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_smemo:Landroid/widget/RelativeLayout;

    .line 2558
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsQ1BasedModel:Z

    if-eqz v0, :cond_6e5

    .line 2559
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_smemo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2564
    :goto_568
    const v0, 0x7f100190

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_attach:Landroid/widget/RelativeLayout;

    .line 2565
    const v0, 0x7f10018f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_save:Landroid/widget/RelativeLayout;

    .line 2566
    const v0, 0x7f10018e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_cancel:Landroid/widget/RelativeLayout;

    .line 2567
    const v0, 0x7f10018d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_mail:Landroid/widget/RelativeLayout;

    .line 2571
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    .line 2572
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_703

    .line 2573
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsBlackThemeUse:Z

    if-eqz v0, :cond_6ec

    .line 2574
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 2592
    :goto_5b9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_smemo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2594
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_attach:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2595
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_save:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2596
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_cancel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2597
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_mail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2610
    const v0, 0x7f100184

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    .line 2614
    const v0, 0x7f1001ba

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageView;

    .line 2619
    new-instance v0, Lcom/android/email/activity/MessageCompose$14;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$14;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 2661
    new-instance v1, Lcom/android/email/activity/MessageCompose$15;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$15;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 2787
    new-instance v2, Lcom/android/email/activity/MessageCompose$16;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$16;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 2903
    new-instance v3, Lcom/android/email/activity/MessageCompose$17;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$17;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 2932
    new-instance v4, Lcom/android/email/activity/MessageCompose$18;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageCompose$18;-><init>(Lcom/android/email/activity/MessageCompose;)V

    .line 3054
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x5dc

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v8

    aput-object v4, v5, v10

    .line 3058
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3060
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AddressTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 3061
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AddressTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 3062
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v5}, Lcom/android/email/activity/AddressTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 3064
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/AddressTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3065
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/AddressTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3066
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v4, v0}, Lcom/android/email/activity/AddressTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3067
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3071
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3072
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3083
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v11

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setImeOptions(I)V

    .line 3084
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v11

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setImeOptions(I)V

    .line 3085
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v11

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setImeOptions(I)V

    .line 3087
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getImeOptions()I

    move-result v1

    or-int/2addr v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3107
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3108
    invoke-direct {p0, v8, v8}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 3111
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3113
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    .line 3115
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setupAddressAdapters()V

    .line 3117
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3118
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 3119
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 3120
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Lcom/android/email/activity/MessageCompose$19;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$19;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3138
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3139
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 3140
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 3141
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Lcom/android/email/activity/MessageCompose$20;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$20;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3159
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3160
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v2, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v2}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/AddressTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 3161
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/AddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 3162
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    new-instance v1, Lcom/android/email/activity/MessageCompose$21;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$21;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3209
    return-void

    .line 2561
    :cond_6e5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_smemo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_568

    .line 2577
    :cond_6ec
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 2579
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setActionBarButtonLayout(I)V

    goto/16 :goto_5b9

    .line 2582
    :cond_703
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsBlackThemeUse:Z

    if-eqz v0, :cond_719

    .line 2583
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_5b9

    .line 2586
    :cond_719
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 2588
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setActionBarButtonLayout(I)V

    goto/16 :goto_5b9
.end method

.method private initializeFromMailTo(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 9981
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 9982
    const-string v1, "mailto"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9986
    const/4 v2, -0x1

    if-ne v0, v2, :cond_b6

    .line 9987
    :try_start_12
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9991
    :goto_1a
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const-string v2, " ,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_25} :catch_c0

    .line 9999
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foo://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 10001
    const-string v0, "cc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 10002
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    .line 10004
    const-string v0, "to"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 10005
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    .line 10007
    const-string v0, "bcc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 10008
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    .line 10010
    const-string v0, "subject"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 10011
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_98

    .line 10012
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10015
    :cond_98
    const-string v0, "body"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 10016
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b5

    .line 10017
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_b2
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 10019
    :cond_b5
    return-void

    .line 9989
    :cond_b6
    :try_start_b6
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_bd
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b6 .. :try_end_bd} :catch_c0

    move-result-object v0

    goto/16 :goto_1a

    .line 9992
    :catch_c0
    move-exception v0

    .line 9993
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while decoding \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 10017
    :cond_e9
    const/4 v1, 0x0

    goto :goto_b2
.end method

.method private insertImage(Landroid/net/Uri;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 12771
    .line 12773
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 12774
    :cond_a
    const-string v0, "Compose >>"

    const-string v1, "insertImage Uri is not either file or content scheme!!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12867
    :cond_11
    :goto_11
    return-void

    .line 12778
    :cond_12
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 12779
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 12781
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_198

    .line 12782
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImage file_scheme: file, filePath: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 12815
    :goto_3f
    if-nez v4, :cond_11b

    .line 12818
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_110

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v0

    if-ne v6, v0, :cond_110

    .line 12819
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto :goto_11

    .line 12785
    :cond_57
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 12786
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_195

    .line 12787
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 12789
    if-nez v1, :cond_9c

    .line 12790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "return null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12794
    :cond_9c
    :try_start_9c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eq v6, v0, :cond_c6

    .line 12795
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "return 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c1
    .catchall {:try_start_9c .. :try_end_c1} :catchall_c1

    .line 12800
    :catchall_c1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 12798
    :cond_c6
    :try_start_c6
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_cf
    .catchall {:try_start_c6 .. :try_end_cf} :catchall_c1

    move-result-object v2

    .line 12800
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 12803
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_ef

    .line 12804
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImage file_scheme: content, filePath: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ef
    move-object v4, v2

    .line 12806
    goto/16 :goto_3f

    .line 12808
    :cond_f2
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 12809
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertImage Uri is not either file or content scheme!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 12821
    :cond_110
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 12824
    :cond_11b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12826
    if-eqz v0, :cond_11

    .line 12827
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 12828
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 12829
    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 12831
    const/16 v3, 0x168

    .line 12832
    const/4 v1, -0x1

    .line 12834
    if-eqz v0, :cond_192

    .line 12835
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 12836
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 12838
    if-lez v2, :cond_13a

    .line 12839
    mul-int v1, v0, v3

    div-int/2addr v1, v2

    .line 12842
    :cond_13a
    if-le v3, v2, :cond_192

    move v1, v2

    .line 12849
    :goto_13d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 12851
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_16c

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v3

    if-ne v6, v3, :cond_16c

    .line 12852
    if-lez v1, :cond_161

    if-lez v0, :cond_161

    .line 12853
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_11

    .line 12855
    :cond_161
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 12857
    :cond_16c
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v3

    if-ne v6, v3, :cond_11

    .line 12858
    if-lez v1, :cond_187

    if-lez v0, :cond_187

    .line 12859
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_11

    .line 12861
    :cond_187
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_192
    move v0, v1

    move v1, v3

    goto :goto_13d

    :cond_195
    move-object v4, v2

    goto/16 :goto_3f

    :cond_198
    move-object v4, v2

    goto/16 :goto_3f
.end method

.method private isEnabledGPS()Z
    .registers 3

    .prologue
    .line 9240
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 9242
    .local v0, locationManager:Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 12166
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 12167
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 12168
    const/4 v1, 0x1

    .line 12170
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private isNotFieldsAllEmpty()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5713
    :try_start_2
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_3a

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_3a

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v2

    if-ne v0, v2, :cond_3a

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v0, v2, :cond_3a

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3a

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-ne v2, v0, :cond_3b

    .line 5804
    :cond_3a
    :goto_3a
    return v0

    .line 5721
    :cond_3b
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_5b

    .line 5722
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_5b

    .line 5723
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move v0, v1

    goto :goto_3a

    .line 5734
    :cond_5b
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5736
    if-eqz v2, :cond_8b

    const-string v3, "O2U"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 5741
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5780
    :goto_76
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v3, :cond_ef

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    .line 5782
    :goto_7e
    if-nez v3, :cond_81

    move-object v3, v2

    .line 5788
    :cond_81
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f1

    move v0, v1

    .line 5789
    goto :goto_3a

    .line 5743
    :cond_8b
    if-eqz v2, :cond_a1

    const-string v3, "PRT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 5746
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    .line 5748
    :cond_a1
    if-eqz v2, :cond_b7

    const-string v3, "CEL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 5751
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    .line 5753
    :cond_b7
    if-eqz v2, :cond_cd

    const-string v3, "PTR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 5756
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    .line 5758
    :cond_cd
    if-eqz v2, :cond_e3

    const-string v3, "TMB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 5761
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    .line 5764
    :cond_e3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_76

    :cond_ef
    move-object v3, v2

    .line 5780
    goto :goto_7e

    .line 5791
    :cond_f1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v2

    if-eqz v2, :cond_115

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_115

    .line 5793
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebHTMLMarkupData;->subPartList()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 5796
    :cond_115
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13a

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 5799
    :goto_127
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_137

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_137
    move v0, v1

    goto/16 :goto_3a

    .line 5796
    :cond_13a
    const-string v2, ""
    :try_end_13c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_13c} :catch_13d

    goto :goto_127

    .line 5801
    :catch_13d
    move-exception v0

    .line 5802
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v0, v1

    .line 5804
    goto/16 :goto_3a
.end method

.method private isOpenedFromWithinApp()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2000
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2001
    if-eqz v1, :cond_10

    const-string v2, "from_within_app"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 15
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 12089
    .line 12093
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 12094
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 12095
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12096
    if-eqz v1, :cond_d9

    .line 12097
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 12098
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 12099
    invoke-static {v4}, Lcom/android/email/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_26
    move-wide v6, v1

    move-object v1, v0

    move-object v0, v3

    .line 12150
    :goto_29
    if-nez v1, :cond_2f

    .line 12151
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 12153
    :cond_2f
    if-nez v0, :cond_33

    .line 12154
    const-string v0, ""

    .line 12157
    :cond_33
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 12158
    iput-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 12159
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 12160
    iput-wide v6, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 12161
    iput-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 12162
    return-object v2

    .line 12103
    :cond_45
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 12104
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 12106
    if-eqz v8, :cond_b7

    .line 12108
    :try_start_54
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 12109
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 12110
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_d1

    move-result v1

    int-to-long v4, v1

    .line 12112
    cmp-long v1, v4, v6

    if-nez v1, :cond_d6

    .line 12117
    :try_start_69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 12118
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 12120
    const/16 v1, 0xff

    new-array v1, v1, [B

    .line 12121
    if-eqz v3, :cond_85

    .line 12122
    :goto_7b
    const/4 v11, -0x1

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-eq v11, v12, :cond_85

    .line 12123
    int-to-long v11, v12

    add-long/2addr v6, v11

    goto :goto_7b

    :cond_85
    move-wide v4, v6

    .line 12127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 12128
    const-string v1, "YohanTest"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Total Elapsed time : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long/2addr v6, v9

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_69 .. :try_end_ad} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_ad} :catch_be

    .line 12134
    if-eqz v3, :cond_b2

    .line 12135
    :try_start_af
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_d1

    :cond_b2
    move-object v3, v2

    move-wide v6, v4

    .line 12143
    :cond_b4
    :goto_b4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 12147
    :cond_b7
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    goto/16 :goto_29

    .line 12130
    :catch_be
    move-exception v1

    .line 12132
    :try_start_bf
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_ca

    .line 12134
    if-eqz v3, :cond_c7

    .line 12135
    :try_start_c4
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :cond_c7
    move-object v3, v2

    move-wide v6, v4

    .line 12137
    goto :goto_b4

    .line 12134
    :catchall_ca
    move-exception v0

    if-eqz v3, :cond_d0

    .line 12135
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 12134
    :cond_d0
    throw v0
    :try_end_d1
    .catchall {:try_start_c4 .. :try_end_d1} :catchall_d1

    .line 12143
    :catchall_d1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_d6
    move-object v3, v2

    move-wide v6, v4

    goto :goto_b4

    :cond_d9
    move-object v0, v3

    move-wide v1, v6

    goto/16 :goto_26
.end method

.method private onAccountSetup()V
    .registers 1

    .prologue
    .line 1635
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 1637
    return-void
.end method

.method private onAddAttachmentFromMyfiles()V
    .registers 4

    .prologue
    .line 11746
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11747
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ExternelAccessActivityList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11749
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11750
    const-string v1, "file_display"

    const-string v2, "forwardable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11753
    const-string v1, "CONTENT_TYPE"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11755
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_24} :catch_25

    .line 11759
    :goto_24
    return-void

    .line 11756
    :catch_25
    move-exception v0

    .line 11757
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_24
.end method

.method private onAddTextActivity(I)V
    .registers 11
    .parameter "type"

    .prologue
    .line 11783
    packed-switch p1, :pswitch_data_a8

    .line 11850
    :goto_3
    :pswitch_3
    return-void

    .line 11786
    :pswitch_4
    const/4 v7, 0x0

    :try_start_5
    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11787
    new-instance v4, Landroid/content/Intent;

    const-string v7, "intent.action.INTERACTION_LIST"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11788
    .local v4, intentNamecard:Landroid/content/Intent;
    const-string v7, "additional"

    const-string v8, "namecard"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11789
    const/16 v7, 0x7d2

    invoke-virtual {p0, v4, v7}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_3

    .line 11846
    .end local v4           #intentNamecard:Landroid/content/Intent;
    :catch_1c
    move-exception v0

    .line 11847
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 11793
    .end local v0           #anfe:Landroid/content/ActivityNotFoundException;
    :pswitch_21
    const/4 v7, 0x0

    :try_start_22
    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11794
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.PICK"

    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11795
    .local v2, intentCalendar:Landroid/content/Intent;
    const-string v7, "text/plain"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11796
    const/16 v7, 0x7d3

    invoke-virtual {p0, v2, v7}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 11800
    .end local v2           #intentCalendar:Landroid/content/Intent;
    :pswitch_39
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11801
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.PICK"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11802
    .local v3, intentMemo:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.memo"

    const-string v8, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11804
    .local v1, cn:Landroid/content/ComponentName;
    const-string v7, "text/memo_string"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11805
    const/16 v7, 0x7d4

    invoke-virtual {p0, v3, v7}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 11809
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #intentMemo:Landroid/content/Intent;
    :pswitch_58
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11810
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11811
    .local v5, intentPenMemo:Landroid/content/Intent;
    const-string v7, "app_name"

    const-string v8, "email"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11812
    const/16 v7, 0x7d6

    invoke-virtual {p0, v5, v7}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 11816
    .end local v5           #intentPenMemo:Landroid/content/Intent;
    :pswitch_70
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11817
    const/16 v7, 0x7d5

    iput v7, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    .line 11819
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageCompose;->showDialog(I)V

    goto :goto_3

    .line 11823
    :pswitch_7d
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11824
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onInsertImage()V

    goto/16 :goto_3

    .line 11829
    :pswitch_86
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11830
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onInsertDrawingPad()V

    goto/16 :goto_3

    .line 11835
    :pswitch_8f
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11836
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SNOTE_GET_CONTENTS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11837
    .local v6, intentSNote:Landroid/content/Intent;
    const-string v7, "app_name"

    const-string v8, "email"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11838
    const/16 v7, 0x7d8

    invoke-virtual {p0, v6, v7}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_a6} :catch_1c

    goto/16 :goto_3

    .line 11783
    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_21
        :pswitch_39
        :pswitch_70
        :pswitch_7d
        :pswitch_58
        :pswitch_86
        :pswitch_3
        :pswitch_8f
    .end packed-switch
.end method

.method private onAttachPreview(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f0805d6

    const/4 v4, 0x1

    .line 11232
    const/4 v1, 0x0

    .line 11233
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsExistFile:Z

    if-nez v0, :cond_10

    .line 11234
    const v0, 0x7f0800be

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    .line 11286
    :goto_f
    return-void

    .line 11237
    :cond_10
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v0, :cond_a1

    .line 11238
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 11241
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "com.quickoffice.mx.samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 11242
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11246
    :goto_2e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "file://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_c0

    .line 11247
    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11249
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    .line 11253
    :goto_56
    if-nez v0, :cond_5e

    .line 11254
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 11257
    :cond_5e
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "com.android.email.attachmentprovider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 11259
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 11260
    if-nez v1, :cond_87

    .line 11261
    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_f

    .line 11244
    :cond_84
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    goto :goto_2e

    .line 11266
    :cond_87
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11267
    if-eqz v2, :cond_a2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a2

    .line 11268
    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_f

    :cond_a1
    move-object v0, v1

    .line 11277
    :cond_a2
    :try_start_a2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11278
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 11279
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11280
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->startActivity(Landroid/content/Intent;)V
    :try_end_b5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a2 .. :try_end_b5} :catch_b7

    goto/16 :goto_f

    .line 11282
    :catch_b7
    move-exception v0

    .line 11283
    const v0, 0x7f0802fc

    invoke-direct {p0, v0, v4}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto/16 :goto_f

    :cond_c0
    move-object v0, v1

    goto :goto_56
.end method

.method private onAttachmentDrawingPad()V
    .registers 5

    .prologue
    .line 11139
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MINI_SKETCH_MEMO_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11140
    .local v1, i:Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "email"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11141
    const-string v2, "isMax"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11142
    const-string v2, "isBottom"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11144
    const/16 v2, 0x3f5

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 11148
    .end local v1           #i:Landroid/content/Intent;
    :goto_1f
    return-void

    .line 11145
    :catch_20
    move-exception v0

    .line 11146
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1f
.end method

.method private onAttachmentSNote()V
    .registers 4

    .prologue
    .line 11153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SNOTE_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11154
    .local v0, i:Landroid/content/Intent;
    const-string v1, "app_name"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11157
    const/16 v1, 0x3f7

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 11158
    return-void
.end method

.method private onCancel()V
    .registers 10

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x0

    .line 6117
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 6120
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1e

    :cond_14
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 6121
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onDeleteMessageConfirmationDialogOkPressed()V

    .line 6175
    :cond_1d
    :goto_1d
    return-void

    .line 6126
    :cond_1e
    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 6128
    :cond_32
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_6f

    .line 6129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6131
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 6132
    const v1, 0x7f080211

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6133
    const v1, 0x7f080212

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 6134
    const v1, 0x7f0801ce

    new-instance v2, Lcom/android/email/activity/MessageCompose$23;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$23;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6145
    const v1, 0x7f0801cf

    new-instance v2, Lcom/android/email/activity/MessageCompose$24;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$24;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    .line 6154
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1d

    .line 6155
    :cond_6f
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 6156
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSaveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1d

    .line 6160
    :cond_7d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->getResultCallbacksForTest()Ljava/util/Collection;

    move-result-object v0

    .line 6161
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message_id"

    invoke-virtual {v2, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 6162
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_91
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 6163
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_ab

    const-wide/16 v4, -0x2

    :goto_a7
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->sendMeetingEditedResponseCallback(ZJJ)V

    goto :goto_91

    :cond_ab
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    goto :goto_a7

    .line 6169
    :cond_b0
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 6170
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 6172
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto/16 :goto_1d
.end method

.method private onDeleteAttachment(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 8645
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 8646
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 8647
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-long v2, v2

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    .line 8648
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I

    .line 8649
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 8651
    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2a

    .line 8652
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 8655
    :cond_2a
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 8656
    :cond_3e
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 8675
    :cond_42
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 8677
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 8678
    return-void
.end method

.method private onDiscard()V
    .registers 4

    .prologue
    .line 6178
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 6179
    return-void
.end method

.method private onImageAttachmentResult(Ljava/lang/String;II)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12996
    .line 12998
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v3, v0, 0x4

    .line 12999
    mul-int/lit8 v0, p3, 0x3

    div-int/lit8 v4, v0, 0x4

    .line 13000
    div-int/lit8 v5, p2, 0x2

    .line 13001
    div-int/lit8 v6, p3, 0x2

    .line 13002
    div-int/lit8 v7, p2, 0x4

    .line 13003
    div-int/lit8 v8, p3, 0x4

    .line 13005
    const-wide/16 v0, 0x0

    .line 13006
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13007
    if-eqz v2, :cond_1d

    .line 13008
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 13011
    :cond_1d
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    const v10, 0x7f0804ad

    invoke-virtual {p0, v10}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0804ae

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (70%)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0804af

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (30%)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0804b0

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (10%)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 13027
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/email/activity/MessageCompose;->mSelectedResizeType:I

    .line 13029
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13030
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0804b1

    invoke-virtual {p0, v11}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    long-to-float v0, v0

    invoke-static {v11, v0}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 13033
    const/4 v0, 0x0

    new-instance v1, Lcom/android/email/activity/MessageCompose$50;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$50;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v9, v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 13040
    const v10, 0x7f080042

    new-instance v0, Lcom/android/email/activity/MessageCompose$51;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/MessageCompose$51;-><init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;IIIIII)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 13076
    const/high16 v0, 0x104

    new-instance v1, Lcom/android/email/activity/MessageCompose$52;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$52;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 13082
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 13083
    return-void
.end method

.method private onInsertDrawingPad()V
    .registers 5

    .prologue
    .line 11164
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MINI_SKETCH_MEMO_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11165
    .local v1, i:Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "email"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11166
    const-string v2, "isMax"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11167
    const-string v2, "isBottom"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11169
    const/16 v2, 0x7d7

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 11173
    .end local v1           #i:Landroid/content/Intent;
    :goto_1f
    return-void

    .line 11170
    :catch_20
    move-exception v0

    .line 11171
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1f
.end method

.method private onInsertImage()V
    .registers 4

    .prologue
    .line 11871
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11872
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11873
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11874
    const/16 v2, 0x7d1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    .line 11879
    .end local v1           #intent:Landroid/content/Intent;
    :goto_16
    return-void

    .line 11875
    :catch_17
    move-exception v0

    .line 11876
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_16
.end method

.method private onLoadMoreMessage()V
    .registers 4

    .prologue
    .line 13869
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_d

    .line 13870
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->loadMore(J)V

    .line 13872
    :cond_d
    return-void
.end method

.method private onPhonebook()V
    .registers 4

    .prologue
    .line 7561
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7563
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7565
    const-string v1, "additional"

    const-string v2, "email-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7568
    const-string v1, "existingRecipientCount"

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getRecipientCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7570
    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7571
    const/16 v1, 0xfa1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_28} :catch_29

    .line 7577
    :goto_28
    return-void

    .line 7573
    :catch_29
    move-exception v0

    .line 7574
    const-string v0, "Email"

    const-string v1, "onPhonebook: AcitivityNotFoundException!!!!"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method private onRefreshLayoutCcBcc()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6225
    const/4 v0, 0x0

    .line 6226
    .local v0, ccBccBtnisShow:Z
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_60

    .line 6227
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-ne v1, v3, :cond_54

    .line 6228
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6229
    const/4 v0, 0x1

    .line 6234
    :goto_33
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-ne v1, v3, :cond_5a

    .line 6235
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6236
    const/4 v0, 0x1

    .line 6241
    :goto_51
    if-ne v0, v3, :cond_60

    .line 6250
    :goto_53
    return-void

    .line 6231
    :cond_54
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_33

    .line 6238
    :cond_5a
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_51

    .line 6248
    :cond_60
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6249
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_53
.end method

.method private onSave()V
    .registers 2

    .prologue
    .line 6219
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 6220
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 6221
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 6222
    return-void
.end method

.method private onSend()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5809
    const-string v0, "Compose >>"

    const-string v3, "onSend"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5812
    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_1d
    invoke-static {}, Lcom/android/email/EmailUtility;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 5813
    const v0, 0x7f0800b5

    invoke-static {p0, v0, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 5966
    :cond_29
    :goto_29
    return-void

    .line 5818
    :cond_2a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4004

    cmpg-double v0, v3, v5

    if-gez v0, :cond_44

    .line 5821
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    .line 5824
    :cond_44
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_92

    move v0, v1

    .line 5826
    :goto_51
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_75

    if-eqz v0, :cond_75

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_75

    .line 5827
    const v0, 0x7f080576

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5832
    :cond_75
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-nez v0, :cond_7d

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-eqz v0, :cond_b8

    .line 5833
    :cond_7d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-nez v0, :cond_94

    .line 5834
    const v0, 0x7f080507

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_29

    :cond_92
    move v0, v2

    .line 5824
    goto :goto_51

    .line 5839
    :cond_94
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    .line 5840
    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v0, :cond_b8

    .line 5841
    const v0, 0x7f080505

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_29

    .line 5847
    :cond_b8
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->isAddressAllValid()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 5851
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 5853
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_eb

    .line 5858
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto/16 :goto_29

    .line 5859
    :cond_eb
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_100

    .line 5864
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    goto/16 :goto_29

    .line 5865
    :cond_100
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_115

    .line 5870
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    goto/16 :goto_29

    .line 5873
    :cond_115
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_12d

    .line 5874
    const v0, 0x7f0803ec

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5876
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 5877
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto/16 :goto_29

    .line 5882
    :cond_12d
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 5883
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    const v1, 0x7f0800c2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_29

    .line 5899
    :cond_13e
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5900
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5901
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v4}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5902
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v3, v4, p0, v5}, Lcom/android/email/util/EmailAddressCacheProcessor;->insertAllContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 5907
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 5909
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_1b5

    .line 5910
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    .line 5912
    if-eqz v0, :cond_1b5

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->hasRTLChar(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b5

    .line 5913
    const-string v3, "<body>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_214

    const-string v3, "</body>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_214

    .line 5914
    const-string v3, "<body>"

    const-string v4, "<body><div dir=\"rtl\">"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5916
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5917
    const-string v0, "</body>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 5918
    const-string v4, "</div>"

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 5919
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5923
    :goto_1a9
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 5924
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v4, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v3, v0, v4}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 5929
    :cond_1b5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_1ff

    .line 5930
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    .line 5932
    if-eqz v0, :cond_1ff

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->hasRTLChar(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ff

    .line 5933
    const-string v3, "<body>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22f

    const-string v3, "</body>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22f

    .line 5935
    const-string v3, "<body>"

    const-string v4, "<body><div dir=\"rtl\">"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5937
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5938
    const-string v0, "</body>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 5939
    const-string v4, "</div>"

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 5940
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5944
    :goto_1f3
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 5945
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v4, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v3, v0, v4}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 5954
    :cond_1ff
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-eqz v0, :cond_249

    .line 5955
    new-instance v0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    .line 5956
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mGetCertificatesTask:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_29

    .line 5921
    :cond_214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<div dir=\"rtl\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</div>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a9

    .line 5942
    :cond_22f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<div dir=\"rtl\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</div>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f3

    .line 5959
    :cond_249
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 5960
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 5961
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDoNotSaveDraft:Z

    .line 5962
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 5963
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto/16 :goto_29
.end method

.method private onShowAccountCheckDialog()V
    .registers 4

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_43

    .line 1590
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1593
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1594
    const v1, 0x7f0805dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1595
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1596
    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/MessageCompose$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$3;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1605
    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/MessageCompose$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$4;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1615
    new-instance v1, Lcom/android/email/activity/MessageCompose$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$5;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    .line 1627
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1631
    :cond_42
    :goto_42
    return-void

    .line 1628
    :cond_43
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1629
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_42
.end method

.method private onShowAccountDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 8685
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 8843
    :goto_e
    return-void

    .line 8687
    :cond_f
    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    .line 8689
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 8690
    :cond_1d
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 8693
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8696
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8699
    const v2, 0x7f0802ce

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 8702
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 8705
    new-instance v2, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;

    const/high16 v3, 0x7f04

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/android/email/activity/MessageCompose$AccountDialogArrayAdaptor;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V

    .line 8708
    new-instance v0, Lcom/android/email/activity/MessageCompose$30;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$30;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8838
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8840
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    .line 8842
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_e
.end method

.method private onShowAddAttachmentDialog()V
    .registers 11

    .prologue
    const v9, 0x7f0802f9

    const v4, 0x7f0801ae

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 11317
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    .line 11320
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_9a

    .line 11321
    new-instance v1, Lcom/android/email/activity/AddAttachmentSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 11323
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11325
    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-nez v3, :cond_60

    .line 11326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "0"

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11334
    :goto_4c
    new-instance v0, Lcom/android/email/activity/MessageCompose$38;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$38;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/AddAttachmentSelectorAdapter;)V

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11341
    :try_start_54
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    .line 11342
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_5f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_54 .. :try_end_5f} :catch_8e

    .line 11363
    :cond_5f
    :goto_5f
    return-void

    .line 11329
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_4c

    .line 11343
    :catch_8e
    move-exception v0

    .line 11344
    const-string v1, "Compose >>"

    const-string v2, "BadTokenException!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11345
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_5f

    .line 11347
    :cond_9a
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 11348
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    if-nez v1, :cond_de

    .line 11349
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "0"

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {p0, v9, v3}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 11357
    :goto_cc
    :try_start_cc
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_d1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_cc .. :try_end_d1} :catch_d2

    goto :goto_5f

    .line 11358
    :catch_d2
    move-exception v0

    .line 11359
    const-string v1, "Compose >>"

    const-string v2, "BadTokenException!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11360
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_5f

    .line 11352
    :cond_de
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentDialog:Landroid/app/AlertDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/android/email/EmailUtility;->formatSize(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {p0, v9, v3}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_cc
.end method

.method private onShowInsertTextOrImageDialog()V
    .registers 4

    .prologue
    .line 11762
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_28

    .line 11763
    new-instance v0, Lcom/android/email/activity/AddTextSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/activity/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 11765
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11766
    const v2, 0x7f08020e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 11768
    new-instance v2, Lcom/android/email/activity/MessageCompose$43;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/MessageCompose$43;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/AddTextSelectorAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11774
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    .line 11775
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 11779
    :cond_27
    :goto_27
    return-void

    .line 11776
    :cond_28
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_27

    .line 11777
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInsertTextOrImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_27
.end method

.method private onShowPriorityDialog()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 11371
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_38

    .line 11373
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 11376
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11377
    const v3, 0x7f080337

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 11380
    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    packed-switch v3, :pswitch_data_46

    .line 11395
    :goto_20
    :pswitch_20
    new-instance v3, Lcom/android/email/activity/MessageCompose$39;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$39;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11420
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    .line 11421
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 11425
    :cond_33
    :goto_33
    return-void

    .line 11382
    :pswitch_34
    const/4 v0, 0x2

    .line 11383
    goto :goto_20

    .line 11388
    :pswitch_36
    const/4 v0, 0x0

    .line 11389
    goto :goto_20

    .line 11422
    :cond_38
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_33

    .line 11423
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mPriorityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_33

    .line 11380
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_34
        :pswitch_20
        :pswitch_36
    .end packed-switch
.end method

.method private onShowReceiptsOptionsDialog()V
    .registers 5

    .prologue
    .line 11886
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 11889
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    .line 11890
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    .line 11891
    const/4 v1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsReadChecked:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsDeliveryChecked:Z

    aput-boolean v3, v1, v2

    .line 11900
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_59

    .line 11901
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11902
    const v3, 0x7f0805ca

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 11903
    new-instance v3, Lcom/android/email/activity/MessageCompose$44;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$44;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11924
    const v0, 0x7f080042

    new-instance v1, Lcom/android/email/activity/MessageCompose$45;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$45;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11932
    const v0, 0x7f080043

    new-instance v1, Lcom/android/email/activity/MessageCompose$46;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$46;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11940
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    .line 11941
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 11946
    :cond_58
    :goto_58
    return-void

    .line 11942
    :cond_59
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_58

    .line 11943
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mReceiptsOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_58
.end method

.method private onShowSecurityOptionsDialog()V
    .registers 5

    .prologue
    .line 11528
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 11531
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    .line 11532
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    .line 11533
    const/4 v1, 0x2

    new-array v1, v1, [Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    aput-boolean v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    aput-boolean v3, v1, v2

    .line 11537
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_59

    .line 11542
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11543
    const v3, 0x7f0804fb

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 11544
    new-instance v3, Lcom/android/email/activity/MessageCompose$40;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$40;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11567
    const v0, 0x7f080042

    new-instance v1, Lcom/android/email/activity/MessageCompose$41;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$41;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11574
    const v0, 0x7f080043

    new-instance v1, Lcom/android/email/activity/MessageCompose$42;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$42;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11585
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    .line 11586
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 11591
    :cond_58
    :goto_58
    return-void

    .line 11587
    :cond_59
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_58

    .line 11588
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_58
.end method

.method private onShowSecurityPolicyDialog()V
    .registers 5

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_35

    .line 1645
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1651
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1654
    const v2, 0x7f0802cf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1657
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1660
    new-instance v2, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;

    const/high16 v3, 0x7f04

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V

    .line 1663
    new-instance v0, Lcom/android/email/activity/MessageCompose$6;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$6;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1676
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    .line 1677
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1681
    :cond_34
    :goto_34
    return-void

    .line 1678
    :cond_35
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1679
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSecurityPolicyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_34
.end method

.method private onSpellCheckAddWord(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14042
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 14137
    :cond_a
    :goto_a
    return-void

    .line 14048
    :cond_b
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14049
    const v0, 0x7f0805df

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 14051
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpellCheckAddWord() word="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14053
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    if-nez v0, :cond_43

    .line 14054
    new-instance v0, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    const/high16 v1, 0x7f07

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    .line 14057
    :cond_43
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_57

    .line 14058
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14059
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    .line 14062
    :cond_57
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mMainDictionary:Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/utils/spellcheck/BinaryDictionary;->getSuggestion(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    .line 14064
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_c2

    .line 14066
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/CharSequence;

    move v2, v3

    .line 14068
    :goto_74
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9a

    .line 14069
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v2

    .line 14068
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_74

    :cond_9a
    move-object v0, v4

    .line 14081
    :goto_9b
    new-instance v1, Lcom/android/email/activity/MessageCompose$57;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$57;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14098
    const v0, 0x7f080235

    new-instance v1, Lcom/android/email/activity/MessageCompose$58;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$58;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14113
    const v0, 0x7f0805e1

    new-instance v1, Lcom/android/email/activity/MessageCompose$59;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/MessageCompose$59;-><init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14134
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_a

    .line 14073
    :cond_c2
    new-array v0, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_9b
.end method

.method private onViewAttachment(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 11203
    const-string v0, "Compose >>"

    const-string v1, "onViewAttachment"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11205
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 11206
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 11208
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 11229
    :goto_17
    return-void

    .line 11214
    :cond_18
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewAttachment() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 11215
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->onAttachPreview(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto :goto_17
.end method

.method private parseHtmlATag(Ljava/lang/String;)Z
    .registers 8
    .parameter "htmlBody"

    .prologue
    .line 13875
    const-string v0, "<IMG+.*?>"

    .line 13876
    .local v0, REG_EXPRE_FOR_IMG:Ljava/lang/String;
    const/4 v1, 0x0

    .line 13878
    .local v1, hasDataImage:Z
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 13879
    .local v4, p:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 13880
    .local v3, m:Ljava/util/regex/Matcher;
    :cond_b
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 13881
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 13882
    .local v2, imgTag:Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 13883
    const-string v5, "SRC=\""

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 13884
    const/4 v1, 0x1

    .line 13889
    .end local v1           #hasDataImage:Z
    .end local v2           #imgTag:Ljava/lang/String;
    :cond_20
    return v1
.end method

.method private processFromEntityValues(JLandroid/content/Entity;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1496
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1497
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 1498
    invoke-virtual {p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 1499
    invoke-virtual {p3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v0

    .line 1501
    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1502
    const-string v4, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1503
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "meeting_response"

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1505
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object p4, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1506
    and-int/lit8 v4, v4, 0x3

    packed-switch v4, :pswitch_data_106

    .line 1530
    :cond_3a
    :goto_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_102

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 1531
    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1532
    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1533
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1534
    const-string v0, "attendeeRelationship"

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1537
    if-eqz v0, :cond_3e

    const-string v4, "attendeeEmail"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1539
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3e

    .line 1540
    const-string v0, "attendeeName"

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1541
    const-string v1, "attendeeEmail"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 1550
    :goto_7c
    if-nez v0, :cond_84

    .line 1551
    const-string v0, "organizer"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1553
    :cond_84
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    new-instance v3, Lcom/android/emailcommon/mail/Address;

    invoke-direct {v3, v0, v1}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Lcom/android/emailcommon/mail/Address;Z)Z

    .line 1554
    return-void

    .line 1508
    :pswitch_8f
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080167

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 1512
    :pswitch_a4
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080169

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 1516
    :pswitch_b9
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080168

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    .line 1521
    :cond_cf
    const-string v4, "com.android.email.intent.action.CALENDAR_PROPOSE_NEW_TIME"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1522
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08055f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    :cond_102
    move-object v0, v1

    goto/16 :goto_7c

    .line 1506
    nop

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_a4
        :pswitch_b9
    .end packed-switch
.end method

.method private safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/util/ArrayList;)Z
    .registers 12
    .parameter "addrs"
    .parameter "ourAddress"
    .parameter "bubbleLayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/email/activity/bubblelayout/BubbleLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 10151
    .local p4, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    const/4 v0, 0x0

    .line 10152
    .local v0, added:Z
    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .local v2, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_7
    if-ge v3, v4, :cond_2a

    aget-object v1, v2, v3

    .line 10154
    .local v1, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 10155
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10156
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 10157
    const/4 v0, 0x1

    .line 10152
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 10160
    .end local v1           #address:Lcom/android/emailcommon/mail/Address;
    :cond_2a
    return v0
.end method

.method private saveIfNeeded()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5337
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v0, :cond_6

    .line 5351
    :cond_5
    :goto_5
    return-void

    .line 5341
    :cond_6
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDoNotSaveDraft:Z

    if-eqz v0, :cond_12

    .line 5342
    const-string v0, "Compose >>"

    const-string v1, " ///////////////return   saveIfNeeded()   mDoNotSaveDraft = true "

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 5346
    :cond_12
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5349
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 5350
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    goto :goto_5
.end method

.method private selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V
    .registers 2
    .parameter "bubbleLayout"

    .prologue
    .line 14331
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAddBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    .line 14332
    return-void
.end method

.method private send()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5359
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 5360
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 5361
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIgnoreDraftNeedsSaving:Z

    .line 5365
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 5372
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    .line 5374
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compose draft saving mOnSend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mOnSend:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5376
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 5378
    return-void
.end method

.method private sendOrSaveMessage(Z)V
    .registers 4
    .parameter "send"

    .prologue
    .line 5322
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v0, :cond_5

    .line 5334
    :cond_4
    :goto_4
    return-void

    .line 5326
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_4

    .line 5329
    sget-object v1, Lcom/android/email/activity/MessageCompose;->sSaveInProgressCondition:Ljava/lang/Object;

    monitor-enter v1

    .line 5330
    const/4 v0, 0x1

    :try_start_11
    sput-boolean v0, Lcom/android/email/activity/MessageCompose;->sSaveInProgress:Z

    .line 5331
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_24

    .line 5332
    new-instance v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    .line 5333
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 5331
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private setAccount(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 972
    const-string v0, "account_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 973
    cmp-long v2, v0, v3

    if-nez v2, :cond_10

    .line 974
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 978
    :cond_10
    cmp-long v2, v0, v3

    if-nez v2, :cond_1b

    .line 982
    :try_start_14
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 983
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 991
    :goto_1a
    return-void

    .line 985
    :cond_1b
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_22} :catch_23

    goto :goto_1a

    .line 987
    :catch_23
    move-exception v0

    .line 988
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 994
    if-nez p1, :cond_8

    .line 995
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 997
    :cond_8
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 998
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->invalidateOptionsMenu()V

    .line 1001
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1002
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1003
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/EmailAddressAdapter;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1006
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->checkAttachment()V

    .line 1008
    return-void
.end method

.method private setActionBarButtonLayout(I)V
    .registers 13
    .parameter

    .prologue
    const v10, 0x7f090028

    const v9, 0x7f090027

    const v8, 0x7f090026

    const v7, 0x7f090025

    const/4 v6, 0x0

    .line 7934
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_smemo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7936
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_attach:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7938
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_save:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7940
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_cancel:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7942
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_mail:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7948
    const/4 v5, 0x2

    if-ne p1, v5, :cond_8f

    .line 7949
    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mIsQ1BasedModel:Z

    if-eqz v5, :cond_7a

    .line 7950
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 7952
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 7955
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7956
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7984
    :goto_50
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7985
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7986
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7987
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7988
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7989
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7990
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7991
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7993
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_smemo:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7994
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_attach:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7995
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_save:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7996
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_cancel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7997
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_mail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7998
    return-void

    .line 7958
    :cond_7a
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7959
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7961
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 7963
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    goto :goto_50

    .line 7967
    :cond_8f
    iget-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mIsQ1BasedModel:Z

    if-eqz v5, :cond_a8

    .line 7968
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 7969
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 7972
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7973
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_50

    .line 7975
    :cond_a8
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7976
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7978
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 7979
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    goto :goto_50
.end method

.method private setActionBarByGUIThemeOfPreference(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3213
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActionBarByGUIThemeOfPreference: isBlack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    if-eqz p1, :cond_2c

    .line 3216
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040081

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 3222
    :goto_2b
    return-void

    .line 3219
    :cond_2c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040082

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_2b
.end method

.method private setContentViewByGUIThemeOfPreference(Z)V
    .registers 5
    .parameter

    .prologue
    .line 3243
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContentViewByGUIThemeOfPreference: isBlack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    if-eqz p1, :cond_21

    .line 3246
    const v0, 0x7f040080

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setContentView(I)V

    .line 3250
    :goto_20
    return-void

    .line 3248
    :cond_21
    const v0, 0x7f040093

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setContentView(I)V

    goto :goto_20
.end method

.method private setCursorColorByGUIThemeOfPreference(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/high16 v3, -0x100

    .line 3226
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCursorColorByGUIThemeOfPreference: isBlack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    if-eqz p1, :cond_32

    .line 3229
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 3230
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 3231
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 3232
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setCursorColor(I)V

    .line 3239
    :goto_31
    return-void

    .line 3234
    :cond_32
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 3235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 3236
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setCursorColor(I)V

    .line 3237
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorColor(I)V

    goto :goto_31
.end method

.method private setDefaultFontSizeBySettings()I
    .registers 5

    .prologue
    const/16 v0, 0x13

    .line 5631
    const-string v1, "Q1_EUR_OPEN"

    invoke-static {v1}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "Q1_CHN_OPEN"

    invoke-static {v1}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "Q1_HKTW_OPEN"

    invoke-static {v1}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 5642
    :cond_1a
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5645
    packed-switch v1, :pswitch_data_50

    .line 5670
    :goto_28
    :pswitch_28
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultFontSizeBySettings: mValue == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5671
    :goto_40
    return v0

    .line 5636
    :cond_41
    const/16 v0, 0x18

    goto :goto_40

    .line 5647
    :pswitch_44
    const/16 v0, 0x2a

    .line 5648
    goto :goto_28

    .line 5651
    :pswitch_47
    const/16 v0, 0x1b

    .line 5652
    goto :goto_28

    .line 5659
    :pswitch_4a
    const/16 v0, 0x11

    .line 5660
    goto :goto_28

    .line 5663
    :pswitch_4d
    const/16 v0, 0xf

    .line 5664
    goto :goto_28

    .line 5645
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_44
        :pswitch_47
        :pswitch_28
        :pswitch_4a
        :pswitch_4d
    .end packed-switch
.end method

.method private setDraftNeedsSaving(Z)V
    .registers 2
    .parameter "needsSaving"

    .prologue
    .line 2006
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 2007
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mSaveEnabled:Z

    .line 2011
    return-void
.end method

.method private setFromAccount()V
    .registers 12

    .prologue
    .line 4289
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 4290
    :cond_c
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-nez v1, :cond_17

    .line 4291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    .line 4294
    :cond_17
    const/4 v8, 0x0

    .line 4296
    .local v8, cur:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts()Z

    move-result v1

    if-nez v1, :cond_e3

    .line 4297
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4312
    :goto_30
    :try_start_30
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 4315
    :cond_36
    new-instance v0, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v1, "displayName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "emailAddress"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "hostAuthKeyRecv"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v1, "typeMsg"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;-><init>(Lcom/android/email/activity/MessageCompose;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V

    .line 4326
    .local v0, accountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4328
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7a
    .catchall {:try_start_30 .. :try_end_7a} :catchall_f5

    move-result v1

    if-nez v1, :cond_36

    .line 4332
    .end local v0           #accountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;
    :cond_7d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4337
    .end local v8           #cur:Landroid/database/Cursor;
    :cond_80
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_d3

    .line 4338
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_8a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    .line 4340
    .local v10, item:Lcom/android/email/activity/MessageCompose$AccountInfoItem;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v10}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getAccountId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_8a

    .line 4342
    iput-object v10, p0, Lcom/android/email/activity/MessageCompose;->mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    .line 4345
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountInfoArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_fa

    .line 4348
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4349
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 4350
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCurrentAccountInfoItem:Lcom/android/email/activity/MessageCompose$AccountInfoItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose$AccountInfoItem;->getFromText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4368
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #item:Lcom/android/email/activity/MessageCompose$AccountInfoItem;
    :cond_d3
    :goto_d3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    if-nez v1, :cond_e2

    .line 4370
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4373
    :cond_e2
    return-void

    .line 4303
    .restart local v8       #cur:Landroid/database/Cursor;
    :cond_e3
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "typeMsg = 0  AND  displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_30

    .line 4332
    :catchall_f5
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 4352
    .end local v8           #cur:Landroid/database/Cursor;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #item:Lcom/android/email/activity/MessageCompose$AccountInfoItem;
    :cond_fa
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mFromSummaryText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 4353
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mFromLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d3
.end method

.method private setFromLayoutMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 10864
    if-nez p1, :cond_4

    .line 10865
    iget p1, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    .line 10868
    :cond_4
    packed-switch p1, :pswitch_data_10

    .line 10900
    :goto_7
    return-void

    .line 10881
    :pswitch_8
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    goto :goto_7

    .line 10897
    :pswitch_c
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mFromLayoutMode:I

    goto :goto_7

    .line 10868
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method private setIncludeQuotedText(ZZ)V
    .registers 6
    .parameter "include"
    .parameter "updateNeedsSaving"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 8512
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_13

    .line 8513
    if-eqz p1, :cond_1a

    .line 8514
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8515
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    .line 8523
    :cond_13
    :goto_13
    if-eqz p2, :cond_19

    .line 8524
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 8526
    :cond_19
    return-void

    .line 8517
    :cond_1a
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    .line 8518
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13
.end method

.method private setNewMessageFocus()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10576
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10577
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 10598
    :goto_d
    return-void

    .line 10578
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_22

    .line 10579
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 10580
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 10582
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto :goto_d

    .line 10586
    :cond_22
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->hasWindowFocus()Z

    move-result v0

    if-ne v2, v0, :cond_36

    .line 10587
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 10594
    :goto_2f
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 10596
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto :goto_d

    .line 10589
    :cond_36
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->delayedFocusForHtmlComposerView()V

    goto :goto_2f
.end method

.method private setupAddressAdapters()V
    .registers 2

    .prologue
    .line 3422
    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    .line 3423
    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    .line 3424
    new-instance v0, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    .line 3425
    return-void
.end method

.method private showResultToast(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 13230
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_c

    .line 13231
    const v0, 0x7f0800bb

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    .line 13243
    :cond_b
    :goto_b
    return-void

    .line 13232
    :cond_c
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_17

    .line 13233
    const v0, 0x7f0800ba

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_b

    .line 13234
    :cond_17
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_22

    .line 13235
    const v0, 0x7f080210

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_b

    .line 13237
    :cond_22
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2d

    .line 13238
    const v0, 0x7f0805d5

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_b

    .line 13240
    :cond_2d
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_b

    .line 13241
    const v0, 0x7f080213

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_b
.end method

.method public static showSendingNotificationByViewActivity(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 7915
    if-nez p1, :cond_5

    .line 7916
    const-string p1, ""

    .line 7917
    :cond_5
    const v0, 0x7f080308

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7919
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f02033b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v1, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    .line 7922
    sget-object v1, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    invoke-virtual {v1, p0, v0, p1, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 7923
    sget-object v0, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 7925
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/email/activity/MessageCompose;->notificationManager:Landroid/app/NotificationManager;

    .line 7927
    sget-object v0, Lcom/android/email/activity/MessageCompose;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/email/activity/MessageCompose;->note:Landroid/app/Notification;

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 7928
    sget-object v0, Lcom/android/email/activity/MessageCompose;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 7929
    return-void
.end method

.method public static showSendingNotification_Start(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 5
    .parameter

    .prologue
    .line 7904
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 7905
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendingNotification_Start() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7909
    :cond_2a
    sget-object v0, Lcom/android/email/activity/MessageCompose;->Notificationdata:Ljava/util/Hashtable;

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7910
    return-void
.end method

.method private showSoftKeyboard(Z)V
    .registers 6
    .parameter "isShowing"

    .prologue
    const/4 v3, 0x0

    .line 13207
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 13209
    .local v0, focusView:Landroid/view/View;
    if-eqz v0, :cond_14

    .line 13210
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 13212
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_15

    .line 13213
    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 13218
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_14
    :goto_14
    return-void

    .line 13215
    .restart local v1       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_14
.end method

.method private showToast(II)V
    .registers 3
    .parameter "resID"
    .parameter "duration"

    .prologue
    .line 13221
    invoke-static {p0, p1, p2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 13227
    return-void
.end method

.method private showToasts(II)V
    .registers 4
    .parameter "msg"
    .parameter "duration"

    .prologue
    .line 11507
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_21

    .line 11508
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 11509
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 11510
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 11519
    :goto_1a
    return-void

    .line 11513
    :cond_1b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1a

    .line 11516
    :cond_21
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    .line 11517
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1a
.end method

.method private shrinkAttachmentLayout()V
    .registers 2

    .prologue
    .line 10674
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 10675
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 10679
    :goto_c
    return-void

    .line 10677
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto :goto_c
.end method

.method private shrinkAttachmentLayout(Z)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f100196

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 10635
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 10639
    if-lez v0, :cond_55

    .line 10640
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10641
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->arrangeAttachments()V

    .line 10644
    if-eqz p1, :cond_34

    if-le v0, v4, :cond_34

    .line 10646
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10648
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 10651
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10671
    :goto_33
    return-void

    .line 10655
    :cond_34
    if-le v0, v4, :cond_4f

    .line 10656
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10658
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 10664
    :goto_49
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_33

    .line 10662
    :cond_4f
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentSummaryLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_49

    .line 10669
    :cond_55
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_33
.end method

.method private shrinkCcBccLayout()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 10689
    const/4 v0, 0x0

    .line 10691
    .local v0, isreturn:Z
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 10692
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 10693
    const/4 v0, 0x1

    .line 10696
    :cond_1a
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/AddressTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 10697
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 10698
    const/4 v0, 0x1

    .line 10701
    :cond_32
    if-eqz v0, :cond_35

    .line 10730
    :goto_34
    return-void

    .line 10705
    :cond_35
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 10711
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 10712
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 10729
    :goto_4b
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_34

    .line 10720
    :cond_4f
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 10721
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    goto :goto_4b
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 951
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 952
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 953
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 954
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 956
    return-void
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;JI)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 961
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 962
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 963
    const-string v1, "meeting_response"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 965
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 968
    return-void
.end method

.method private startAttachmentActivity(I)V
    .registers 7
    .parameter

    .prologue
    .line 11595
    const-string v0, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAttachmentActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11600
    packed-switch p1, :pswitch_data_1de

    .line 11742
    :goto_1b
    :pswitch_1b
    return-void

    .line 11602
    :pswitch_1c
    const/4 v0, 0x0

    :try_start_1d
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11603
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddAttachmentFromMyfiles()V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_23} :catch_24

    goto :goto_1b

    .line 11738
    :catch_24
    move-exception v0

    .line 11739
    const-string v1, "Compose >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: startAttachmentActivity()\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 11608
    :pswitch_42
    const/4 v0, 0x0

    :try_start_43
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11609
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11610
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11611
    const-string v1, "existingRecipientCount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11612
    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11613
    const-string v1, "Compose >>"

    const-string v2, "start broadcast intent : type 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11615
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 11616
    const-string v0, "Compose >>"

    const-string v1, "end broadcast intent : type 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 11622
    :pswitch_73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11623
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11624
    const-string v1, "vnd.android.cursor.dir/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11625
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1b

    .line 11632
    :pswitch_8b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11633
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11634
    const-string v1, "text/x-vnote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11635
    const-string v1, "Compose >>"

    const-string v2, "start broadcast intent : type 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11637
    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 11638
    const-string v0, "Compose >>"

    const-string v1, "end broadcast intent : type 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 11643
    :pswitch_b0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11644
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11645
    const-string v1, "app_name"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11646
    const/16 v1, 0x3f4

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 11650
    :pswitch_c9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11652
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11653
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11654
    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 11658
    :pswitch_e5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11659
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11660
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11662
    const-string v1, "return-uri"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11663
    const/16 v1, 0x3ee

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 11667
    :pswitch_104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11668
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11669
    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.ExternelAccessActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11671
    const-string v1, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11674
    const-string v2, "/Sounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11675
    const-string v2, "FOLDERPATH"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11676
    const-string v1, "CONTENT_TYPE"

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11677
    const/16 v1, 0x3f2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 11681
    :pswitch_142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11682
    const-string v1, "location"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11683
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v1

    .line 11684
    iget v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 11685
    const-string v3, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 11686
    const/16 v1, 0x3f3

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 11690
    :pswitch_163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11691
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11692
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11693
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11694
    const/16 v1, 0x3ef

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 11698
    :pswitch_17f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11699
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I

    move-result v0

    .line 11700
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 11704
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11705
    const-string v3, "android.intent.extra.videoQuality"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11706
    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 11709
    const-string v0, "email"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11710
    const/16 v0, 0x3f0

    invoke-virtual {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 11714
    :pswitch_1aa
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11715
    const/16 v0, 0x3f1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mLocationMode:I

    .line 11717
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->showDialog(I)V

    goto/16 :goto_1b

    .line 11722
    :pswitch_1b8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11723
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAttachmentDrawingPad()V

    goto/16 :goto_1b

    .line 11728
    :pswitch_1c1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11729
    const-string v1, "text/x-vtodo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11730
    const/16 v1, 0x3f6

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1b

    .line 11734
    :pswitch_1d4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 11735
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAttachmentSNote()V
    :try_end_1db
    .catch Landroid/content/ActivityNotFoundException; {:try_start_43 .. :try_end_1db} :catch_24

    goto/16 :goto_1b

    .line 11600
    nop

    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_42
        :pswitch_73
        :pswitch_8b
        :pswitch_c9
        :pswitch_e5
        :pswitch_163
        :pswitch_17f
        :pswitch_1aa
        :pswitch_104
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_142
        :pswitch_b0
        :pswitch_1b8
        :pswitch_1c1
        :pswitch_1b
        :pswitch_1d4
    .end packed-switch
.end method

.method private updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4575
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    .line 4577
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    .line 4578
    :cond_15
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 4581
    :cond_1b
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 4582
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    .line 4583
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    .line 4584
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    .line 4587
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 4588
    new-instance v1, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 4590
    new-instance v1, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 4595
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 4596
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 4597
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v1}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->getAddressesAsDelimiterType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 4598
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 4601
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getMailContent()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v1

    .line 4602
    if-nez v1, :cond_2b3

    .line 4603
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 4604
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 4611
    :goto_9f
    if-eqz v0, :cond_a5

    .line 4613
    const-string v1, "eas"

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountSchema:Ljava/lang/String;

    .line 4615
    :cond_a5
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    .line 4617
    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    const-string v1, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c5

    .line 4619
    :cond_bd
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    iput-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    .line 4620
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    iput-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    .line 4623
    :cond_c5
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 4624
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/EmailUtility;->makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 4626
    iput-boolean v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 4627
    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 4628
    iput-boolean p3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 4631
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ef

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 4632
    :cond_ef
    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageId:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mOriginalId:J

    .line 4636
    :cond_f3
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    .line 4637
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    .line 4638
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_15f

    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_153

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_153

    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_153

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_153

    const-string v1, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_153

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_153

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_153

    const-string v1, "com.android.email.intent.action.CALENDAR_PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15f

    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    if-ne v1, v6, :cond_15f

    .line 4649
    :cond_153
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 4650
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    iput-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    .line 4652
    :cond_15f
    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_173

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c1

    :cond_173
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    if-ne v1, v6, :cond_2c1

    .line 4654
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4673
    :cond_17d
    :goto_17d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v1

    if-eqz v1, :cond_189

    .line 4674
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4677
    :cond_189
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z

    if-eqz v1, :cond_193

    .line 4678
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4679
    :cond_193
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z

    if-eqz v1, :cond_19d

    .line 4680
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4683
    :cond_19d
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_342

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1ab

    if-eqz v0, :cond_342

    .line 4684
    :cond_1ab
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1fb

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1fb

    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1fb

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1fb

    const-string v1, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1fb

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1fb

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1fb

    const-string v1, "com.android.email.intent.action.CALENDAR_PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20d

    .line 4691
    :cond_1fb
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-nez v1, :cond_209

    iget-boolean v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v1, :cond_209

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v1

    if-eqz v1, :cond_315

    :cond_209
    if-eqz v0, :cond_315

    .line 4692
    iput-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 4705
    :cond_20d
    :goto_20d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4706
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_229

    const-string v0, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_325

    .line 4709
    :cond_229
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsSnc()Z

    move-result v0

    if-eqz v0, :cond_235

    .line 4710
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 4713
    :cond_235
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4714
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 4715
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4716
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4717
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_272

    .line 4718
    const v4, 0x7f0800b1

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v10

    aput-object v2, v5, v6

    const/4 v2, 0x2

    if-eqz v0, :cond_31d

    :goto_264
    aput-object v0, v5, v2

    const/4 v2, 0x3

    if-eqz v1, :cond_321

    move-object v0, v1

    :goto_26a
    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 4729
    :cond_272
    :goto_272
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    .line 4733
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    .line 4734
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    .line 4735
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    .line 4736
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    .line 4737
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    .line 4738
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    .line 4739
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    .line 4752
    :cond_2a4
    :goto_2a4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->includeQuotedText()Z

    move-result v0

    if-eqz v0, :cond_364

    .line 4753
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4770
    :cond_2b2
    :goto_2b2
    return-void

    .line 4606
    :cond_2b3
    invoke-virtual {v1}, Landroid/webkit/WebHTMLMarkupData;->plainText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 4607
    invoke-virtual {v1}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    goto/16 :goto_9f

    .line 4655
    :cond_2c1
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e9

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e9

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e9

    const-string v1, "com.android.email.intent.action.CALENDAR_PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f5

    :cond_2e9
    iget v1, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    if-ne v1, v6, :cond_2f5

    .line 4661
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_17d

    .line 4663
    :cond_2f5
    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_309

    const-string v1, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17d

    :cond_309
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v1, :cond_17d

    .line 4664
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    goto/16 :goto_17d

    .line 4694
    :cond_315
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    goto/16 :goto_20d

    .line 4718
    :cond_31d
    const-string v0, ""

    goto/16 :goto_264

    :cond_321
    const-string v0, ""

    goto/16 :goto_26a

    .line 4722
    :cond_325
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4723
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_272

    .line 4724
    const v0, 0x7f0800b2

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    goto/16 :goto_272

    .line 4742
    :cond_342
    if-eqz v0, :cond_2a4

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v0, :cond_2a4

    .line 4744
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a4

    .line 4745
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-nez v0, :cond_360

    iget-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_360

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v0

    if-eqz v0, :cond_2a4

    .line 4746
    :cond_360
    iput-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    goto/16 :goto_2a4

    .line 4755
    :cond_364
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 4756
    if-eqz p4, :cond_2b2

    .line 4763
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 4764
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 4765
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 4766
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 4767
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v1, v1, -0x4

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_2b2
.end method

.method private updateSignEncryptIcons()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 10283
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-eqz v0, :cond_16

    .line 10284
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10289
    :goto_c
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-eqz v0, :cond_1c

    .line 10290
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10294
    :goto_15
    return-void

    .line 10286
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSignIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    .line 10292
    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEncryptionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15
.end method


# virtual methods
.method public IsOriginMsgEdited()Z
    .registers 2

    .prologue
    .line 13247
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return v0
.end method

.method public SetOriginMsgEdited(Z)Z
    .registers 3
    .parameter "bset"

    .prologue
    .line 13251
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    .line 13252
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsOriginMsgEdited:Z

    return v0
.end method

.method public UpdateRichToolbar(Landroid/webkit/HtmlComposerView;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const v4, 0x3f19999a

    const/4 v3, 0x0

    .line 3293
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    .line 3294
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    .line 3296
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3297
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3298
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3299
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3300
    if-nez p2, :cond_d0

    .line 3301
    invoke-virtual {v0, v3}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 3303
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3304
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3305
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3306
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3307
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3308
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3309
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3310
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3311
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3312
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3313
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3314
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3315
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3316
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3317
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3318
    iget-object v0, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3320
    invoke-virtual {v1, v3}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 3322
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3323
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3324
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3325
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3326
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3327
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3328
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3329
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3330
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3331
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3332
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3333
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3334
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3335
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3336
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3337
    iget-object v0, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3390
    :goto_cf
    return-void

    .line 3339
    :cond_d0
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3340
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3341
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3342
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3343
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3344
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3345
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3346
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3347
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3348
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3350
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3351
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnBold:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3352
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3353
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnItalic:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3354
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3355
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnFontsize:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3356
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3357
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3358
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3359
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3360
    invoke-virtual {p1}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 3361
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3362
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3363
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3364
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3371
    :goto_14e
    invoke-virtual {p1}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 3372
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3373
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3374
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3375
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3382
    :goto_168
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3383
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3384
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3385
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnInsert:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3387
    invoke-virtual {p1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    .line 3388
    invoke-virtual {p1}, Landroid/webkit/HtmlComposerView;->getStateInRichlyEditableText()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/email/activity/ToolBarScrollView;->changeToolBarState(I)V

    goto/16 :goto_cf

    .line 3366
    :cond_18c
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3367
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3368
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3369
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_14e

    .line 3377
    :cond_1a1
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3378
    iget-object v2, v0, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 3379
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3380
    iget-object v2, v1, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_168
.end method

.method public attachmentProgress(Z)V
    .registers 4
    .parameter "progress"

    .prologue
    .line 13908
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 13909
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 13910
    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 13911
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13912
    return-void

    .line 13910
    :cond_13
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public changeToolBarFontBgColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 13722
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_17

    .line 13728
    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontBgColorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_1c

    .line 13732
    :goto_16
    return-void

    .line 13724
    :catch_17
    move-exception v0

    .line 13725
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 13729
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 13730
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public changeToolBarFontColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 13704
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontColorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_17

    .line 13710
    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/ToolBarScrollView;->mFontColorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_1c

    .line 13714
    :goto_16
    return-void

    .line 13706
    :catch_17
    move-exception v0

    .line 13707
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 13711
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 13712
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public delayedFocusForHtmlComposerView()V
    .registers 6

    .prologue
    .line 13946
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 13947
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9a

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 13948
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 13809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mTouchEventY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mScrolledDistance:F

    .line 13811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mTouchEventY:F

    .line 13813
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public displayToast(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 13354
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 13355
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x91

    iput v1, v0, Landroid/os/Message;->what:I

    .line 13356
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 13357
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13358
    return-void
.end method

.method public finishLoadAttachment(J)V
    .registers 5
    .parameter "attachmentId"

    .prologue
    .line 13915
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 13916
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x90

    iput v1, v0, Landroid/os/Message;->what:I

    .line 13917
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 13918
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13919
    return-void
.end method

.method public finishLoadInlineAttachment()V
    .registers 3

    .prologue
    .line 13922
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 13923
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x93

    iput v1, v0, Landroid/os/Message;->what:I

    .line 13924
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13925
    return-void
.end method

.method public finishLoadMore()V
    .registers 3

    .prologue
    .line 13940
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 13941
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x95

    iput v1, v0, Landroid/os/Message;->what:I

    .line 13942
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13943
    return-void
.end method

.method getIsSyncedDraftMessage()Z
    .registers 2

    .prologue
    .line 13859
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    return v0
.end method

.method initFromIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 9446
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 9447
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9448
    if-eqz v3, :cond_2e

    .line 9449
    array-length v5, v3

    move v0, v2

    :goto_12
    if-ge v0, v5, :cond_2e

    aget-object v6, v3, v0

    .line 9450
    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 9452
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9449
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 9454
    :cond_22
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 9455
    const v6, 0x7f0801c2

    invoke-direct {p0, v6, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_1f

    .line 9464
    :cond_2e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_151

    .line 9465
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    .line 9466
    new-instance v0, Lcom/android/email/activity/MessageCompose$AddAddessTask;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$AddAddessTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressFromIntentTask:Landroid/os/AsyncTask;

    .line 9471
    :cond_48
    :goto_48
    const-string v0, "android.intent.extra.CC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9472
    if-eqz v0, :cond_55

    .line 9473
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    .line 9476
    :cond_55
    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9477
    if-eqz v0, :cond_62

    .line 9478
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    .line 9480
    :cond_62
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9481
    if-eqz v0, :cond_6f

    .line 9482
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9492
    :cond_6f
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 9493
    if-eqz v0, :cond_88

    .line 9494
    const-string v3, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_164

    .line 9495
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->initializeFromMailTo(Ljava/lang/String;)V

    .line 9505
    :cond_88
    :goto_88
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 9506
    if-eqz v3, :cond_9b

    .line 9509
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_98
    invoke-virtual {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 9534
    :cond_9b
    const-string v0, "android.intent.action.SEND"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 9535
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 9536
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 9537
    if-eqz v0, :cond_121

    if-eqz v3, :cond_121

    .line 9546
    const-string v4, "text/x-vcard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17a

    .line 9549
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 9550
    const-string v1, "vcard"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 9553
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 9554
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    .line 9556
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 9560
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9

    if-eqz v3, :cond_f9

    .line 9561
    const-string v4, "Compose >>"

    const-string v5, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9563
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v0, v2

    .line 9564
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    .line 9567
    :cond_f9
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    if-eqz v3, :cond_121

    .line 9568
    const-string v0, "Compose >>"

    const-string v1, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND_MULTIPLE"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 9571
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 9574
    if-eqz v0, :cond_121

    .line 9576
    new-instance v1, Lcom/android/email/activity/MessageCompose$35;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$35;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCompose$35;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    .line 9777
    :cond_121
    :goto_121
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 9778
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 9807
    if-eqz v0, :cond_14a

    .line 9808
    new-instance v1, Lcom/android/email/activity/MessageCompose$36;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$36;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/email/activity/MessageCompose$36;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    .line 9968
    :cond_14a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 9969
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 9970
    return-void

    .line 9467
    :cond_151
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_48

    .line 9468
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/lang/String;)V

    goto/16 :goto_48

    .line 9497
    :cond_164
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 9498
    if-eqz v0, :cond_88

    .line 9499
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Ljava/lang/String;)V

    goto/16 :goto_88

    :cond_177
    move-object v0, v1

    .line 9509
    goto/16 :goto_98

    .line 9769
    :cond_17a
    new-instance v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    goto :goto_121
.end method

.method isAddressAllValid()Z
    .registers 5

    .prologue
    const v3, 0x7f0800c7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5694
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isValidAddress()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5695
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 5696
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 5708
    :cond_20
    :goto_20
    return v0

    .line 5698
    :cond_21
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isValidAddress()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 5699
    :cond_2f
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 5700
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 5701
    goto :goto_20

    .line 5702
    :cond_3d
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isValidAddress()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5703
    :cond_4b
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 5704
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 5705
    goto :goto_20
.end method

.method isExpiredSpellCheckMode()Z
    .registers 6

    .prologue
    .line 14233
    const/4 v0, 0x0

    .line 14235
    .local v0, ret:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/android/email/activity/MessageCompose;->tLastSpellcheck:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_f

    .line 14236
    const/4 v0, 0x1

    .line 14239
    :cond_f
    return v0
.end method

.method public messageChanged()V
    .registers 3

    .prologue
    .line 13361
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 13362
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x97

    iput v1, v0, Landroid/os/Message;->what:I

    .line 13363
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13364
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 6278
    if-nez p3, :cond_8

    .line 7545
    :cond_7
    :goto_7
    return-void

    .line 6281
    :cond_8
    sparse-switch p1, :sswitch_data_a4c

    .line 7544
    :cond_b
    :goto_b
    :sswitch_b
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    goto :goto_7

    .line 6283
    :sswitch_f
    if-ne p2, v2, :cond_b

    .line 6287
    const-string v0, "FILE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6291
    array-length v3, v2

    move v0, v1

    :goto_19
    if-ge v1, v3, :cond_34

    aget-object v4, v2, v1

    .line 6292
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6293
    if-eqz v5, :cond_31

    .line 6294
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v4

    or-int/2addr v0, v4

    .line 6291
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 6298
    :cond_34
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto :goto_b

    .line 6303
    :sswitch_38
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_IMAGE"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6307
    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 6310
    if-nez v0, :cond_5d

    .line 6313
    new-instance v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v2, v8, [Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    goto :goto_b

    .line 6319
    :cond_5d
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_79

    .line 6320
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQUEST_ATTACHMENT_IMAGE file path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6323
    :cond_79
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6324
    if-eqz v2, :cond_d1

    .line 6325
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6326
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6327
    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6328
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6329
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6331
    const/16 v5, 0x32

    if-le v4, v5, :cond_c3

    const/16 v5, 0x32

    if-le v3, v5, :cond_c3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_ba

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_ba

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_c3

    .line 6336
    :cond_ba
    invoke-direct {p0, v0, v4, v3}, Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V

    move v0, v1

    .line 6344
    :goto_be
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_b

    .line 6338
    :cond_c3
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_be

    .line 6340
    :cond_d1
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_ATTACH_IMAGE file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6341
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_7

    .line 6349
    :sswitch_dd
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_TAKE_PICTURE"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6352
    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6354
    if-eqz v0, :cond_b

    .line 6355
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6359
    if-eqz v0, :cond_157

    .line 6361
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 6365
    if-nez v0, :cond_101

    .line 6366
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_TAKE_PICTURE file path = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 6371
    :cond_101
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_11d

    .line 6372
    const-string v2, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST_ATTACHMENT_TAKE_PICTURE file path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6380
    :cond_11d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6381
    if-eqz v2, :cond_14b

    .line 6382
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6383
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6384
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6385
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6386
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6388
    const/16 v5, 0x32

    if-le v4, v5, :cond_145

    const/16 v5, 0x32

    if-le v2, v5, :cond_145

    .line 6389
    invoke-direct {p0, v0, v4, v2}, Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V

    .line 6398
    :goto_13d
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    .line 6405
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_b

    .line 6391
    :cond_145
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_13d

    .line 6393
    :cond_14b
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_TAKE_PICTURE file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6395
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_7

    .line 6400
    :cond_157
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_TAKE_PICTURE = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6401
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_7

    .line 6410
    :sswitch_163
    const-string v0, "Email"

    const-string v3, "onActivityResult: requestCode = REQUEST_ATTACHMENT_ADD_AUDIO"

    invoke-static {v0, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6412
    if-ne p2, v2, :cond_b

    if-eqz p3, :cond_b

    .line 6415
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 6416
    if-eqz v0, :cond_186

    .line 6417
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    .line 6423
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_b

    .line 6419
    :cond_186
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_ADD_AUDIO file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 6428
    :sswitch_18f
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_CODE_RECORD_SOUND"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6432
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6433
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6435
    if-eqz v0, :cond_1de

    .line 6436
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 6437
    if-eqz v0, :cond_1d2

    .line 6438
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6439
    if-eqz v2, :cond_1c6

    .line 6440
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    .line 6457
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    .line 6458
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_b

    .line 6442
    :cond_1c6
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6443
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_7

    .line 6447
    :cond_1d2
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6448
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_7

    .line 6452
    :cond_1de
    const-string v0, "Email"

    const-string v1, "REQUEST_CODE_RECORD_SOUND file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6453
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_7

    .line 6464
    :sswitch_1ea
    const/16 v0, 0x3ef

    if-ne v0, p1, :cond_209

    .line 6465
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_ADD_VIDEO"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6473
    :cond_1f5
    :goto_1f5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 6475
    if-eqz v0, :cond_215

    .line 6476
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    .line 6483
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_b

    .line 6467
    :cond_209
    const/16 v0, 0x3f0

    if-ne v0, p1, :cond_1f5

    .line 6468
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_TAKE_VIDEO"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f5

    .line 6478
    :cond_215
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_ADD_VIDEO or TAKE_VIDEO file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 6488
    :sswitch_21e
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 6490
    const-string v2, "text/x-vcard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6491
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 6492
    const-string v2, "vcard"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6495
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 6496
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    .line 6498
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 6502
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25e

    if-eqz v3, :cond_25e

    .line 6503
    const-string v4, "Compose >>"

    const-string v5, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6505
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v0, v1

    .line 6506
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    .line 6509
    :cond_25e
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v3, :cond_b

    .line 6510
    const-string v0, "Compose >>"

    const-string v2, "[Email] EQUEST_ATTACHMENT_VCARD : ACTION_SEND_MULTIPLE"

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6512
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6544
    if-eqz v0, :cond_b

    .line 6546
    new-instance v2, Lcom/android/email/activity/MessageCompose$25;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$25;-><init>(Lcom/android/email/activity/MessageCompose;)V

    new-array v3, v8, [Ljava/util/ArrayList;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose$25;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    goto/16 :goto_b

    .line 6748
    :sswitch_288
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6749
    if-eqz v3, :cond_7

    move v2, v1

    .line 6755
    :goto_291
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2b1

    .line 6756
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6758
    if-eqz v0, :cond_a49

    .line 6759
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v0, v1

    .line 6755
    :goto_2ac
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_291

    .line 6763
    :cond_2b1
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_b

    .line 6768
    :sswitch_2b6
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_PEN_MEMO"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6772
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6774
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f2

    .line 6775
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6778
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 6779
    check-cast v0, Landroid/net/Uri;

    .line 6780
    if-eqz v0, :cond_2e9

    .line 6781
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_2d3

    .line 6783
    :cond_2e9
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACH_OR_INSERT_SMEMO file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 6789
    :cond_2f2
    :try_start_2f2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 6791
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I
    :try_end_301
    .catch Ljava/lang/Exception; {:try_start_2f2 .. :try_end_301} :catch_305

    move-result v0

    or-int/2addr v0, v1

    goto/16 :goto_b

    .line 6792
    :catch_305
    move-exception v0

    .line 6793
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 6801
    :sswitch_30b
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACH_OR_INSERT_SMEMO"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6806
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const v4, 0x7f0801ae

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const v4, 0x7f0802d3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 6810
    new-instance v4, Lcom/android/email/activity/MessageCompose$SMemoItem;

    aget-object v5, v2, v1

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/MessageCompose$SMemoItem;-><init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    .line 6811
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6813
    new-instance v4, Lcom/android/email/activity/MessageCompose$SMemoItem;

    aget-object v2, v2, v8

    invoke-direct {v4, p0, v2}, Lcom/android/email/activity/MessageCompose$SMemoItem;-><init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    .line 6814
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6816
    new-instance v2, Lcom/android/email/activity/MessageCompose$SMemoAdapter;

    const v4, 0x7f040071

    invoke-direct {v2, p0, p0, v4, v0}, Lcom/android/email/activity/MessageCompose$SMemoAdapter;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 6818
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6820
    const v4, 0x7f080205

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6822
    const v4, 0x7f080043

    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6827
    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    .line 6831
    new-instance v3, Lcom/android/email/activity/MessageCompose$26;

    invoke-direct {v3, p0, p3}, Lcom/android/email/activity/MessageCompose$26;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_b

    .line 6915
    :sswitch_36e
    const-string v0, "return_image_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6916
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6918
    if-eqz v0, :cond_b

    .line 6919
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6920
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6921
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6923
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 6925
    const/16 v4, 0x168

    .line 6928
    if-eqz v6, :cond_a46

    .line 6929
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6930
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6932
    if-lez v3, :cond_396

    .line 6933
    mul-int v2, v0, v4

    div-int/2addr v2, v3

    .line 6936
    :cond_396
    if-le v4, v3, :cond_a46

    move v2, v0

    move v0, v3

    .line 6944
    :goto_39a
    if-eqz v7, :cond_3a4

    .line 6946
    invoke-direct {p0, v5, v0, v2}, Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V

    .line 6952
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_b

    .line 6948
    :cond_3a4
    const-string v0, "Email"

    const-string v1, "REQUEST_ATTACHMENT_DRAWING_PAD file = null"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 6958
    :sswitch_3ad
    const-string v0, "Email"

    const-string v2, "onActivityResult: requestCode = REQUEST_ATTACHMENT_ADD_SNOTE"

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 6962
    :try_start_3b4
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f3

    .line 6963
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6966
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 6967
    check-cast v0, Landroid/net/Uri;

    .line 6968
    if-eqz v0, :cond_3dc

    .line 6969
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_3c6

    .line 6971
    :cond_3dc
    const-string v0, "Email"

    const-string v2, "REQUEST_ATTACHMENT_PEN_MEMO file = null"

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e3
    .catch Ljava/lang/NullPointerException; {:try_start_3b4 .. :try_end_3e3} :catch_3e5

    goto/16 :goto_7

    .line 6990
    :catch_3e5
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    .line 6991
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 7003
    :goto_3ec
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_b

    :cond_3f1
    move v0, v1

    .line 6976
    goto :goto_3ec

    .line 6978
    :cond_3f3
    :try_start_3f3
    invoke-direct {p0, p3}, Lcom/android/email/activity/MessageCompose;->getFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 6980
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6982
    if-eqz v0, :cond_408

    .line 6983
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_3ec

    .line 6986
    :cond_408
    const-string v0, "Email"

    const-string v2, "REQUEST_ATTACHMENT_PEN_MEMO file = null"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40f
    .catch Ljava/lang/NullPointerException; {:try_start_3f3 .. :try_end_40f} :catch_3e5

    goto/16 :goto_7

    .line 7008
    :sswitch_411
    const-string v0, "return_image_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7009
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7011
    if-eqz v1, :cond_b

    .line 7012
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7013
    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7014
    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7016
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 7018
    const/16 v4, 0x168

    .line 7021
    if-eqz v5, :cond_a42

    .line 7022
    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 7023
    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 7025
    if-lez v3, :cond_a3f

    .line 7026
    mul-int v1, v0, v4

    div-int/2addr v1, v3

    .line 7029
    :goto_439
    if-le v4, v3, :cond_a3b

    move v1, v3

    .line 7036
    :goto_43c
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v2, v8, :cond_44e

    .line 7037
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7038
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v3, ""

    sget-object v4, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 7042
    :cond_44e
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_474

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v2

    if-ne v8, v2, :cond_474

    .line 7043
    if-lez v1, :cond_469

    if-lez v0, :cond_469

    .line 7044
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_b

    .line 7046
    :cond_469
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7049
    :cond_474
    if-lez v1, :cond_483

    if-lez v0, :cond_483

    .line 7050
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_b

    .line 7052
    :cond_483
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7061
    :sswitch_48e
    const-string v0, "Compose >>"

    const-string v1, "REQUEST_INSERT_S_NOTE"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7063
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4ef

    .line 7064
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7065
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 7068
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7070
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_4c7

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_4c7

    .line 7071
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7072
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_b

    .line 7074
    :cond_4c7
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_4dd

    .line 7075
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7076
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_b

    .line 7078
    :cond_4dd
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_b

    .line 7079
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7080
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_b

    .line 7084
    :cond_4ef
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7085
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 7089
    if-eqz v0, :cond_7

    .line 7093
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_503
    :goto_503
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 7094
    check-cast v0, Landroid/net/Uri;

    .line 7095
    if-eqz v0, :cond_503

    .line 7096
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V

    goto :goto_503

    .line 7106
    :sswitch_517
    const-string v0, "return_image_file"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7107
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7109
    if-eqz v1, :cond_b

    .line 7110
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7111
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7112
    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 7114
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 7116
    const/16 v3, 0x168

    .line 7119
    if-eqz v4, :cond_a38

    .line 7120
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 7121
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 7123
    if-lez v1, :cond_53f

    .line 7124
    mul-int v2, v0, v3

    div-int/2addr v2, v1

    .line 7127
    :cond_53f
    if-le v3, v1, :cond_a38

    move v2, v0

    move v0, v1

    .line 7133
    :goto_543
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_569

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_569

    .line 7134
    if-lez v0, :cond_55e

    if-lez v2, :cond_55e

    .line 7135
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_b

    .line 7137
    :cond_55e
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7140
    :cond_569
    if-lez v0, :cond_578

    if-lez v2, :cond_578

    .line 7141
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)V

    goto/16 :goto_b

    .line 7143
    :cond_578
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7151
    :sswitch_583
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 7154
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_599

    .line 7155
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7156
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v2, ""

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 7160
    :cond_599
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V

    goto/16 :goto_b

    .line 7165
    :sswitch_59e
    const-string v0, "namecard_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7166
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 7168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 7171
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7176
    const-string v0, "<br>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7177
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7179
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_5d9

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_5d9

    .line 7180
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7181
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_b

    .line 7183
    :cond_5d9
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_5f8

    .line 7184
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7185
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 7187
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7189
    :cond_5f8
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_b

    .line 7190
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7191
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_b

    .line 7197
    :sswitch_60a
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7198
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 7200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 7203
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7207
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7208
    const-string v0, "<br>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7209
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7211
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_645

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_645

    .line 7212
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7213
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_b

    .line 7215
    :cond_645
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_664

    .line 7216
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7217
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 7219
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7221
    :cond_664
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_b

    .line 7222
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7223
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_b

    .line 7229
    :sswitch_676
    const-string v0, "memotext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7230
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 7232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 7235
    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7239
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7240
    const-string v0, "<br>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7241
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7243
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_6b1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_6b1

    .line 7244
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7245
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_b

    .line 7247
    :cond_6b1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_6d0

    .line 7248
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7249
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 7251
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7253
    :cond_6d0
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_b

    .line 7254
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7255
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_b

    .line 7261
    :sswitch_6e2
    const-string v0, "Compose >>"

    const-string v1, "REQUEST_INSERT_PEN_MEMO"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7264
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v0, v8, :cond_6fb

    .line 7265
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7266
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v1, ""

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 7270
    :cond_6fb
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7272
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_727

    .line 7273
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 7276
    if-eqz v0, :cond_7

    .line 7280
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_713
    :goto_713
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 7281
    check-cast v0, Landroid/net/Uri;

    .line 7282
    if-eqz v0, :cond_713

    .line 7283
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V

    goto :goto_713

    .line 7288
    :cond_727
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 7290
    if-eqz v0, :cond_7

    .line 7291
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->insertImage(Landroid/net/Uri;)V

    goto/16 :goto_b

    .line 7300
    :sswitch_73a
    const-string v0, "location-char"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7302
    const-string v2, "location-string"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7304
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_75a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75a

    .line 7305
    const v0, 0x7f080307

    invoke-direct {p0, v0, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto/16 :goto_b

    .line 7309
    :cond_75a
    const-string v0, "location-fileUri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7311
    const-string v2, "Email"

    const-string v4, "REQUEST_ATTACHMENT_LOCATION = "

    invoke-static {v2, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7316
    if-eqz v0, :cond_a35

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a35

    .line 7317
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 7320
    :goto_773
    if-eqz v0, :cond_77e

    .line 7321
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    or-int/2addr v1, v0

    .line 7324
    :cond_77e
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showResultToast(I)V

    goto/16 :goto_b

    .line 7329
    :sswitch_783
    const-string v0, "location-char"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7331
    const-string v1, "location-string"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7332
    const-string v2, "location-fileUri"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7334
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_7b1

    .line 7335
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQUEST_INSERT_LOCATION = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7338
    :cond_7b1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c5

    .line 7339
    const v0, 0x7f080307

    invoke-direct {p0, v0, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto/16 :goto_b

    .line 7343
    :cond_7c5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_82b

    .line 7344
    invoke-static {v1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7345
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_805

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_805

    .line 7346
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7347
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 7379
    :cond_7e7
    :goto_7e7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 7380
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_879

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v0

    if-ne v8, v0, :cond_879

    .line 7381
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7382
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7349
    :cond_805
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_81a

    .line 7350
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7351
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_7e7

    .line 7354
    :cond_81a
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_7e7

    .line 7355
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7356
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_7e7

    .line 7360
    :cond_82b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7e7

    .line 7361
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7362
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_852

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_852

    .line 7363
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7364
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_7e7

    .line 7366
    :cond_852
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v1

    if-ne v8, v1, :cond_867

    .line 7367
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7368
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_7e7

    .line 7371
    :cond_867
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v1, v8, :cond_7e7

    .line 7372
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7373
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto/16 :goto_7e7

    .line 7383
    :cond_879
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->isFocused()Z

    move-result v0

    if-ne v8, v0, :cond_88d

    .line 7384
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7385
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7387
    :cond_88d
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    if-eq v0, v8, :cond_b

    .line 7388
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7389
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v1, ""

    sget-object v3, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v0, v1, v3}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 7390
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 7399
    :sswitch_8a6
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 7400
    if-eqz v0, :cond_b

    .line 7403
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7405
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7407
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7408
    :cond_8be
    :goto_8be
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92c

    .line 7413
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v8

    .line 7414
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8fc

    .line 7416
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7417
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_8be

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    const v5, 0x7f0800c2

    invoke-virtual {p0, v5}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v8, v0, :cond_8be

    .line 7422
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_8be

    .line 7426
    :cond_8fc
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v5}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_910

    .line 7427
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v5, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 7433
    :cond_909
    :goto_909
    const v0, 0x7f0801c2

    invoke-direct {p0, v0, v8}, Lcom/android/email/activity/MessageCompose;->showToast(II)V

    goto :goto_8be

    .line 7428
    :cond_910
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v5}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_91e

    .line 7429
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v5, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    goto :goto_909

    .line 7430
    :cond_91e
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v5}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_909

    .line 7431
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-direct {p0, v5, v0}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    goto :goto_909

    .line 7441
    :cond_92c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_9ac

    .line 7442
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_942

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_980

    .line 7443
    :cond_942
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    .line 7451
    :cond_947
    :goto_947
    new-instance v0, Lcom/android/email/activity/MessageCompose$AddAddessTask;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageCompose$AddAddessTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v2, v8, [Ljava/util/ArrayList;

    aput-object v4, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressContactButtonTask:Landroid/os/AsyncTask;

    .line 7464
    :cond_956
    :goto_956
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-ne v0, v8, :cond_b

    .line 7465
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0800c2

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v8, v0, :cond_b

    .line 7468
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 7444
    :cond_980
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_990

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_996

    .line 7446
    :cond_990
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    goto :goto_947

    .line 7447
    :cond_996
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_9a6

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_947

    .line 7449
    :cond_9a6
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->selectBubbleLayout(Lcom/android/email/activity/bubblelayout/BubbleLayout;)V

    goto :goto_947

    .line 7452
    :cond_9ac
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_956

    .line 7453
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_9c2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9ce

    .line 7454
    :cond_9c2
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto :goto_956

    .line 7455
    :cond_9ce
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_9de

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9eb

    .line 7457
    :cond_9de
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto/16 :goto_956

    .line 7458
    :cond_9eb
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_9fb

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_956

    .line 7460
    :cond_9fb
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v8}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButtonAfterDuplicateCheck(Ljava/lang/String;Z)Z

    goto/16 :goto_956

    .line 7534
    :sswitch_a08
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a17

    .line 7535
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->updateBubbleAfterSavingContact()Z

    goto/16 :goto_b

    .line 7536
    :cond_a17
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a26

    .line 7537
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->updateBubbleAfterSavingContact()Z

    goto/16 :goto_b

    .line 7538
    :cond_a26
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7539
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->updateBubbleAfterSavingContact()Z

    goto/16 :goto_b

    :cond_a35
    move-object v0, v3

    goto/16 :goto_773

    :cond_a38
    move v0, v3

    goto/16 :goto_543

    :cond_a3b
    move v0, v1

    move v1, v4

    goto/16 :goto_43c

    :cond_a3f
    move v1, v2

    goto/16 :goto_439

    :cond_a42
    move v0, v2

    move v1, v4

    goto/16 :goto_43c

    :cond_a46
    move v0, v4

    goto/16 :goto_39a

    :cond_a49
    move v0, v1

    goto/16 :goto_2ac

    .line 6281
    :sswitch_data_a4c
    .sparse-switch
        0x3e9 -> :sswitch_f
        0x3ea -> :sswitch_21e
        0x3eb -> :sswitch_288
        0x3ec -> :sswitch_288
        0x3ed -> :sswitch_38
        0x3ee -> :sswitch_dd
        0x3ef -> :sswitch_1ea
        0x3f0 -> :sswitch_1ea
        0x3f1 -> :sswitch_73a
        0x3f2 -> :sswitch_163
        0x3f3 -> :sswitch_18f
        0x3f4 -> :sswitch_2b6
        0x3f5 -> :sswitch_36e
        0x3f6 -> :sswitch_288
        0x3f7 -> :sswitch_3ad
        0x3f8 -> :sswitch_30b
        0x7d1 -> :sswitch_583
        0x7d2 -> :sswitch_59e
        0x7d3 -> :sswitch_60a
        0x7d4 -> :sswitch_676
        0x7d5 -> :sswitch_783
        0x7d6 -> :sswitch_6e2
        0x7d7 -> :sswitch_411
        0x7d8 -> :sswitch_48e
        0xbb9 -> :sswitch_517
        0xfa1 -> :sswitch_8a6
        0x1389 -> :sswitch_b
        0x7011214 -> :sswitch_a08
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 8940
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onCancel()V

    .line 8941
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7627
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7628
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    .line 7777
    :goto_f
    return-void

    .line 7631
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_da

    goto :goto_f

    .line 7749
    :sswitch_18
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onViewAttachment(Landroid/view/View;)V

    .line 7752
    :sswitch_1b
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout()V

    goto :goto_f

    .line 7634
    :sswitch_1f
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onComposerSmemo()V

    goto :goto_f

    .line 7638
    :sswitch_23
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->onComposerAttach()V

    goto :goto_f

    .line 7642
    :sswitch_27
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    goto :goto_f

    .line 7646
    :sswitch_2b
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onCancel()V

    goto :goto_f

    .line 7653
    :sswitch_2f
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->hasPremiumExpiredAccounts(JJ)Z

    move-result v0

    if-nez v0, :cond_41

    .line 7654
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_f

    .line 7656
    :cond_41
    invoke-static {p0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogPremiumExpired(Landroid/app/Activity;)V

    goto :goto_f

    .line 7673
    :sswitch_45
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onDeleteAttachment(Landroid/view/View;)V

    goto :goto_f

    .line 7688
    :sswitch_49
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowAccountDialog()V

    .line 7689
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_f

    .line 7700
    :sswitch_50
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 7701
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 7703
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 7704
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 7705
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_f

    .line 7709
    :sswitch_60
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 7710
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 7712
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    .line 7713
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 7714
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_f

    .line 7718
    :sswitch_70
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 7719
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 7721
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    .line 7722
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 7723
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    goto :goto_f

    .line 7726
    :sswitch_80
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 7727
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 7728
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 7729
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 7730
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 7731
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_f

    .line 7744
    :sswitch_96
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onPhonebook()V

    goto/16 :goto_f

    .line 7755
    :sswitch_9b
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 7756
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c8

    .line 7757
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7759
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->append(Ljava/lang/CharSequence;)V

    .line 7761
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 7771
    :goto_b7
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 7772
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 7773
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 7774
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 7775
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_f

    .line 7764
    :cond_c8
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 7765
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->append(Ljava/lang/CharSequence;)V

    .line 7767
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_b7

    .line 7631
    :sswitch_data_da
    .sparse-switch
        0x7f1000e2 -> :sswitch_18
        0x7f10017e -> :sswitch_1b
        0x7f100186 -> :sswitch_9b
        0x7f10018d -> :sswitch_2f
        0x7f10018e -> :sswitch_2b
        0x7f10018f -> :sswitch_27
        0x7f100190 -> :sswitch_23
        0x7f100191 -> :sswitch_1f
        0x7f100192 -> :sswitch_18
        0x7f100193 -> :sswitch_45
        0x7f100196 -> :sswitch_1b
        0x7f100199 -> :sswitch_70
        0x7f10019b -> :sswitch_70
        0x7f10019e -> :sswitch_96
        0x7f1001a1 -> :sswitch_60
        0x7f1001a3 -> :sswitch_60
        0x7f1001a5 -> :sswitch_96
        0x7f1001a9 -> :sswitch_49
        0x7f1001aa -> :sswitch_80
        0x7f1001b4 -> :sswitch_50
        0x7f1001b6 -> :sswitch_50
        0x7f1001b8 -> :sswitch_96
    .end sparse-switch
.end method

.method public onComposerAttach()V
    .registers 1

    .prologue
    .line 13832
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowAddAttachmentDialog()V

    .line 13834
    return-void
.end method

.method public onComposerInsert()V
    .registers 1

    .prologue
    .line 13837
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onShowInsertTextOrImageDialog()V

    .line 13838
    return-void
.end method

.method public onComposerSmemo()V
    .registers 4

    .prologue
    .line 13818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 13821
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13822
    const-string v1, "app_name"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13823
    const/16 v1, 0x3f8

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_17} :catch_18

    .line 13828
    :goto_17
    return-void

    .line 13824
    :catch_18
    move-exception v0

    .line 13825
    const-string v1, "Compose >>"

    const-string v2, "ActivityNotFoundException!"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 13826
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_17
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter

    .prologue
    .line 8002
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8004
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    .line 8006
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_68

    .line 8007
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsBlackThemeUse:Z

    if-eqz v0, :cond_52

    .line 8008
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 8017
    :goto_20
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    .line 8018
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8019
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLayout_ToolBarView_noscroll:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8068
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8070
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 8080
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8081
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolbarLayoutNoscroll:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8084
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->updateActionBarBackground()Z

    .line 8085
    return-void

    .line 8011
    :cond_52
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 8014
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setActionBarButtonLayout(I)V

    goto :goto_20

    .line 8023
    :cond_68
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsBlackThemeUse:Z

    if-eqz v0, :cond_7d

    .line 8024
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_34

    .line 8027
    :cond_7d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar_Title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 8030
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCurrentOrientation:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setActionBarButtonLayout(I)V

    goto :goto_34
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 18
    .parameter

    .prologue
    .line 1140
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1142
    const-string v2, "Compose >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate START "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_c3

    const-string v1, "null"

    :goto_14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const/4 v1, 0x0

    sput-object v1, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    .line 1146
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    .line 1149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1153
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 1154
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1155
    const/4 v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1156
    const/high16 v2, 0x3f00

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1161
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsBlackTheme()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mIsBlackThemeUse:Z

    .line 1162
    invoke-static {}, Lcom/android/email/util/EmailFeature;->isQ1BasedModel()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mIsQ1BasedModel:Z

    .line 1164
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mIsBlackThemeUse:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->setContentViewByGUIThemeOfPreference(Z)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ResponseAxT9Info"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1174
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    .line 1175
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    .line 1176
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    .line 1180
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->initViews()V

    .line 1181
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1185
    const/4 v7, 0x0

    .line 1187
    :try_start_99
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "displayName is not \'##snc##\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a8
    .catchall {:try_start_99 .. :try_end_a8} :catchall_c7

    move-result-object v2

    .line 1190
    if-eqz v2, :cond_cf

    :try_start_ab
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_cf

    .line 1191
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->onShowAccountCheckDialog()V

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1194
    sput-object v1, Lcom/android/email/activity/MessageCompose;->mStartWithIntent:Landroid/content/Intent;

    .line 1199
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_bd
    .catchall {:try_start_ab .. :try_end_bd} :catchall_5c6

    .line 1203
    if-eqz v2, :cond_c2

    .line 1204
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1491
    :cond_c2
    :goto_c2
    return-void

    .line 1142
    :cond_c3
    const-string v1, "not null"

    goto/16 :goto_14

    .line 1203
    :catchall_c7
    move-exception v1

    move-object v2, v7

    :goto_c9
    if-eqz v2, :cond_ce

    .line 1204
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1203
    :cond_ce
    throw v1

    :cond_cf
    if-eqz v2, :cond_d4

    .line 1204
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1209
    :cond_d4
    const-wide/16 v1, -0x1

    .line 1210
    if-eqz p1, :cond_ef

    .line 1213
    const-string v1, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 1215
    const-string v1, "com.android.email.activity.MessageCompose.draftId"

    const-wide/16 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1218
    :cond_ef
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 1219
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 1221
    const-string v3, "com.android.email.intent.action.EMAIL_DOC"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 1222
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 1228
    :cond_10d
    new-instance v3, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    .line 1229
    new-instance v3, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/MessageCompose;->mProgressDialog1:Landroid/app/ProgressDialog;

    .line 1232
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_136

    .line 1236
    const-string v3, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 1237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide v1, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1241
    :cond_136
    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_172

    const-string v3, "android.intent.action.SENDTO"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_172

    const-string v3, "android.intent.action.SEND"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_172

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_172

    const-string v3, "com.android.xingaround.CUSTOM_ACTION"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2db

    .line 1247
    :cond_172
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 1250
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V

    .line 1252
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 1253
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 1254
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 1256
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_2d8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_196
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1258
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1404
    :goto_1a1
    const-string v1, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e9

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e9

    const-string v1, "com.android.email.intent.action.FORWARD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e9

    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e9

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e9

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22b

    .line 1416
    :cond_1e9
    const-string v1, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_219

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_219

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_219

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22b

    .line 1421
    :cond_219
    const-string v1, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1432
    :cond_22b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_250

    .line 1437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v3

    .line 1438
    and-int/lit16 v1, v3, 0x200

    if-eqz v1, :cond_591

    const/4 v1, 0x1

    move v2, v1

    .line 1442
    :goto_23f
    and-int/lit16 v1, v3, 0x400

    if-eqz v1, :cond_595

    const/4 v1, 0x1

    .line 1447
    :goto_244
    const-string v3, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_598

    .line 1461
    :cond_250
    :goto_250
    new-instance v1, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/email/activity/MessageCompose$MessageComposeListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/email/activity/MessageCompose$MessageComposeListener;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    invoke-direct {v1, v2, v3}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 1466
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->checkITPolicy_AllowPOPIMAP()Z

    move-result v1

    if-nez v1, :cond_27c

    .line 1467
    const v1, 0x7f0803ec

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1468
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1472
    :cond_27c
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    if-nez v1, :cond_2a0

    .line 1473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v1}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/activity/ToolBarScrollView;->SetEASIconDisplay(Z)V

    .line 1476
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 1480
    :cond_2a0
    const-string v1, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b8

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c4

    .line 1481
    :cond_2b8
    const-string v1, "message_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v10, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageId:J

    .line 1485
    :cond_2c4
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/MessageCompose;->mApp:Lcom/android/email/Email;

    .line 1488
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->invalidateOptionsMenu()V

    .line 1490
    const-string v1, "Compose >>"

    const-string v2, "onCreate END"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    .line 1256
    :cond_2d8
    const/4 v1, 0x0

    goto/16 :goto_196

    .line 1262
    :cond_2db
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_538

    move-wide v7, v1

    .line 1263
    :goto_2e2
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->isOpenedFromWithinApp()Z

    move-result v1

    if-nez v1, :cond_417

    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-nez v1, :cond_417

    .line 1265
    const-string v1, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_306

    const-string v1, "com.android.email.intent.action.CALENDAR_PROPOSE_NEW_TIME"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_417

    .line 1267
    :cond_306
    const-string v1, "event_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v10, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 1268
    const-string v1, "account_email"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1269
    if-eqz v2, :cond_31c

    const-wide/16 v3, -0x1

    cmp-long v1, v11, v3

    if-nez v1, :cond_31f

    .line 1270
    :cond_31c
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1272
    :cond_31f
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget-wide v13, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "account_id"

    invoke-virtual {v1, v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1274
    const-wide/16 v3, -0x1

    cmp-long v1, v11, v3

    if-eqz v1, :cond_55e

    .line 1275
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "com.android.exchange"

    invoke-static {v3, v2, v4}, Lcom/android/email/activity/MessageCompose;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v11

    .line 1282
    const/4 v9, 0x0

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "sync_data2"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v15

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1284
    if-eqz v2, :cond_39b

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_39b

    .line 1285
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1286
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1288
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v9, v1

    .line 1294
    :cond_39b
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "meetingInfo LIKE \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mailboxType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1296
    if-eqz v1, :cond_3ec

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3ec

    .line 1297
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1298
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1299
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1302
    :cond_3ec
    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-nez v1, :cond_417

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "meeting_response"

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1306
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_543

    .line 1307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1328
    :cond_417
    :goto_417
    const-wide/16 v1, -0x1

    cmp-long v1, v7, v1

    if-eqz v1, :cond_576

    .line 1333
    const-string v1, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_489

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_489

    const-string v1, "com.android.email.intent.action.FORWARD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_489

    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_489

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_489

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_489

    const-string v1, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_489

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_489

    const-string v1, "com.android.email.intent.action.CALENDAR_PROPOSE_NEW_TIME"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4fe

    .line 1344
    :cond_489
    const-string v1, "account_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v10, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1345
    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_570

    .line 1346
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 1348
    if-eqz v3, :cond_4fb

    .line 1349
    iget-wide v1, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 1351
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1354
    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4fb

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    if-eqz v1, :cond_4fb

    .line 1357
    :try_start_4be
    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4c3
    .catch Ljava/lang/Exception; {:try_start_4be .. :try_end_4c3} :catch_563

    move-result v1

    .line 1362
    :goto_4c4
    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_56d

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_56d

    if-lez v1, :cond_56d

    const/4 v1, 0x1

    :goto_4d3
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->setIsSyncedDraftMessage(Z)Z

    move-result v1

    if-eqz v1, :cond_4fb

    .line 1366
    new-instance v1, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/email/activity/MessageCompose$ControllerResults;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/email/activity/MessageCompose$ControllerResults;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-direct {v1, v2, v3}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/MessageCompose;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 1368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1377
    :cond_4fb
    :goto_4fb
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 1380
    :cond_4fe
    new-instance v1, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v7, v8}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 1383
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/android/email/activity/MessageCompose;->mMessageId:J

    .line 1398
    :goto_514
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v1, :cond_524

    .line 1399
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/email/activity/MessageCompose;->getAccount(Landroid/content/Intent;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1401
    :cond_524
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v1, :cond_58f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_531
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_1a1

    .line 1262
    :cond_538
    const-string v1, "message_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v10, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    move-wide v7, v1

    goto/16 :goto_2e2

    .line 1311
    :cond_543
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_54c

    .line 1312
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto/16 :goto_417

    .line 1314
    :cond_54c
    :goto_54c
    invoke-interface {v11}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_417

    .line 1315
    invoke-interface {v11}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 1317
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v1, v9}, Lcom/android/email/activity/MessageCompose;->processFromEntityValues(JLandroid/content/Entity;Ljava/lang/String;)V

    goto :goto_54c

    .line 1323
    :cond_55e
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto/16 :goto_417

    .line 1358
    :catch_563
    move-exception v1

    move-object v2, v1

    .line 1359
    const v1, 0x7fffffff

    .line 1360
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4c4

    .line 1362
    :cond_56d
    const/4 v1, 0x0

    goto/16 :goto_4d3

    .line 1374
    :cond_570
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    goto :goto_4fb

    .line 1386
    :cond_576
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 1391
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 1392
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 1393
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->setFromAccount()V

    .line 1395
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_514

    .line 1401
    :cond_58f
    const/4 v1, 0x0

    goto :goto_531

    .line 1438
    :cond_591
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_23f

    .line 1442
    :cond_595
    const/4 v1, 0x0

    goto/16 :goto_244

    .line 1451
    :cond_598
    if-eqz v2, :cond_5af

    .line 1452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 1453
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto/16 :goto_250

    .line 1454
    :cond_5af
    if-eqz v1, :cond_250

    .line 1455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->addButton(Ljava/lang/String;Z)Z

    .line 1456
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    goto/16 :goto_250

    .line 1203
    :catchall_5c6
    move-exception v1

    goto/16 :goto_c9
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 9095
    packed-switch p1, :pswitch_data_74

    .line 9234
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 9101
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9103
    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 9105
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0802fd

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0802fe

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 9111
    new-instance v2, Lcom/android/email/activity/MessageCompose$31;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$31;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9157
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 9165
    :pswitch_37
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9167
    const v1, 0x7f0802ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 9169
    const v1, 0x7f080300

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 9171
    const v1, 0x7f080301

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageCompose$32;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$32;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9192
    const v1, 0x7f080302

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageCompose$33;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$33;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9208
    new-instance v1, Lcom/android/email/activity/MessageCompose$34;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$34;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 9226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 9095
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_8
        :pswitch_37
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 9248
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 9249
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f001c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 9250
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    .line 9251
    return v2
.end method

.method public onDeleteMessageConfirmationDialogOkPressed()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6187
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2d

    .line 6199
    new-array v0, v5, [J

    .line 6200
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v1, v0, v4

    .line 6203
    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 6204
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    .line 6205
    const v0, 0x7f0800c4

    invoke-static {p0, v0, v5}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 6209
    :cond_2d
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 6210
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    .line 6212
    iput-boolean v5, p0, Lcom/android/email/activity/MessageCompose;->mDoNotSaveDraft:Z

    .line 6214
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 6215
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1837
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1839
    const-string v0, "Compose >>"

    const-string v1, "onDestroy START"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1844
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1845
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_22

    .line 1846
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1847
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;

    .line 1849
    :cond_22
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    invoke-virtual {v0}, Lcom/android/email/Controller;->loadMoreCancel()V

    .line 1850
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z

    .line 1851
    iput v3, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I

    .line 1852
    iput v3, p0, Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I

    .line 1853
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->setIsSyncedDraftMessage(Z)Z

    .line 1858
    :cond_30
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->DPMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1861
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForHtmlComposer:Lcom/android/email/TextSelectorForHtmlComposer;

    if-eqz v0, :cond_40

    .line 1862
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForHtmlComposer:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->clearSelection()V

    .line 1863
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForHtmlComposer:Lcom/android/email/TextSelectorForHtmlComposer;

    .line 1865
    :cond_40
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForQuotedText:Lcom/android/email/TextSelectorForHtmlComposer;

    if-eqz v0, :cond_4b

    .line 1866
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForQuotedText:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->clearSelection()V

    .line 1867
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mTextSelectorForQuotedText:Lcom/android/email/TextSelectorForHtmlComposer;

    .line 1879
    :cond_4b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_5b

    .line 1880
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->stopLoading()V

    .line 1881
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->destroy()V

    .line 1882
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    .line 1885
    :cond_5b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_6b

    .line 1886
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->stopLoading()V

    .line 1887
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->destroy()V

    .line 1888
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    .line 1891
    :cond_6b
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressFromIntentTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1892
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressFromIntentTask:Landroid/os/AsyncTask;

    .line 1894
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressContactButtonTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1895
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddAddressContactButtonTask:Landroid/os/AsyncTask;

    .line 1898
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1899
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;

    .line 1900
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1901
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadMessageTask:Landroid/os/AsyncTask;

    .line 1903
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    if-eqz v0, :cond_92

    .line 1904
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1905
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromIntent:Landroid/os/AsyncTask;

    .line 1908
    :cond_92
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    if-eqz v0, :cond_9d

    .line 1909
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1910
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTaskFromUri:Landroid/os/AsyncTask;

    .line 1913
    :cond_9d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_a8

    .line 1914
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 1915
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentTask:Landroid/os/AsyncTask;

    .line 1918
    :cond_a8
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_b1

    .line 1919
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 1921
    :cond_b1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_ba

    .line 1922
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 1924
    :cond_ba
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_c3

    .line 1925
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 1928
    :cond_c3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    if-eqz v0, :cond_ce

    .line 1930
    :try_start_c7
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->dismiss()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cc} :catch_e1

    .line 1934
    :goto_cc
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    .line 1937
    :cond_ce
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    if-eqz v0, :cond_d9

    .line 1939
    :try_start_d2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->dismiss()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d7} :catch_e6

    .line 1943
    :goto_d7
    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    .line 1947
    :cond_d9
    const-string v0, "Compose >>"

    const-string v1, "onDestroy END"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    return-void

    .line 1931
    :catch_e1
    move-exception v0

    .line 1932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_cc

    .line 1940
    :catch_e6
    move-exception v0

    .line 1941
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d7
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "view"
    .parameter "focused"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4378
    if-nez p2, :cond_12

    .line 4379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_96

    .line 4469
    :goto_b
    :pswitch_b
    return-void

    .line 4382
    :pswitch_c
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    goto :goto_b

    .line 4392
    :pswitch_f
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    goto :goto_b

    .line 4406
    :cond_12
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    .line 4407
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_a0

    goto :goto_b

    .line 4409
    :sswitch_1d
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    .line 4410
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    .line 4411
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    goto :goto_b

    .line 4423
    :sswitch_36
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bIsHtmlComposerFocused:Z

    .line 4424
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    .line 4425
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;

    invoke-virtual {v0}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->setHtmlComposerView(Landroid/webkit/HtmlComposerView;)V

    .line 4434
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    goto :goto_b

    .line 4437
    :sswitch_52
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 4438
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 4440
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    goto :goto_b

    .line 4443
    :sswitch_5c
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 4444
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 4446
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusCcLayout(Z)V

    goto :goto_b

    .line 4449
    :sswitch_66
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 4450
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 4452
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusBccLayout(Z)V

    goto :goto_b

    .line 4455
    :sswitch_70
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_91

    .line 4458
    :cond_88
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 4459
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 4460
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 4463
    :cond_91
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_b

    .line 4379
    :pswitch_data_96
    .packed-switch 0x7f100183
        :pswitch_c
        :pswitch_b
        :pswitch_f
    .end packed-switch

    .line 4407
    :sswitch_data_a0
    .sparse-switch
        0x7f100183 -> :sswitch_1d
        0x7f100185 -> :sswitch_36
        0x7f10019b -> :sswitch_66
        0x7f1001a3 -> :sswitch_5c
        0x7f1001ae -> :sswitch_70
        0x7f1001b6 -> :sswitch_52
    .end sparse-switch
.end method

.method public onIRMOperation()Z
    .registers 9

    .prologue
    const v7, 0x7f0805be

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 11428
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsEncryptChecked:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bIsSignChecked:Z

    if-eqz v0, :cond_1c

    .line 11429
    :cond_d
    const v0, 0x7f0805b9

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11463
    :cond_1b
    :goto_1b
    return v1

    .line 11432
    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v0, :cond_8f

    const-string v0, "eas"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    move v0, v1

    .line 11434
    :goto_31
    if-ne v0, v1, :cond_8b

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x402c333333333333L

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_8b

    .line 11436
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 11437
    if-eqz v0, :cond_1b

    .line 11440
    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_85

    move v0, v1

    .line 11441
    :goto_55
    if-eqz v0, :cond_87

    .line 11442
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 11443
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/email/Controller;->refreshIRMTemplates(J)V

    .line 11444
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    .line 11445
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    const v2, 0x7f0805c3

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 11446
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 11447
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1b

    :cond_85
    move v0, v2

    .line 11440
    goto :goto_55

    .line 11452
    :cond_87
    invoke-direct {p0, v7, v2}, Lcom/android/email/activity/MessageCompose;->showToasts(II)V

    goto :goto_1b

    .line 11458
    :cond_8b
    invoke-direct {p0, v7, v2}, Lcom/android/email/activity/MessageCompose;->showToasts(II)V

    goto :goto_1b

    :cond_8f
    move v0, v2

    goto :goto_31
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "arg1"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7817
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 7818
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_24

    .line 7819
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_da

    .line 7892
    .end local p1
    :cond_17
    :goto_17
    return v3

    .line 7822
    .restart local p1
    :sswitch_18
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addToAddressFromEditText(Z)Z

    goto :goto_17

    .line 7827
    :sswitch_1c
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addCcAddressFromEditText(Z)Z

    goto :goto_17

    .line 7832
    :sswitch_20
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addBccAddressFromEditText(Z)Z

    goto :goto_17

    .line 7836
    :cond_24
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_17

    .line 7838
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_e8

    goto :goto_17

    :sswitch_34
    move-object v0, p1

    .line 7872
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 7878
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 7879
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deleteSelectedLastButton()V

    .line 7880
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_17

    .restart local p1
    :sswitch_5c
    move-object v0, p1

    .line 7840
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 7846
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 7847
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deleteSelectedLastButton()V

    .line 7848
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_17

    .line 7849
    .restart local p1
    :cond_84
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->selectLastButton()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7850
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_17

    .restart local p1
    :sswitch_92
    move-object v0, p1

    .line 7856
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 7862
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 7863
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deleteSelectedLastButton()V

    .line 7864
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_17

    .line 7865
    .restart local p1
    :cond_bb
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->selectLastButton()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7866
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_17

    .line 7881
    .restart local p1
    :cond_ca
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->selectLastButton()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7882
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_17

    .line 7819
    nop

    :sswitch_data_da
    .sparse-switch
        0x7f10019f -> :sswitch_20
        0x7f1001a6 -> :sswitch_1c
        0x7f1001b9 -> :sswitch_18
    .end sparse-switch

    .line 7838
    :sswitch_data_e8
    .sparse-switch
        0x7f10019f -> :sswitch_34
        0x7f1001a6 -> :sswitch_92
        0x7f1001b9 -> :sswitch_5c
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 7800
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 7811
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 7802
    :pswitch_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 7803
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    goto :goto_7

    .line 7805
    :cond_17
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    goto :goto_7

    .line 7800
    nop

    :pswitch_data_1e
    .packed-switch 0x7f100186
        :pswitch_9
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 8931
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8932
    const/4 v0, 0x1

    .line 8934
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_b
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1815
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1817
    const-string v0, "Compose >>"

    const-string v1, "onPause START"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isPausedBefore:Z

    .line 1828
    const-string v0, "Compose >>"

    const-string v1, "onPause END"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 11
    .parameter

    .prologue
    const v3, 0x7f1002fc

    const v8, 0x7f100303

    const v7, 0x7f100304

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9256
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    if-ne v0, v1, :cond_12

    .line 9257
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->isFirstCall:Z

    .line 9366
    :goto_11
    return v2

    .line 9261
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToEditView:Lcom/android/email/activity/AddressTextView;

    invoke-virtual {v0}, Lcom/android/email/activity/AddressTextView;->hasFocus()Z

    move-result v0

    if-ne v0, v1, :cond_12d

    .line 9262
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9263
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9269
    :goto_28
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_13d

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_13d

    .line 9270
    const v0, 0x7f1002fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9271
    const v0, 0x7f1002fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9272
    const v0, 0x7f1002fe

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9273
    const v0, 0x7f1002fe

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9284
    :goto_64
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isNotFieldsAllEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_167

    .line 9285
    const v0, 0x7f1002ff

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9290
    :goto_74
    const v0, 0x7f100300

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9294
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_173

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 9295
    const v0, 0x7f100301

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9296
    const v0, 0x7f100302

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9298
    const v0, 0x7f100301

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9299
    const v0, 0x7f100302

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9307
    :goto_b4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 9308
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9309
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9310
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9311
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9315
    :try_start_d6
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x402c333333333333L

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_1a4

    .line 9316
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 9318
    if-eqz v0, :cond_19d

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_f3} :catch_1a0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19d

    move v0, v1

    .line 9319
    :goto_f8
    if-eqz v0, :cond_1a4

    move v0, v1

    .line 9327
    :goto_fb
    if-eqz v0, :cond_105

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    if-nez v0, :cond_105

    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    if-eqz v0, :cond_1a7

    .line 9328
    :cond_105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    .line 9357
    :goto_108
    const-string v0, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    const-string v0, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 9359
    :cond_11c
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9360
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 9361
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    .line 9364
    :cond_127
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move v2, v1

    .line 9366
    goto/16 :goto_11

    .line 9265
    :cond_12d
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9266
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_28

    .line 9275
    :cond_13d
    const v0, 0x7f1002fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9276
    const v0, 0x7f1002fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9277
    const v0, 0x7f1002fe

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9278
    const v0, 0x7f1002fe

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_64

    .line 9287
    :cond_167
    const v0, 0x7f1002ff

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_74

    .line 9301
    :cond_173
    const v0, 0x7f100301

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9302
    const v0, 0x7f100302

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9303
    const v0, 0x7f100301

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9304
    const v0, 0x7f100302

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b4

    :cond_19d
    move v0, v2

    .line 9318
    goto/16 :goto_f8

    .line 9323
    :catch_1a0
    move-exception v0

    .line 9324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a4
    move v0, v2

    goto/16 :goto_fb

    .line 9330
    :cond_1a7
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9331
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9333
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    if-eqz v0, :cond_1c7

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c7

    .line 9334
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 9335
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    goto/16 :goto_108

    .line 9337
    :cond_1c7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    .line 9338
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 9339
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    goto/16 :goto_108

    .line 9345
    :cond_1d0
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9346
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9348
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 9349
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    .line 9353
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsEncryptChecked:Z

    .line 9354
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsSignChecked:Z

    goto/16 :goto_108
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1976
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1978
    const-string v0, "Compose >>"

    const-string v3, "onRestoreInstanceState START"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const-string v0, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    :goto_18
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1987
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    const-string v3, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    move v2, v1

    :cond_26
    invoke-virtual {v0, v2}, Landroid/webkit/HtmlComposerView;->setVisibility(I)V

    .line 1990
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    .line 1992
    const-string v0, "Compose >>"

    const-string v1, "onRestoreInstanceState END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    return-void

    :cond_34
    move v0, v2

    .line 1984
    goto :goto_18
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1764
    const-string v0, "Compose >>"

    const-string v1, "onResume START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->updateActionBarBackground()Z

    .line 1767
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1771
    :try_start_e
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_48

    move-result-object v1

    .line 1775
    :try_start_1e
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_34

    .line 1776
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_34

    .line 1777
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_86

    .line 1789
    if-eqz v1, :cond_33

    .line 1790
    :goto_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1811
    :cond_33
    :goto_33
    return-void

    .line 1782
    :cond_34
    if-eqz v1, :cond_50

    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_50

    .line 1783
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 1784
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1785
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_86

    .line 1789
    if-eqz v1, :cond_33

    goto :goto_30

    :catchall_48
    move-exception v0

    move-object v1, v6

    :goto_4a
    if-eqz v1, :cond_4f

    .line 1790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1789
    :cond_4f
    throw v0

    :cond_50
    if-eqz v1, :cond_55

    .line 1790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1796
    :cond_55
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->checkValidityOfAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 1797
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 1798
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_33

    .line 1801
    :cond_6a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onRefreshLayoutCcBcc()V

    .line 1803
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-eqz v0, :cond_7e

    .line 1804
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7e

    .line 1805
    iget-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->applyIRMresctrition(J)V

    .line 1810
    :cond_7e
    const-string v0, "Compose >>"

    const-string v1, "onResume END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 1789
    :catchall_86
    move-exception v0

    goto :goto_4a
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 1956
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1958
    const-string v0, "Compose >>"

    const-string v1, "onSaveInstanceState START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getOrCreateDraftId()J

    move-result-wide v0

    .line 1961
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    .line 1962
    const-string v2, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1966
    :cond_19
    const-string v1, "com.android.email.activity.MessageCompose.quotedTextShown"

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x1

    :goto_24
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1968
    const-string v0, "com.android.email.activity.MessageCompose.stateKeySourceMessageProced"

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1971
    const-string v0, "Compose >>"

    const-string v1, "onSaveInstanceState END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    return-void

    .line 1966
    :cond_36
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onSpellCheck()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 11467
    const-string v0, "Compose >>"

    const-string v1, "onSpellCheck() call setIsContinousSpellCheck() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11469
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->bUserDictionaryPushedToWebkit:Z

    if-nez v0, :cond_27

    .line 11472
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->bUserDictionaryPushedToWebkit:Z

    .line 11474
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    if-nez v0, :cond_1d

    .line 11475
    new-instance v0, Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    .line 11478
    :cond_1d
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    invoke-virtual {v0}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->checkReloadDictionary()V

    .line 11480
    sget-object v0, Lcom/android/email/activity/MessageCompose;->mUserDictionary:Lcom/android/email/activity/utils/spellcheck/UserDictionary;

    invoke-virtual {v0}, Lcom/android/email/activity/utils/spellcheck/UserDictionary;->getWordList()Ljava/util/ArrayList;

    .line 11497
    :cond_27
    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "view"
    .parameter "motion"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8089
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 8091
    .local v0, action:I
    if-ne v0, v3, :cond_f

    .line 8092
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_a8

    .line 8192
    :cond_f
    :goto_f
    return v2

    .line 8101
    :sswitch_10
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_36

    .line 8104
    :cond_28
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 8106
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 8109
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 8110
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 8121
    :cond_36
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 8127
    sget-boolean v1, Lcom/android/email/activity/MessageCompose;->mIsSpellCheckMode:Z

    if-eqz v1, :cond_f

    .line 8130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/email/activity/MessageCompose;->spellcheck_x:I

    .line 8131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/email/activity/MessageCompose;->spellcheck_y:I

    goto :goto_f

    .line 8162
    :sswitch_4c
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_72

    .line 8165
    :cond_64
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 8166
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 8167
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 8168
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 8171
    :cond_72
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    .line 8172
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getConetextmenuVisibility()Z

    move-result v1

    if-nez v1, :cond_f

    .line 8173
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->showSoftKeyboard(Z)V

    goto :goto_f

    .line 8178
    :sswitch_81
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a2

    .line 8181
    :cond_99
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAllAddressFromEditText(Z)V

    .line 8182
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->focusToLayout(Z)V

    .line 8183
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 8186
    :cond_a2
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V

    goto/16 :goto_f

    .line 8092
    nop

    :sswitch_data_a8
    .sparse-switch
        0x7f100183 -> :sswitch_10
        0x7f100185 -> :sswitch_4c
        0x7f1001ae -> :sswitch_81
    .end sparse-switch
.end method

.method processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 10305
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v1, :cond_12c

    const-string v1, ""

    move-object v7, v1

    .line 10307
    :goto_9
    const v1, 0x7f08055e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 10308
    const v1, 0x7f08055b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 10309
    const v1, 0x7f08055c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 10312
    const v1, 0x7f08055d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 10313
    const v1, 0x7f08055a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 10315
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 10319
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 10320
    const/4 v1, 0x1

    move v8, v1

    .line 10329
    :goto_40
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    if-eqz v1, :cond_14b

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14b

    .line 10330
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10331
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;

    .line 10332
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    .line 10333
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    .line 10334
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->templateDescription:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10335
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/email/activity/MessageCompose$37;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$37;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10348
    :goto_92
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    const-string v1, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    const-string v1, "com.android.email.intent.action.CALENDAR_PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2eb

    .line 10353
    :cond_ce
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/activity/MessageCompose;->setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/activity/bubblelayout/BubbleLayout;Lcom/android/email/activity/bubblelayout/BubbleLayout;Z)V

    .line 10355
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    if-nez v1, :cond_154

    .line 10356
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eq v8, v2, :cond_104

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_104
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10410
    :goto_107
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v1, :cond_113

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v1, :cond_2bf

    :cond_113
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v1, :cond_2bf

    .line 10413
    const v1, 0x7f0804f9

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 10565
    :cond_128
    :goto_128
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 10566
    return-void

    .line 10305
    :cond_12c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object v7, v1

    goto/16 :goto_9

    .line 10321
    :cond_133
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_143

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_147

    .line 10323
    :cond_143
    const/4 v1, 0x2

    move v8, v1

    goto/16 :goto_40

    .line 10325
    :cond_147
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_40

    .line 10345
    :cond_14b
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIrmIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_92

    .line 10359
    :cond_154
    const-string v1, "com.android.email.intent.action.MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_168

    const-string v1, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c1

    .line 10360
    :cond_168
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "meeting_response"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_4e4

    goto :goto_107

    .line 10363
    :pswitch_179
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080167

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 10367
    :pswitch_191
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080169

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 10371
    :pswitch_1a9
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080168

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 10377
    :cond_1c1
    const-string v1, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "com.android.email.intent.action.CALENDAR_PROPOSE_NEW_TIME"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fe

    .line 10379
    :cond_1d5
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08055f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 10383
    :cond_1fe
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_232

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_232

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_232

    .line 10387
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 10389
    :cond_232
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_273

    .line 10390
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_26c

    .line 10392
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 10394
    :cond_26c
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 10396
    :cond_273
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b8

    .line 10397
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_2b1

    .line 10399
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 10401
    :cond_2b1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 10405
    :cond_2b8
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_107

    .line 10417
    :cond_2bf
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10420
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 10421
    const/4 v2, 0x0

    if-eqz p2, :cond_2e9

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_2de
    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 10422
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_128

    .line 10421
    :cond_2e9
    const/4 v1, 0x0

    goto :goto_2de

    .line 10432
    :cond_2eb
    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ff

    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3fc

    .line 10433
    :cond_2ff
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->IsEAS()Z

    move-result v1

    if-nez v1, :cond_36b

    .line 10434
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const/4 v2, 0x2

    if-eq v8, v2, :cond_321

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_321
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10457
    :goto_324
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    iput v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    .line 10458
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    packed-switch v1, :pswitch_data_4ee

    .line 10468
    :pswitch_32f
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10469
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10474
    :goto_33d
    const-string v1, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35f

    .line 10475
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10476
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 10478
    :cond_35f
    const/4 v2, 0x0

    if-eqz p2, :cond_3f9

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    :goto_366
    invoke-virtual {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_128

    .line 10437
    :cond_36b
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39e

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39e

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39e

    .line 10441
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_324

    .line 10443
    :cond_39e
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d4

    .line 10445
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_324

    .line 10450
    :cond_3d4
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_324

    .line 10460
    :pswitch_3db
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10461
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_33d

    .line 10464
    :pswitch_3ea
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10465
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_33d

    .line 10478
    :cond_3f9
    const/4 v1, 0x0

    goto/16 :goto_366

    .line 10479
    :cond_3fc
    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_128

    .line 10480
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10482
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    .line 10483
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 10484
    array-length v2, v1

    if-lez v2, :cond_428

    .line 10485
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    .line 10489
    :cond_428
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 10490
    array-length v2, v1

    if-lez v2, :cond_438

    .line 10491
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccBubbleLayout:Lcom/android/email/activity/bubblelayout/BubbleLayout;

    invoke-direct {p0, v2, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    .line 10496
    :cond_438
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mPriority:I

    packed-switch v1, :pswitch_data_4f8

    .line 10506
    :pswitch_43d
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10507
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10513
    :goto_44b
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 10516
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 10518
    if-eqz v3, :cond_4d8

    .line 10519
    if-eqz v4, :cond_4c4

    .line 10520
    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v3

    :goto_45f
    if-ge v2, v5, :cond_4c3

    aget-object v3, v4, v2

    .line 10521
    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v6, :cond_4a4

    iget-object v6, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v6, :cond_4a4

    .line 10522
    const/4 v6, 0x1

    iget-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v6, v7, :cond_4a4

    .line 10526
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 10527
    iget-object v7, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\\E\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10529
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, " src=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 10530
    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v8, 0x22

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10532
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10520
    :cond_4a4
    add-int/lit8 v2, v2, 0x1

    goto :goto_45f

    .line 10498
    :pswitch_4a7
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10499
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_44b

    .line 10502
    :pswitch_4b5
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityHighIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10503
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mPriorityLowIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_44b

    :cond_4c3
    move-object v3, v1

    .line 10552
    :cond_4c4
    :goto_4c4
    if-eqz v3, :cond_4d2

    .line 10557
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;

    const-string v2, "email://"

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10562
    :cond_4d2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V

    goto/16 :goto_128

    .line 10541
    :cond_4d8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 10542
    if-eqz v3, :cond_4c4

    .line 10543
    invoke-static {v3}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4c4

    .line 10360
    nop

    :pswitch_data_4e4
    .packed-switch 0x1
        :pswitch_179
        :pswitch_191
        :pswitch_1a9
    .end packed-switch

    .line 10458
    :pswitch_data_4ee
    .packed-switch 0x0
        :pswitch_3db
        :pswitch_32f
        :pswitch_3ea
    .end packed-switch

    .line 10496
    :pswitch_data_4f8
    .packed-switch 0x0
        :pswitch_4a7
        :pswitch_43d
        :pswitch_4b5
    .end packed-switch
.end method

.method processSourceMessageGuarded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10207
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    if-nez v2, :cond_b

    .line 10208
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 10209
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceMessageProcessed:Z

    .line 10219
    :cond_b
    const-string v2, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 10221
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 10223
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10224
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_34

    :goto_30
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 10226
    :cond_33
    return-void

    :cond_34
    move v0, v1

    .line 10224
    goto :goto_30
.end method

.method public progressLoadMore(I)V
    .registers 4
    .parameter "progress"

    .prologue
    .line 13934
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 13935
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x96

    iput v1, v0, Landroid/os/Message;->what:I

    .line 13936
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13937
    return-void
.end method

.method setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 9375
    const/4 v0, 0x0

    .line 9377
    if-nez p2, :cond_e

    .line 9386
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 9392
    :cond_e
    if-eqz p1, :cond_19

    .line 9393
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 9394
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9396
    :cond_19
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_81

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 9399
    invoke-static {p2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9400
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eq v2, v1, :cond_81

    .line 9408
    if-eqz v0, :cond_46

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4d

    .line 9410
    :cond_46
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9413
    :cond_4d
    invoke-static {p2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9414
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_81

    .line 9416
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 9417
    const-string v2, "<div><br></div><div><br></div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9418
    const-string v2, "<div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9419
    const-string v2, "<div style=\"font-size:75%;color:#575757\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9420
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9421
    const-string v0, "</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9422
    const-string v0, "</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9423
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9424
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mInitialText:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9431
    :cond_81
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 1757
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1758
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 1759
    return-void
.end method

.method setIsSyncedDraftMessage(Z)Z
    .registers 3
    .parameter "set"

    .prologue
    .line 13863
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    .line 13865
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->isSyncedDraftMessage:Z

    return v0
.end method

.method setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/activity/bubblelayout/BubbleLayout;Lcom/android/email/activity/bubblelayout/BubbleLayout;Z)V
    .registers 14
    .parameter "message"
    .parameter "account"
    .parameter "toBubbleLayout"
    .parameter "ccBubbleLayout"
    .parameter "replyAll"

    .prologue
    .line 10181
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    .line 10182
    .local v6, replyToAddresses:[Lcom/android/emailcommon/mail/Address;
    array-length v7, v6

    if-nez v7, :cond_f

    .line 10183
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    .line 10185
    :cond_f
    invoke-direct {p0, p3, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Lcom/android/email/activity/bubblelayout/BubbleLayout;[Lcom/android/emailcommon/mail/Address;)V

    .line 10187
    if-eqz p5, :cond_38

    .line 10189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10190
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    iget-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 10191
    .local v5, ourAddress:Ljava/lang/String;
    move-object v2, v6

    .local v2, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1e
    if-ge v3, v4, :cond_28

    aget-object v0, v2, v3

    .line 10192
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10191
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 10195
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    :cond_28
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-direct {p0, v7, v5, p3, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/util/ArrayList;)Z

    .line 10196
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-direct {p0, v7, v5, p4, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/bubblelayout/BubbleLayout;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 10197
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shrinkCcBccLayout()V

    .line 10201
    .end local v1           #allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    .end local v2           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #ourAddress:Ljava/lang/String;
    :cond_38
    return-void
.end method

.method public showBgColorPickerDialog()V
    .registers 2

    .prologue
    .line 13581
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    if-eqz v0, :cond_9

    .line 13582
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorBgPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->show()V

    .line 13584
    :cond_9
    return-void
.end method

.method public showColorPickerDialog()V
    .registers 2

    .prologue
    .line 13576
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    if-eqz v0, :cond_9

    .line 13577
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mColorPickerDialog:Lcom/android/email/activity/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerDialog;->show()V

    .line 13578
    :cond_9
    return-void
.end method

.method public startLoadMore()V
    .registers 3

    .prologue
    .line 13928
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 13929
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x94

    iput v1, v0, Landroid/os/Message;->what:I

    .line 13930
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13931
    return-void
.end method

.method protected updateActionBarBackground()Z
    .registers 2

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_6

    .line 2028
    const/4 v0, 0x0

    .line 2041
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method