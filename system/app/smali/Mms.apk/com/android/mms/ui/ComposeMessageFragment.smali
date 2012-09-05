.class public Lcom/android/mms/ui/ComposeMessageFragment;
.super Landroid/app/Fragment;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;,
        Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;,
        Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;,
        Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;,
        Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static isComposerClosed:Z

.field public static isSipVisible:Z

.field private static mBundle:Landroid/os/Bundle;

.field private static mDelAnimProgressDialog:Landroid/app/ProgressDialog;

.field public static mDoNotRefreshDraftCache:Z

.field public static mEncodingType:I

.field private static mIsRestore:Z

.field private static mSendCompleteRun:Ljava/lang/Runnable;

.field private static sEmptyContactList:Lcom/android/mms/data/ContactList;


# instance fields
.field private animView:Landroid/view/View;

.field private displayDensity:F

.field private isAlreadyShown:Z

.field isEnter:Z

.field private isHideCompose:Z

.field private isResizingImage:Z

.field private lastView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

.field private mAttachButton:Landroid/widget/ImageButton;

.field private mAttachDialog:Landroid/app/AlertDialog;

.field private mAttachErrorDialog:Landroid/app/AlertDialog;

.field private mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

.field private mAttachListPanel:Landroid/widget/LinearLayout;

.field private mAttachmentProgressDialog:Landroid/app/ProgressDialog;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

.field private mBottomPanel:Landroid/view/View;

.field private mBubbleFontSize:F

.field private mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private final mClipboardHandler:Landroid/os/Handler;

.field private mComposeView:Landroid/view/View;

.field private mComposerPanel:Landroid/widget/ScrollView;

.field private mComposerPanelBg:I

.field private mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mCursorColor:I

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteLocked:Z

.field private mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mDeleteUri:Landroid/net/Uri;

.field private mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

.field private mDraftSavedOnStop:Z

.field private mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

.field private mEditorBg:I

.field private mExitOnSent:Z

.field private mFlagDeletedAll:Z

.field private mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasLockedMessage:Z

.field private final mHttpProgressFilter:Landroid/content/IntentFilter;

.field private final mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

.field private mIntent:Landroid/content/Intent;

.field private mInvalidRecipientsDialog:Landroid/app/AlertDialog;

.field private mIsAnimationEnable:Z

.field private mIsDeleteAnimation:Z

.field private mIsDeleteMode:Z

.field private mIsDeleteWithAnimation:Z

.field private mIsForwardedMessage:Z

.field private mIsKeyboardOpen:Z

.field private mIsLandscape:Z

.field private mIsNeedToAnimation:Z

.field private mIsNewThreadOpen:Z

.field private mIsOnScreen:Z

.field private mIsOpenToButtonMenu:Z

.field private mIsTranslateMenuON:Z

.field private mKeepToButtonVisible:Z

.field private mLayoutSelectorDialog:Landroid/app/AlertDialog;

.field private final mListKeyListener:Landroid/view/View$OnKeyListener;

.field private mLocale:Ljava/lang/String;

.field private mMaxCharExceedToast:Landroid/widget/Toast;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mMessageHandler:Landroid/os/Handler;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private final mMmsConainerHandler:Landroid/os/Handler;

.field private mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

.field private mMsgAttachHandler:Landroid/os/Handler;

.field private mMsgCount:I

.field public mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

.field mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

.field private mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

.field private mPosToReplace:I

.field private mPossiblePendingNotification:Z

.field private mRecipientButton:Landroid/widget/ImageButton;

.field private mRecipientId:I

.field private mRecipientList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field public final mRecipientsEditorHandler:Landroid/os/Handler;

.field private mRecipientsField:Landroid/widget/LinearLayout;

.field private final mRecipientsWatcher:Landroid/text/TextWatcher;

.field private mRemainingInCurrentMessage:I

.field private mRemoveComposer:Z

.field mResetMessageRunnable:Ljava/lang/Runnable;

.field private mSavedToButtonRecipients:Ljava/lang/String;

.field private mScreenWidth:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedPosition:I

.field private mSendButton:Landroid/widget/Button;

.field private mSendConfirmDialog:Landroid/app/AlertDialog;

.field private mSendingMessage:Z

.field private mSentMessage:Z

.field private mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

.field private mSmileyDialog:Landroid/app/AlertDialog;

.field private mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field private mSubjectTextEditor:Landroid/widget/EditText;

.field private mTextColor:I

.field private final mTextEditorInputFilter:Landroid/text/InputFilter;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mTextFieldColor:I

.field private mTextOnTop:Z

.field private final mTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private final mToButtonDeleteHandler:Landroid/os/Handler;

.field private mToButtonDialog:Landroid/app/AlertDialog;

.field private mToButtonId:I

.field private mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

.field private mToButtonList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/mms/ui/ToButton;",
            ">;"
        }
    .end annotation
.end field

.field private mToastForDraftSave:Z

.field private mToastHandler:Landroid/os/Handler;

.field private mTopLayout:Landroid/widget/LinearLayout;

.field private mTopPanel:Landroid/view/View;

.field private mWaitingForSubActivity:Z

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private mshowDupplicatedRecipientToast:Landroid/widget/Toast;

.field private numberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reqReceiver:Landroid/content/BroadcastReceiver;

.field private sendAnimSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 400
    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    .line 428
    sput-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    .line 3468
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendCompleteRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2130
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->numberList:Ljava/util/ArrayList;

    .line 349
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    .line 358
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    .line 359
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    .line 373
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    .line 402
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    .line 403
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    .line 416
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    .line 422
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    .line 423
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    .line 424
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasLockedMessage:Z

    .line 426
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    .line 427
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    .line 431
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    .line 432
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    .line 441
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsTranslateMenuON:Z

    .line 442
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    .line 443
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    .line 444
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    .line 465
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveComposer:Z

    .line 467
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    .line 471
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    .line 488
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    .line 490
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    .line 493
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    .line 497
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPosToReplace:I

    .line 530
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    .line 629
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$2;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageListItemHandler:Landroid/os/Handler;

    .line 708
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$3;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipboardHandler:Landroid/os/Handler;

    .line 717
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$4;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    .line 732
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$5;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 772
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$6;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 1463
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$12;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 1811
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressFilter:Landroid/content/IntentFilter;

    .line 1813
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$13;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 1840
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$14;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    .line 2728
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    .line 2729
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    .line 2927
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    .line 3443
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$26;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$26;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mResetMessageRunnable:Ljava/lang/Runnable;

    .line 3470
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    .line 3474
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    .line 3476
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    .line 3605
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$31;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$31;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    .line 3625
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$32;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$32;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    .line 5590
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$50;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$50;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorInputFilter:Landroid/text/InputFilter;

    .line 5638
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$51;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$51;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 5706
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$52;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$52;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 6819
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$57;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$57;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 7239
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$61;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$61;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->reqReceiver:Landroid/content/BroadcastReceiver;

    .line 8165
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$73;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$73;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;

    .line 8253
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$74;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$74;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditorHandler:Landroid/os/Handler;

    .line 8565
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 8571
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 8577
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 8587
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    .line 9129
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$78;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$78;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2131
    if-eqz p1, :cond_f1

    .line 2132
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setIntent(Landroid/content/Intent;)V

    .line 2133
    :cond_f1
    return-void
.end method

.method private AddText(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 9231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9262
    :goto_7
    return v0

    .line 9234
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 9235
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 9243
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v3

    if-lez v3, :cond_2d

    if-lez v2, :cond_2d

    .line 9246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9255
    :cond_2d
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 9256
    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    .line 9260
    :goto_36
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "AddText..."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9261
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddText text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 9262
    const/4 v0, 0x1

    goto :goto_7

    .line 9258
    :cond_57
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_36
.end method

.method private AddToButtonInPanel()V
    .registers 11

    .prologue
    .line 8189
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9}, Lcom/android/mms/ui/ToButtonLayout;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_d

    .line 8226
    :cond_c
    return-void

    .line 8192
    :cond_d
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v9, :cond_16

    .line 8193
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v9}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 8195
    :cond_16
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9}, Lcom/android/mms/ui/ToButtonLayout;->removeAllButtons()V

    .line 8196
    iget v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mScreenWidth:I

    add-int/lit8 v6, v9, -0x36

    .line 8198
    .local v6, width:I
    const/4 v7, 0x0

    .line 8199
    .local v7, x:I
    const/16 v8, 0xa

    .line 8202
    .local v8, y:I
    const/16 v1, 0x38

    .line 8208
    .local v1, listHeight:I
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v9}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ToButton;

    .line 8210
    .local v4, toButton:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8212
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/android/mms/ui/ToButton;->setText(Ljava/lang/CharSequence;)V

    .line 8213
    invoke-virtual {v4}, Lcom/android/mms/ui/ToButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-direct {p0, v2, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v9

    add-int/lit8 v5, v9, 0x14

    .line 8214
    .local v5, toButtonWidth:I
    add-int v9, v7, v5

    add-int/lit8 v3, v9, 0xa

    .line 8216
    .local v3, tempX:I
    if-lez v7, :cond_5d

    if-le v3, v6, :cond_5d

    .line 8217
    const/4 v7, 0x0

    .line 8218
    add-int v9, v7, v5

    add-int/lit8 v3, v9, 0xa

    .line 8219
    add-int/2addr v8, v1

    .line 8222
    :cond_5d
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v9, v4, v7, v8}, Lcom/android/mms/ui/ToButtonLayout;->addButton(Landroid/view/View;II)V

    .line 8224
    move v7, v3

    .line 8225
    goto :goto_2e
.end method

.method private CheckValidRecipient(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "recipient"
    .parameter "recipients"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 9399
    :goto_9
    return v3

    .line 9370
    :cond_a
    const/4 v0, 0x0

    .line 9373
    .local v0, hasInvalidRecipient:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_12

    .line 9374
    const/4 v0, 0x1

    .line 9377
    :cond_12
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 9378
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v6}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9379
    .local v2, r:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    move v3, v4

    .line 9380
    goto :goto_9

    .line 9383
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Ljava/lang/String;
    :cond_36
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 9384
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v6}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9385
    .restart local v2       #r:Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    move v3, v4

    .line 9386
    goto :goto_9

    .line 9390
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Ljava/lang/String;
    :cond_5a
    const/4 v0, 0x1

    .line 9393
    :cond_5b
    if-ne v0, v3, :cond_5f

    move v3, v5

    .line 9394
    goto :goto_9

    .line 9396
    :cond_5f
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9397
    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    .line 9399
    const/4 v3, 0x0

    goto :goto_9
.end method

.method private GetStrPixelWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .registers 5
    .parameter "str"
    .parameter "paint"

    .prologue
    .line 8236
    const/4 v0, 0x0

    .line 8237
    .local v0, ret:I
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    .line 8238
    return v0
.end method

.method private MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0901a9

    const/4 v7, 0x4

    const/4 v2, 0x0

    .line 7902
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-gtz v0, :cond_c

    .line 7949
    :cond_b
    :goto_b
    return-void

    .line 7905
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 7907
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 7908
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v3

    .line 7910
    if-eqz p2, :cond_2f

    if-ne v3, v7, :cond_2f

    move v3, v2

    .line 7913
    :cond_2f
    const/4 v6, 0x2

    if-ne v3, v6, :cond_a3

    .line 7914
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showMaxRecipientToast()V

    .line 7928
    :cond_35
    if-lez v1, :cond_3b

    .line 7929
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    .line 7932
    :cond_3b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-eqz v0, :cond_46

    .line 7933
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 7935
    :cond_46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7936
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 7939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901aa

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7942
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$68;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$68;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_b

    .line 7916
    :cond_a3
    const/4 v6, 0x3

    if-ne v3, v6, :cond_ad

    .line 7917
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showDupplicatedRecipientToast()V

    move v0, v1

    :goto_aa
    move v1, v0

    .line 7926
    goto/16 :goto_16

    .line 7918
    :cond_ad
    if-ne v3, v7, :cond_c3

    .line 7919
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_ba

    .line 7920
    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7922
    :cond_ba
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_aa

    .line 7923
    :cond_c3
    if-nez v3, :cond_c9

    .line 7924
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_aa

    :cond_c9
    move v0, v1

    goto :goto_aa
.end method

.method private MakeToButtons(Ljava/lang/String;Z)I
    .registers 12
    .parameter "recipient"
    .parameter "addInvalidRecipient"

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x3

    .line 8063
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 8162
    :goto_9
    return v5

    .line 8066
    :cond_a
    const/4 v1, 0x0

    .line 8069
    .local v1, hasInvalidRecipient:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v6, :cond_12

    .line 8070
    const/4 v1, 0x1

    .line 8073
    :cond_12
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 8074
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 8075
    .local v0, btn:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    move v5, v6

    .line 8076
    goto :goto_9

    .line 8079
    .end local v0           #btn:Lcom/android/mms/ui/ToButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3a
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 8080
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v8}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 8081
    .restart local v0       #btn:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4a

    move v5, v6

    .line 8082
    goto :goto_9

    .line 8086
    .end local v0           #btn:Lcom/android/mms/ui/ToButton;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_62
    const/4 v1, 0x1

    .line 8089
    :cond_63
    if-ne v1, v5, :cond_69

    if-nez p2, :cond_69

    move v5, v7

    .line 8090
    goto :goto_9

    .line 8093
    :cond_69
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    .line 8094
    .local v3, recipientLimit:I
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->size()I

    move-result v5

    if-lt v5, v3, :cond_77

    .line 8095
    const/4 v5, 0x2

    goto :goto_9

    .line 8097
    :cond_77
    new-instance v4, Lcom/android/mms/ui/ToButton;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    invoke-direct {v4, v5, v6, p1}, Lcom/android/mms/ui/ToButton;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 8098
    .local v4, toButton:Lcom/android/mms/ui/ToButton;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 8099
    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$69;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$69;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8105
    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$70;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$70;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8112
    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$71;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$71;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 8133
    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$72;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$72;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ToButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 8156
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8157
    iget v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    .line 8159
    if-eqz v1, :cond_bb

    move v5, v7

    .line 8160
    goto/16 :goto_9

    .line 8162
    :cond_bb
    const/4 v5, 0x0

    goto/16 :goto_9
.end method

.method private MakeToButtonsByRecipientEditor(ZZ)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7952
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_8

    move v0, v2

    .line 8001
    :goto_7
    return v0

    .line 7955
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7956
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v0, v2

    .line 7957
    goto :goto_7

    .line 7959
    :cond_1a
    const-string v1, "[,;]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7960
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 7963
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 7965
    array-length v7, v5

    move v4, v3

    move v0, v3

    move v1, v3

    :goto_30
    if-ge v4, v7, :cond_42

    aget-object v8, v5, v4

    .line 7967
    invoke-static {v8}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 7969
    invoke-direct {p0, v9, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v9

    .line 7971
    const/4 v10, 0x2

    if-ne v9, v10, :cond_60

    .line 7972
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showMaxRecipientToast()V

    .line 7989
    :cond_42
    if-lez v1, :cond_47

    .line 7990
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    .line 7993
    :cond_47
    const/16 v1, 0x8

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eq v1, v4, :cond_82

    .line 7994
    if-lez v0, :cond_82

    if-eqz p2, :cond_82

    .line 7995
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->alertInvalidRecipientsPopup(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v3

    .line 7996
    goto :goto_7

    .line 7974
    :cond_60
    const/4 v10, 0x3

    if-ne v9, v10, :cond_69

    .line 7975
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showDupplicatedRecipientToast()V

    .line 7965
    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 7976
    :cond_69
    const/4 v10, 0x4

    if-ne v9, v10, :cond_7d

    .line 7977
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_77

    .line 7978
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7980
    :cond_77
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7982
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 7984
    :cond_7d
    if-nez v9, :cond_66

    .line 7985
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_82
    move v0, v2

    .line 8001
    goto :goto_7
.end method

.method private MakeToButtonsByString(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 8005
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8029
    :goto_7
    return-void

    .line 8008
    :cond_8
    const-string v0, "[,;]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 8010
    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_11
    if-ge v1, v4, :cond_21

    aget-object v5, v3, v1

    .line 8012
    invoke-static {v5}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8014
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtons(Ljava/lang/String;Z)I

    move-result v5

    .line 8015
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3f

    .line 8025
    :cond_21
    if-lez v0, :cond_26

    .line 8026
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    .line 8028
    :cond_26
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MakeToButtonsByString count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 8018
    :cond_3f
    const/4 v6, 0x4

    if-ne v5, v6, :cond_47

    .line 8019
    add-int/lit8 v0, v0, 0x1

    .line 8010
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 8020
    :cond_47
    if-nez v5, :cond_44

    .line 8021
    add-int/lit8 v0, v0, 0x1

    goto :goto_44
.end method

.method private RemoveToButton(I)V
    .registers 4
    .parameter "toButtonId"

    .prologue
    .line 8172
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->clearFocusAllToButtons()V

    .line 8174
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8176
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 8177
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    .line 8183
    :goto_17
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 8184
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setRecipientsOnRecipientsEditor()V

    .line 8185
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateWorkingRecipients(Z)V

    .line 8186
    return-void

    .line 8179
    :cond_24
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButtonLayout;->removeAllButtons()V

    .line 8180
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    goto :goto_17
.end method

.method private UpdateToButtonPanel(Z)V
    .registers 4
    .parameter "updateToButtonLayout"

    .prologue
    const/4 v1, 0x0

    .line 7877
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setRecipientsOnRecipientsEditor()V

    .line 7878
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateWorkingRecipients(Z)V

    .line 7880
    if-eqz p1, :cond_19

    .line 7881
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7882
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 7883
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    .line 7887
    :cond_19
    :goto_19
    return-void

    .line 7885
    :cond_1a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    goto :goto_19
.end method

.method private UpdateWorkingRecipients(Z)V
    .registers 5
    .parameter "correctAttachmentState"

    .prologue
    const/4 v2, 0x1

    .line 7890
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_37

    .line 7891
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 7892
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->containsEmail()Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 7893
    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 7894
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 7896
    :cond_2a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    .line 7899
    :cond_37
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshCheckedList()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    return v0
.end method

.method static synthetic access$10102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    return v0
.end method

.method static synthetic access$10202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    return p1
.end method

.method static synthetic access$10300(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    return v0
.end method

.method static synthetic access$10400(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/ContactList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnConverationList()V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/EditText;Ljava/lang/String;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/mms/ui/ComposeMessageFragment;III)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnderLength(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11200(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageContactHeader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    return v0
.end method

.method static synthetic access$11500(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize(Z)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/SlideshowModel;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ToButton;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnPreToButton()V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnNextToButton()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12200(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->RemoveToButton(I)V

    return-void
.end method

.method static synthetic access$12302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    return p1
.end method

.method static synthetic access$12402(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$12500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipboardHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteSelectedMessages()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasLockedMessage:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteMessage()V

    return-void
.end method

.method static synthetic access$1900()Landroid/app/ProgressDialog;
    .registers 1

    .prologue
    .line 226
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ComposeMessageFragment;[I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->startDeleteAnimation([I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetMessage()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->UpdateToButtonPanel(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    return-void
.end method

.method static synthetic access$3102(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;III)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->updateCounter(Ljava/lang/CharSequence;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/MessageItem;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    return-void
.end method

.method static synthetic access$3800(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->numberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/ComposeMessageFragment;ZZ)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ToButtonLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnLastToButton()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->toastConvertInfo(Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSendButtonText(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/mms/ui/ComposeMessageFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPosToReplace:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 226
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendCompleteRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/Runnable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->startSendAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->startSendAnimationPrepare(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->goToConversationList()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ComposeMessageFragment;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->setSlideDuration(II)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/mms/ui/ComposeMessageFragment;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityforAddMedia(IZ)V

    return-void
.end method

.method static synthetic access$5902(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMessageFragment;ZI)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/AddTextSelectorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->addtext(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ChooseContactSelectorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->chooseContact(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/mms/ui/ComposeMessageFragment;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZZZI)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/OnEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$7600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addImage(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addVideo(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 226
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/ComposeMessageFragment;->addAudio(Landroid/net/Uri;IZZZ)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;II)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->calculateMaxTextLength(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showEditTextMaxCharExceedToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/AttachmentModel;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View$OnKeyListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$9402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$9900(Lcom/android/mms/ui/ComposeMessageFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    return v0
.end method

.method static synthetic access$9902(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    return p1
.end method

.method private addAudio(Landroid/net/Uri;IZZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7633
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x3

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 7635
    const v2, 0x7f0900db

    const/16 v4, 0xe

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7637
    return-void
.end method

.method private final addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1588
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    if-ne v1, v2, :cond_25

    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    :cond_25
    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1594
    const/16 v0, 0xf

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1595
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v1, v3, v0, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1598
    :cond_48
    :goto_48
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 1599
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1601
    :goto_54
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1602
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_54

    .line 1605
    :cond_5e
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1606
    const/4 v1, 0x0

    .line 1607
    if-ltz v5, :cond_bd

    .line 1608
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1609
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 1612
    :goto_74
    const-string v5, "mailto"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 1613
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->haveEmailContact(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a6

    move v0, v2

    .line 1617
    :goto_83
    if-eqz v0, :cond_48

    .line 1618
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1619
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f090008

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1621
    const/16 v5, 0x7f

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_48

    :cond_a6
    move v0, v3

    .line 1613
    goto :goto_83

    .line 1614
    :cond_a8
    const-string v5, "tel"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1615
    invoke-static {v1}, Lcom/android/mms/data/Contact;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b8

    move v0, v2

    goto :goto_83

    :cond_b8
    move v0, v3

    goto :goto_83

    .line 1625
    :cond_ba
    return-void

    :cond_bb
    move v0, v3

    goto :goto_83

    :cond_bd
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_74
.end method

.method private addDeleteSoftKey()V
    .registers 4

    .prologue
    .line 9177
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    if-eqz v0, :cond_5

    .line 9218
    :goto_4
    return-void

    .line 9180
    :cond_5
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 9182
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090098

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 9183
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->addView(Landroid/view/View;)V

    .line 9184
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$79;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$79;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9190
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 9192
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09006a

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 9193
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->addView(Landroid/view/View;)V

    .line 9194
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 9195
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$80;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$80;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9201
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$81;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$81;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 9217
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method private addImage(Landroid/net/Uri;IZZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7523
    const-string v0, "Mms:app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7524
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImage: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7526
    :cond_21
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 7529
    const/4 v0, -0x4

    if-eq v1, v0, :cond_3d

    const/4 v0, -0x2

    if-ne v1, v0, :cond_76

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 7533
    :cond_3d
    if-nez p4, :cond_49

    .line 7534
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$64;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$64;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7541
    :cond_49
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    .line 7542
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 7543
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v0

    .line 7546
    :cond_5f
    new-instance v1, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7547
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 7550
    invoke-virtual {p0, v0, p5, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V

    .line 7568
    :goto_75
    return-void

    .line 7554
    :cond_76
    const/4 v0, -0x8

    if-ne v1, v0, :cond_90

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/android/mms/ui/MessageUtils;->isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 7558
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 7559
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotateImageAsPart()Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 7560
    invoke-virtual {p0, v0, p5, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V

    goto :goto_75

    .line 7564
    :cond_90
    const v2, 0x7f0900dc

    const/16 v4, 0xa

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_75
.end method

.method private addMedia(ILandroid/net/Uri;ZZZ)V
    .registers 15
    .parameter "type"
    .parameter "fileUri"
    .parameter "append"
    .parameter "sendMultiple"
    .parameter "saveMms"

    .prologue
    .line 7677
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2d

    .line 7679
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 7686
    .local v2, location:I
    :goto_9
    packed-switch p1, :pswitch_data_78

    .line 7711
    :goto_c
    :pswitch_c
    if-nez p5, :cond_10

    if-nez p4, :cond_2c

    .line 7712
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 7713
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 7714
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_2c

    .line 7715
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 7719
    :cond_2c
    return-void

    .line 7683
    .end local v2           #location:I
    :cond_2d
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPosToReplace:I

    .restart local v2       #location:I
    goto :goto_9

    .line 7688
    :pswitch_30
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addImage(Landroid/net/Uri;IZZZ)V

    goto :goto_c

    .line 7691
    :pswitch_39
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addVideo(Landroid/net/Uri;IZZZ)V

    goto :goto_c

    .line 7694
    :pswitch_42
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addAudio(Landroid/net/Uri;IZZZ)V

    goto :goto_c

    .line 7697
    :pswitch_4b
    const/4 v6, 0x0

    const/16 v8, 0x14

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_c

    .line 7700
    :pswitch_56
    const/4 v6, 0x0

    const/16 v8, 0x1a

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_c

    .line 7703
    :pswitch_61
    const/4 v6, 0x1

    const/16 v8, 0x1b

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_c

    .line 7706
    :pswitch_6c
    const/4 v6, 0x1

    const/16 v8, 0x21

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_c

    .line 7686
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_30
        :pswitch_39
        :pswitch_42
        :pswitch_c
        :pswitch_c
        :pswitch_4b
        :pswitch_56
        :pswitch_61
        :pswitch_6c
    .end packed-switch
.end method

.method private addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 7722
    if-eqz p2, :cond_1a

    .line 7723
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    .line 7725
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$66;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$66;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7768
    :cond_1a
    :goto_1a
    return-void

    .line 7734
    :cond_1b
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 7735
    const/4 v1, 0x1

    .line 7763
    :goto_24
    if-eqz v1, :cond_1a

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1a

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1a

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 7764
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto :goto_1a

    .line 7736
    :cond_34
    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 7737
    const/4 v1, 0x2

    goto :goto_24

    .line 7738
    :cond_3e
    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 7739
    const/4 v1, 0x3

    goto :goto_24

    .line 7740
    :cond_48
    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 7741
    const/4 v1, 0x6

    goto :goto_24

    .line 7742
    :cond_52
    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 7743
    const/4 v1, 0x7

    goto :goto_24

    .line 7759
    :cond_5c
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7760
    const v1, 0x7f090183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7761
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1, v0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V

    move v1, v5

    goto :goto_24
.end method

.method private addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .registers 4
    .parameter "menu"
    .parameter "v"
    .parameter "msgListItem"

    .prologue
    .line 1513
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    .line 1514
    return-void
.end method

.method private addRawMedia(Landroid/net/Uri;ZZZI)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f09015d

    const/4 v8, 0x0

    .line 7640
    const-string v0, "Mms:app"

    invoke-static {v0, v8}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 7641
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRawMedia: append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7643
    :cond_2e
    const/4 v1, -0x1

    .line 7645
    if-eqz p3, :cond_34

    .line 7646
    :try_start_31
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkCRForRawAttachment()V

    .line 7648
    :cond_34
    const/16 v0, 0x1c

    if-eq v0, p5, :cond_48

    const/16 v0, 0x14

    if-eq v0, p5, :cond_48

    const/16 v0, 0x1a

    if-eq v0, p5, :cond_48

    const/16 v0, 0x1b

    if-eq v0, p5, :cond_48

    const/16 v0, 0x21

    if-ne v0, p5, :cond_5b

    .line 7652
    :cond_48
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 7653
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 7656
    :cond_5b
    const v2, 0x7f09015d

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p5

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7657
    if-nez v1, :cond_72

    .line 7658
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$65;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$65;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_72
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_31 .. :try_end_72} :catch_73

    .line 7669
    :cond_72
    :goto_72
    return-void

    .line 7665
    :catch_73
    move-exception v0

    .line 7666
    const/4 v1, -0x5

    move-object v0, p0

    move v2, v9

    move-object v3, p1

    move v4, p5

    move v5, v8

    move v6, p2

    .line 7667
    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    goto :goto_72
.end method

.method private addRecipientsListener()V
    .registers 1

    .prologue
    .line 7213
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 7214
    return-void
.end method

.method private addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .registers 14
    .parameter "menu"
    .parameter "v"
    .parameter "msgListItem"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1572
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v9

    .line 1574
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_23

    .line 1575
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1576
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 1580
    .end local v6           #intent:Landroid/content/Intent;
    :cond_23
    return-void
.end method

.method private addVideo(Landroid/net/Uri;IZZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7623
    if-eqz p1, :cond_1c

    .line 7624
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x2

    move v2, p2

    move-object v4, p1

    move v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 7626
    const v2, 0x7f0900dd

    const/16 v4, 0xc

    move-object v0, p0

    move-object v3, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7629
    :cond_1c
    return-void
.end method

.method private addtext(I)V
    .registers 6
    .parameter

    .prologue
    .line 4354
    packed-switch p1, :pswitch_data_a8

    .line 4400
    :goto_3
    return-void

    .line 4356
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4357
    const-string v1, "additional"

    const-string v2, "namecard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4358
    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 4362
    :pswitch_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4364
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4366
    const/16 v1, 0x1f

    :try_start_2f
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_3

    .line 4367
    :catch_33
    move-exception v0

    .line 4368
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4369
    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4370
    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4371
    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4372
    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4373
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 4378
    :pswitch_58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4379
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.memo"

    const-string v3, "com.sec.android.app.memo.MemoAddTextActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4380
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4381
    const-string v1, "text/memo_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4382
    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 4386
    :pswitch_76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4387
    const-string v1, "text/tasks_string"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4388
    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 4392
    :pswitch_89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4393
    const-string v1, "image_location"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4394
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4395
    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 4354
    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_4
        :pswitch_18
        :pswitch_58
        :pswitch_76
        :pswitch_89
    .end packed-switch
.end method

.method private attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V
    .registers 5
    .parameter "attach"
    .parameter "position"

    .prologue
    .line 6049
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-nez v0, :cond_10

    .line 6050
    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAttachmentRemoved()V

    .line 6078
    :goto_f
    return-void

    .line 6053
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 6055
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->removeAttachment(Ljava/lang/Object;I)Z

    .line 6058
    :cond_25
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 6060
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-nez v0, :cond_4a

    .line 6061
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 6062
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6063
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    .line 6077
    :goto_44
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->notifyDataSetChanged()V

    goto :goto_f

    .line 6065
    :cond_4a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_44
.end method

.method private bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V
    .registers 5
    .parameter "list"

    .prologue
    .line 1886
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToContactHeaderWidget(),list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1893
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    .line 1895
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1896
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 1900
    :cond_2f
    :goto_2f
    return-void

    .line 1898
    :cond_30
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    goto :goto_2f
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .registers 10
    .parameter

    .prologue
    const v7, 0x7f090067

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3860
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 3862
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3863
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_71

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 3864
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_29
    move v1, v0

    goto :goto_e

    .line 3867
    :cond_2b
    if-ne v1, v6, :cond_62

    .line 3868
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3869
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 3870
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3871
    const/16 v1, 0x7f

    invoke-interface {p1, v2, v1, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 3882
    :cond_61
    :goto_61
    return-void

    .line 3878
    :cond_62
    if-le v1, v6, :cond_61

    .line 3879
    const/16 v0, 0x82

    invoke-interface {p1, v2, v0, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020137

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_61

    :cond_71
    move v0, v1

    goto :goto_29
.end method

.method private calcAttachListHeight(Landroid/widget/ListView;)I
    .registers 7
    .parameter "attachList"

    .prologue
    .line 6036
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 6037
    .local v0, dividerHeight:I
    const/16 v2, 0x44

    .line 6041
    .local v2, itemHeight:I
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 6044
    .local v1, itemCount:I
    add-int v4, v2, v0

    mul-int/2addr v4, v1

    add-int/lit8 v3, v4, -0x1

    .line 6045
    .local v3, result:I
    return v3
.end method

.method private calculateMaxTextLength(Ljava/lang/CharSequence;II)I
    .registers 13
    .parameter "text"
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v8, 0x0

    .line 837
    const/4 v2, 0x0

    .line 838
    .local v2, params:[I
    const-string v4, ""

    .line 839
    .local v4, pre:Ljava/lang/String;
    if-lez p2, :cond_e

    .line 840
    invoke-interface {p1, v8, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 842
    :cond_e
    add-int v3, p2, p3

    .line 843
    .local v3, postPos:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v3, :cond_33

    .line 844
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p1, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 846
    :cond_33
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, changed:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3c
    if-ge v1, p3, :cond_77

    .line 849
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v0, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 851
    .local v5, test:Ljava/lang/String;
    sget v6, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6d

    .line 852
    invoke-static {v5, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    .line 856
    :goto_5e
    aget v6, v2, v8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v7

    if-lt v6, v7, :cond_74

    .line 857
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 861
    .end local v5           #test:Ljava/lang/String;
    :goto_6c
    return v6

    .line 854
    .restart local v5       #test:Ljava/lang/String;
    :cond_6d
    sget v6, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    invoke-static {v5, v8, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_5e

    .line 848
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 861
    .end local v5           #test:Ljava/lang/String;
    :cond_77
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_6c
.end method

.method public static cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .registers 3
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 2116
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2118
    const/16 v0, 0x213

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2120
    const/4 v0, 0x1

    .line 2122
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .registers 3
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 2106
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2108
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2110
    const/4 v0, 0x1

    .line 2112
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private checkCRForRawAttachment()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 5033
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 5035
    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    if-nez v0, :cond_17

    .line 5037
    :cond_f
    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Raw Attachment"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5039
    :cond_17
    return-void
.end method

.method private checkInputModeAndSendMessage()V
    .registers 4

    .prologue
    .line 1163
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "checkInputModeAndSendMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    .line 1167
    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1168
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1169
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1175
    :goto_37
    return-void

    .line 1174
    :cond_38
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    goto :goto_37
.end method

.method private checkPendingNotification()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 6840
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_11

    .line 6841
    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "getView() returns null !"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6842
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    .line 6853
    :cond_10
    :goto_10
    return-void

    .line 6846
    :cond_11
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    if-eqz v2, :cond_42

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v0, 0x1

    .line 6847
    .local v0, flag:Z
    :goto_20
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPendingNotification(),flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6849
    if-eqz v0, :cond_10

    .line 6850
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 6851
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPossiblePendingNotification:Z

    goto :goto_10

    .end local v0           #flag:Z
    :cond_42
    move v0, v1

    .line 6846
    goto :goto_20
.end method

.method private checkSubjectMargin()V
    .registers 3

    .prologue
    .line 6090
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v1, :cond_5

    .line 6102
    :goto_4
    return-void

    .line 6093
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 6096
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_22

    .line 6097
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 6101
    :goto_1c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 6099
    :cond_22
    const/4 v1, -0x8

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1c
.end method

.method private chooseContact(I)V
    .registers 6
    .parameter "type"

    .prologue
    .line 4405
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 4406
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 4407
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 4408
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    .line 4410
    return-void
.end method

.method private clearFocusAllToButtons()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 8279
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 8281
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8282
    .local v1, id:I
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ToButton;

    .line 8284
    .local v2, toButton:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 8285
    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8286
    invoke-virtual {v2, v5}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    goto :goto_10

    .line 8289
    .end local v1           #id:I
    .end local v2           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_39
    return-void
.end method

.method private static confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6230
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6231
    const v0, 0x7f09008f

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6232
    const v0, 0x1080027

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 6233
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6234
    if-eqz p2, :cond_2e

    const v0, 0x7f090092

    :goto_1a
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 6236
    const v0, 0x104000a

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6237
    const/high16 v0, 0x104

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 6234
    :cond_2e
    const v0, 0x7f090091

    goto :goto_1a
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 6201
    const v0, 0x7f030014

    invoke-static {p3, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 6202
    const v0, 0x7f08006f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 6203
    const v1, 0x7f08006e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6204
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 6206
    if-nez p2, :cond_54

    .line 6207
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 6217
    :goto_24
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6218
    if-eqz p1, :cond_68

    const v0, 0x7f090090

    :goto_2e
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 6209
    :cond_54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 6210
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 6211
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$56;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$56;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_24

    .line 6218
    :cond_68
    const v0, 0x7f09008f

    goto :goto_2e
.end method

.method private confirmSendMessageIfNeeded()V
    .registers 10

    .prologue
    const v8, 0x7f090069

    const v7, 0x7f09004f

    const/4 v6, 0x0

    const v5, 0x1080027

    const/4 v4, 0x1

    .line 1179
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    .line 1183
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1185
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v3, "confirmSendMessageIfNeeded()"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 1218
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInternational_SMS_Guard()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1219
    if-eqz v1, :cond_30

    .line 1220
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    .line 1357
    :cond_2f
    :goto_2f
    return-void

    .line 1225
    :cond_30
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto :goto_2f

    .line 1230
    :cond_34
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    .line 1231
    const-string v0, "CRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_77

    const-string v0, "TNL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_77

    const-string v0, "MAX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_77

    const-string v0, "TRG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_77

    const-string v0, "DTM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_77

    const-string v0, "TMZ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_77

    const-string v0, "MBM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_77

    const-string v0, "TPL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_2f

    .line 1235
    :cond_77
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isReplyAllowedForThread()Z

    move-result v0

    if-nez v0, :cond_a0

    .line 1236
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2f

    .line 1253
    :cond_a0
    if-nez v1, :cond_2f

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmptySMSCAddress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1254
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2f

    .line 1268
    :cond_ce
    const/4 v0, 0x0

    .line 1270
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v3, :cond_d9

    .line 1271
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v0

    .line 1274
    :cond_d9
    if-eqz v0, :cond_199

    .line 1275
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 1277
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2f

    .line 1279
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->formatInvalidNumbers(Z)Ljava/lang/String;

    move-result-object v0

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09004e

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0901a9

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1284
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1286
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09006f

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$7;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageFragment$7;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09006a

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v3, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1297
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    .line 1298
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$8;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1303
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2f

    .line 1306
    :cond_160
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2f

    .line 1308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1309
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v2, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1314
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    .line 1315
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$9;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1320
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2f

    .line 1332
    :cond_199
    if-nez v1, :cond_207

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmptySMSCAddress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_207

    const-string v0, "CRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_1e3

    const-string v0, "TNL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_1e3

    const-string v0, "MAX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_1e3

    const-string v0, "TRG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_1e3

    const-string v0, "DTM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_1e3

    const-string v0, "TMZ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_1e3

    const-string v0, "MBM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v4, :cond_1e3

    const-string v0, "TPL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_207

    .line 1335
    :cond_1e3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2f

    .line 1343
    :cond_207
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInternational_SMS_Guard()Z

    move-result v0

    if-eqz v0, :cond_219

    .line 1344
    if-eqz v1, :cond_214

    .line 1345
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto/16 :goto_2f

    .line 1350
    :cond_214
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto/16 :goto_2f

    .line 1354
    :cond_219
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto/16 :goto_2f
.end method

.method private createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 6004
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "createAttachmentList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6006
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 6007
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6009
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v1

    .line 6010
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 6013
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f030009

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    .line 6018
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 6019
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 6020
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClickable(Z)V

    .line 6022
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6023
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateAttachListHeight(Landroid/widget/ListView;)V

    .line 6024
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 6025
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 7221
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7222
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_14

    .line 7223
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7225
    :cond_14
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "threadId"
    .parameter "isConversationDeleteMode"

    .prologue
    .line 7230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7231
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_19

    .line 7232
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7233
    const-string v1, "conversationDeleteMode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7235
    :cond_19
    return-object v0
.end method

.method private deleteDraft()V
    .registers 3

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    .line 2777
    return-void
.end method

.method private deleteMessage()V
    .registers 18

    .prologue
    .line 8873
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMessage() mDeleteUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8875
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    if-eqz v1, :cond_41

    .line 8876
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v2, 0x25e4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v5, :cond_3e

    const/4 v5, 0x0

    :goto_34
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 8935
    :cond_38
    :goto_38
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z

    .line 8936
    return-void

    .line 8876
    :cond_3e
    const-string v5, "locked=0"

    goto :goto_34

    .line 8879
    :cond_41
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_80

    .line 8880
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHasLockedMessage:Z

    if-eqz v1, :cond_5f

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v1, :cond_62

    .line 8881
    :cond_5f
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 8883
    :cond_62
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v14

    .line 8884
    .local v14, threadId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v2, 0x70a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    const/4 v4, 0x0

    new-instance v5, Lcom/android/mms/ui/DeleteInfo;

    const/4 v6, 0x1

    invoke-direct {v5, v14, v15, v6}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    goto :goto_38

    .line 8888
    .end local v14           #threadId:J
    :cond_80
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 8893
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 8895
    .local v8, deleteCount:I
    if-eqz v7, :cond_b3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 8897
    :cond_91
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 8898
    .local v12, msgId:J
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 8899
    .local v16, type:Ljava/lang/String;
    const/16 v1, 0x15

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 8901
    .local v9, groupId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v16

    invoke-virtual {v1, v12, v13, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 8928
    :cond_ad
    :goto_ad
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_91

    .line 8931
    .end local v9           #groupId:J
    .end local v12           #msgId:J
    .end local v16           #type:Ljava/lang/String;
    :cond_b3
    if-nez v8, :cond_38

    .line 8932
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_38

    .line 8904
    .restart local v9       #groupId:J
    .restart local v12       #msgId:J
    .restart local v16       #type:Ljava/lang/String;
    :cond_be
    const/16 v1, 0x14

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_f4

    const/4 v11, 0x1

    .line 8906
    .local v11, locked:Z
    :goto_c7
    if-eqz v11, :cond_cf

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v1, :cond_ad

    .line 8909
    :cond_cf
    add-int/lit8 v8, v8, 0x1

    .line 8910
    const-string v1, "mms"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 8911
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 8925
    .local v4, deleteUri:Landroid/net/Uri;
    :goto_e1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v2, 0x25e4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z

    if-eqz v5, :cond_119

    const/4 v5, 0x0

    :goto_ef
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_ad

    .line 8904
    .end local v4           #deleteUri:Landroid/net/Uri;
    .end local v11           #locked:Z
    :cond_f4
    const/4 v11, 0x0

    goto :goto_c7

    .line 8912
    .restart local v11       #locked:Z
    :cond_f6
    const-string v1, "wpm"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 8913
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #deleteUri:Landroid/net/Uri;
    goto :goto_e1

    .line 8917
    .end local v4           #deleteUri:Landroid/net/Uri;
    :cond_107
    cmp-long v1, v12, v9

    if-nez v1, :cond_112

    .line 8918
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #deleteUri:Landroid/net/Uri;
    goto :goto_e1

    .line 8921
    .end local v4           #deleteUri:Landroid/net/Uri;
    :cond_112
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #deleteUri:Landroid/net/Uri;
    goto :goto_e1

    .line 8925
    :cond_119
    const-string v5, "locked=0"

    goto :goto_ef
.end method

.method private deleteSelectedMessages()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8735
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "deleteSelectedMessages()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8737
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_e

    .line 8777
    :goto_d
    return-void

    .line 8747
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v5

    move v4, v3

    .line 8754
    :goto_15
    if-ge v4, v5, :cond_69

    .line 8755
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 8756
    if-nez v0, :cond_25

    .line 8754
    :cond_21
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_15

    .line 8759
    :cond_25
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 8760
    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_63

    move v1, v2

    .line 8761
    :goto_32
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8763
    if-ne v1, v2, :cond_21

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, v6, v7, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    .line 8769
    :goto_41
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 8770
    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Z)V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    if-ne v1, v2, :cond_65

    const v1, 0x7f090091

    :goto_59
    invoke-static {v4, v3, v0, v5, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 8774
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 8775
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    goto :goto_d

    :cond_63
    move v1, v3

    .line 8760
    goto :goto_32

    .line 8770
    :cond_65
    const v1, 0x7f0901bb

    goto :goto_59

    :cond_69
    move v0, v3

    goto :goto_41
.end method

.method private dialRecipient()V
    .registers 4

    .prologue
    .line 3673
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 3674
    return-void
.end method

.method private disableDeleteModeLayout()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 8714
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    .line 8715
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8716
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    if-eqz v0, :cond_13

    .line 8717
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 8719
    :cond_13
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setDeleteMode(Z)V

    .line 8720
    return-void
.end method

.method private dismissAllDialog()V
    .registers 2

    .prologue
    .line 9302
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 9303
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9304
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    .line 9305
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9306
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1b

    .line 9307
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9308
    :cond_1b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_24

    .line 9309
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9310
    :cond_24
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2d

    .line 9311
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9313
    :cond_2d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_36

    .line 9314
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9316
    :cond_36
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3f

    .line 9317
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9319
    :cond_3f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_48

    .line 9320
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 9321
    :cond_48
    return-void
.end method

.method private drawComposerPanel()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 5433
    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "drawComposerPanel()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5435
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-eq v2, v6, :cond_1b

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v2

    if-ne v2, v6, :cond_26

    .line 5436
    :cond_1b
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5437
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5482
    :goto_25
    return-void

    .line 5444
    :cond_26
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 5445
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_25

    .line 5450
    :cond_32
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 5452
    .local v0, editText:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 5453
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5454
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5457
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 5462
    :cond_52
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->checkCMASMessage()Z

    move-result v2

    if-nez v2, :cond_64

    .line 5464
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5465
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5468
    :cond_64
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5472
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_7f

    .line 5473
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_87

    .line 5474
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 5480
    :cond_7f
    :goto_7f
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 5475
    :cond_87
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_7f

    .line 5476
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7f
.end method

.method private drawTopPanel(Z)V
    .registers 5
    .parameter "showEmptySubject"

    .prologue
    .line 5485
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawTopPanel(),showEmptySubject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5487
    if-eqz p1, :cond_22

    .line 5488
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 5491
    :goto_21
    return-void

    .line 5490
    :cond_22
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    goto :goto_21
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .registers 5
    .parameter "msgItem"

    .prologue
    .line 1650
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editMessageItem(),type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    const-string v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1653
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1657
    :goto_27
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_39

    .line 1659
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V

    .line 1661
    :cond_39
    return-void

    .line 1655
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_27
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .registers 6
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x0

    .line 1684
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1687
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1688
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_58

    .line 1689
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 1690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1691
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1692
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 1693
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    .line 1695
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1697
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 1698
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    .line 1701
    :cond_58
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .registers 7
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 1671
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v2

    .line 1672
    :try_start_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_12

    .line 1673
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1675
    :cond_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_30

    .line 1677
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1678
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1679
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 1680
    return-void

    .line 1675
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private exitComposeMessageActivity(Ljava/lang/Runnable;)V
    .registers 6
    .parameter "exit"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3257
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->dismissAllDialog()V

    .line 3260
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 3262
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    if-nez v0, :cond_1b

    .line 3263
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3265
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 3268
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3269
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    .line 3272
    :cond_26
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 3294
    :cond_2d
    :goto_2d
    return-void

    .line 3277
    :cond_2e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 3278
    invoke-direct {p0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    .line 3281
    :cond_3d
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->noRecipientsInEditor()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3282
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    .line 3284
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3285
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    goto :goto_2d

    .line 3291
    :cond_5d
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    .line 3292
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastForDraftSave:Z

    .line 3293
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_2d
.end method

.method private getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 11
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5118
    .line 5119
    const-string v1, "content://com.android.contacts/contacts/as_multi_vcard/"

    .line 5120
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x37

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 5121
    const-string v3, "%3A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5122
    array-length v3, v2

    .line 5123
    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_RAWATTACH_COUNT:I

    .line 5124
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v6, 0x7f090118

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5127
    if-le v3, v4, :cond_65

    .line 5128
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/android/mms/ui/ComposeMessageFragment$45;

    invoke-direct {v6, p0, v5}, Lcom/android/mms/ui/ComposeMessageFragment$45;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5138
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5140
    :goto_39
    if-ge v0, v4, :cond_4c

    .line 5142
    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5143
    add-int/lit8 v5, v4, -0x1

    if-ge v0, v5, :cond_49

    .line 5144
    const-string v5, "%3A"

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5140
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 5148
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5149
    :cond_65
    return-object p1
.end method

.method private getImportMediaCount(I)I
    .registers 8
    .parameter "mediaCount"

    .prologue
    .line 5097
    move v1, p1

    .line 5098
    .local v1, importCount:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 5099
    .local v3, slideShow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    .line 5100
    .local v0, currentSlideCount:I
    :goto_d
    add-int v4, v1, v0

    sget v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v4, v5, :cond_25

    .line 5101
    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    sub-int/2addr v4, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5102
    move v2, v1

    .line 5103
    .local v2, numberToImport:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$44;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$44;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5114
    .end local v2           #numberToImport:I
    :cond_25
    return v1

    .line 5099
    .end local v0           #currentSlideCount:I
    :cond_26
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 8562
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .registers 13
    .parameter "uri"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 6627
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageDate(),uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6628
    const-wide/16 v8, -0x1

    .line 6630
    .local v8, result:J
    if-eqz p1, :cond_4a

    .line 6631
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v10, [Ljava/lang/String;

    const-string v2, "date"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6634
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4a

    .line 6636
    :try_start_32
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_47

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 6637
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_63

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v8, v0, v2

    .line 6640
    :cond_47
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 6645
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_4a
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageDate(),return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6646
    return-wide v8

    .line 6640
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_63
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 826
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 827
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 828
    :cond_19
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getMessageItem : Bad cursor."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :goto_20
    return-object v0

    :cond_21
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz p4, :cond_2b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :cond_2b
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    goto :goto_20
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .registers 3

    .prologue
    .line 1862
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1863
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 1864
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 1876
    :cond_10
    :goto_10
    return-object v0

    .line 1867
    :cond_11
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1869
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isTemp(Lcom/android/mms/data/ContactList;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1870
    sget-object v1, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_28

    .line 1871
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    sput-object v1, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 1873
    :cond_28
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    goto :goto_10
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .registers 4
    .parameter "id"

    .prologue
    .line 5425
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5426
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 1519
    .line 1520
    if-nez p1, :cond_6

    move-object v0, v1

    .line 1566
    :goto_5
    return-object v0

    .line 1535
    :cond_6
    const v0, 0x7f08007d

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1536
    if-eqz v0, :cond_62

    .line 1537
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1538
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 1539
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 1542
    :goto_1d
    if-ne v3, v5, :cond_60

    .line 1544
    const v0, 0x7f08000f

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1545
    if-eqz v0, :cond_60

    .line 1546
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1547
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1548
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    move v6, v0

    move-object v0, v3

    move v3, v2

    move v2, v6

    .line 1554
    :goto_3a
    if-eq v3, v2, :cond_5e

    .line 1555
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1556
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1558
    check-cast v0, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 1560
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5e

    .line 1561
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5

    :cond_5e
    move-object v0, v1

    .line 1566
    goto :goto_5

    :cond_60
    move-object v0, v4

    goto :goto_3a

    :cond_62
    move v2, v5

    move v3, v5

    move-object v4, v1

    goto :goto_1d
.end method

.method private getSizeStringView()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 7786
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f08004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private getToastHandler()Landroid/os/Handler;
    .registers 4

    .prologue
    .line 5895
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    if-nez v0, :cond_25

    .line 5897
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_18

    .line 5898
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ToastHandler thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 5900
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5903
    :cond_18
    new-instance v0, Lcom/android/mms/ui/ToastHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ToastHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    .line 5906
    :cond_25
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private goToConversationList()V
    .registers 3

    .prologue
    .line 3304
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "goToConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3305
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 3306
    return-void
.end method

.method private handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4853
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4854
    const-string v1, "handleAddAttachmentError(),error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",mediaTypeStringId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",reqCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",sendMultiple="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ",append="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 4858
    const-string v1, "Mms/ComposeMessageFragment"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4860
    if-nez p1, :cond_44

    .line 4940
    :goto_43
    return-void

    .line 4863
    :cond_44
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$43;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p6

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageFragment$43;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_43
.end method

.method private handleAttachmentRemoved()V
    .registers 3

    .prologue
    .line 6081
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 6082
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 6083
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6084
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    .line 6086
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->notifyDataSetChanged()V

    .line 6087
    return-void
.end method

.method private handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4988
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 4990
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCreationModeDialog(),creationMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4991
    packed-switch v0, :pswitch_data_b0

    .line 5017
    :cond_21
    :goto_21
    return-void

    .line 4994
    :pswitch_22
    const v0, 0x7f0900dc

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4995
    const v6, 0x7f090137

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_21

    .line 4997
    :cond_40
    const v0, 0x7f0900dd

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 4998
    const v6, 0x7f090138

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_21

    .line 5000
    :cond_5e
    const v0, 0x7f0900db

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 5001
    const v6, 0x7f090139

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_21

    .line 5003
    :cond_7c
    const v0, 0x7f09015d

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5004
    const v6, 0x7f090160

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    invoke-virtual {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_21

    .line 5010
    :pswitch_9a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090184

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090185

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    .line 4991
    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_22
    .end packed-switch
.end method

.method private handleForwardedMessage()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5064
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "forwarded_message"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 5093
    :goto_d
    return v0

    .line 5068
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v3, "msg_uri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 5070
    const-string v3, "Mms/ComposeMessageFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleForwardedMessage(),uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5072
    if-eqz v0, :cond_72

    .line 5074
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v5, "checkCRMode"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, p0, v0, v4}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Z)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 5076
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_53

    .line 5077
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v4, "subject"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 5084
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5085
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 5086
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5087
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5091
    :cond_6a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    move v0, v2

    .line 5093
    goto :goto_d

    .line 5080
    :cond_72
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f090049

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    const-string v5, "sms_body"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto :goto_53
.end method

.method private handleSendIntent(Landroid/content/Intent;)Z
    .registers 12
    .parameter

    .prologue
    const v9, 0x7f0901bd

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 5154
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 5155
    if-nez v6, :cond_c

    .line 5329
    :cond_b
    :goto_b
    return v1

    .line 5158
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5160
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 5161
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 5162
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 5163
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v5

    .line 5165
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 5166
    const-string v0, "vcard"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5167
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$46;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageFragment$46;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/ProgressDialog;Landroid/os/Bundle;Landroid/content/Intent;)V

    const-string v1, "addAttachment"

    invoke-direct {v9, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 5202
    :cond_51
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 5203
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    :cond_6a
    move v1, v8

    .line 5206
    goto :goto_b

    .line 5207
    :cond_6c
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5210
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 5211
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 5212
    if-eqz v0, :cond_f7

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 5215
    :goto_8e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5216
    add-int v4, v2, v0

    sget v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-le v4, v5, :cond_c3

    .line 5217
    sget v4, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    sub-int v0, v4, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5219
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x7f090058

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5234
    :cond_c3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v1, v4, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    .line 5237
    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$47;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ComposeMessageFragment$47;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 5243
    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$48;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ComposeMessageFragment$48;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 5251
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5254
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$49;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$49;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;ILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-string v1, "addAttachment"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    move v1, v8

    .line 5327
    goto/16 :goto_b

    :cond_f7
    move v0, v1

    .line 5212
    goto :goto_8e
.end method

.method private hasRecipientData(Landroid/net/Uri;)Z
    .registers 6
    .parameter "uri"

    .prologue
    .line 6770
    const/4 v1, 0x0

    .line 6773
    .local v1, result:Z
    if-nez p1, :cond_5

    .line 6774
    const/4 v1, 0x0

    .line 6783
    :cond_4
    :goto_4
    return v1

    .line 6775
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_12

    .line 6776
    const/4 v1, 0x0

    goto :goto_4

    .line 6777
    :cond_12
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_19} :catch_1e

    move-result v2

    if-nez v2, :cond_4

    .line 6778
    const/4 v1, 0x1

    goto :goto_4

    .line 6779
    :catch_1e
    move-exception v0

    .line 6780
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private haveEmailContact(Ljava/lang/String;)Z
    .registers 13
    .parameter "emailAddress"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1628
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/String;

    const-string v5, "display_name"

    aput-object v5, v3, v9

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1634
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3c

    .line 1636
    :cond_23
    :try_start_23
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1637
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1638
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3e

    move-result v0

    if-nez v0, :cond_23

    .line 1643
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1646
    .end local v8           #name:Ljava/lang/String;
    :goto_38
    return v0

    .line 1643
    :cond_39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3c
    move v0, v9

    .line 1646
    goto :goto_38

    .line 1643
    :catchall_3e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private hideMessageList(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 7854
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setParentTop(Landroid/view/View;Z)V

    .line 7855
    return-void
.end method

.method private hideOrShowTopPanel()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2422
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_d
    const/4 v0, 0x1

    .line 2423
    .local v0, anySubViewsVisible:Z
    :goto_e
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideOrShowTopPanel(),anySubViewsVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_30

    :goto_2a
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2426
    return-void

    .end local v0           #anySubViewsVisible:Z
    :cond_2e
    move v0, v1

    .line 2422
    goto :goto_e

    .line 2425
    .restart local v0       #anySubViewsVisible:Z
    :cond_30
    const/16 v1, 0x8

    goto :goto_2a
.end method

.method private hideRecipientEditor(Z)V
    .registers 6
    .parameter "toFieldHide"

    .prologue
    const/16 v3, 0x8

    .line 3309
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideRecipientEditor(),toFieldHide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    if-eqz p1, :cond_40

    .line 3312
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_40

    .line 3313
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3315
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_40

    .line 3316
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 3317
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipients([Ljava/lang/String;)V

    .line 3318
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 3319
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 3323
    :cond_40
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideOrShowTopPanel()V

    .line 3324
    return-void
.end method

.method private hideSip()V
    .registers 2

    .prologue
    .line 7505
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->hideSip()V

    .line 7506
    return-void
.end method

.method public static init()V
    .registers 0

    .prologue
    .line 9173
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6650
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "initActivityState()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 6655
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->isNeedCreateThread(Landroid/content/Intent;)Z

    move-result v2

    .line 6659
    if-eqz p1, :cond_3d

    .line 6660
    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6661
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v5, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v1, v0, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6663
    const-string v0, "exit_on_sent"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    .line 6664
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->readStateFromBundle(Landroid/os/Bundle;)V

    .line 6665
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->loadToButtonState(Landroid/os/Bundle;)V

    .line 6667
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initActivityState(),has bundle"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 6758
    :goto_3c
    return-void

    .line 6673
    :cond_3d
    const-string v0, "thread_id"

    invoke-virtual {p2, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 6674
    cmp-long v0, v3, v7

    if-lez v0, :cond_9b

    .line 6675
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v4, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6747
    :cond_50
    :goto_50
    const-string v0, "exit_on_sent"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    .line 6748
    const-string v0, "sms_body"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6749
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    :cond_7c
    move-object v0, v1

    .line 6753
    :cond_7d
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 6755
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v1, "subject"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 6757
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initActivityState()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 6677
    :cond_9b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 6682
    if-eqz v3, :cond_110

    .line 6683
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 6686
    :goto_a5
    if-eqz v0, :cond_10e

    const-string v4, "smsto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 6688
    const-string v0, "sendto"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6716
    :goto_b5
    if-eqz v0, :cond_c4

    .line 6717
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v0, v5, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6718
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showInvalidRecipientsPopup(Ljava/util/ArrayList;)V

    goto :goto_50

    .line 6719
    :cond_c4
    if-eqz v3, :cond_e8

    .line 6721
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v3, v5, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6724
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hasRecipientData(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_50

    .line 6732
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto/16 :goto_50

    .line 6737
    :cond_e8
    const-string v0, "address"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6738
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_103

    .line 6739
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v5, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v2, v0, v5, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_50

    .line 6742
    :cond_103
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversation(Lcom/android/mms/data/Conversation;)V

    goto/16 :goto_50

    :cond_10e
    move-object v0, v1

    goto :goto_b5

    :cond_110
    move-object v0, v1

    goto :goto_a5
.end method

.method private initFocus()V
    .registers 3

    .prologue
    .line 6787
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initFocus()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6789
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    if-nez v0, :cond_c

    .line 6817
    :cond_b
    :goto_b
    return-void

    .line 6796
    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_40

    .line 6801
    :cond_3a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto :goto_b

    .line 6802
    :cond_40
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6807
    :cond_6e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto :goto_b
.end method

.method private initMessageList()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 6283
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initMessageList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6285
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_e

    .line 6309
    :goto_d
    return-void

    .line 6289
    :cond_e
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6290
    if-nez v0, :cond_52

    move-object v5, v2

    .line 6295
    :goto_1b
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 6296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 6297
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 6298
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6299
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 6300
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 6302
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_6f

    .line 6303
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_d

    .line 6290
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    goto :goto_1b

    .line 6305
    :cond_6f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 6306
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 6307
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_d
.end method

.method private initRecipientsEditor()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1904
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initRecipientsEditor()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2092
    :goto_12
    return-void

    .line 1912
    :cond_13
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1913
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 1915
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2b

    .line 1916
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080041

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    .line 1919
    :cond_2b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-nez v0, :cond_5d

    .line 1920
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 1922
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setBackgroundResource(I)V

    .line 1923
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setTextColor(I)V

    .line 1924
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setCursorColor(I)V

    .line 1925
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->setComposer(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 1926
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1930
    :cond_5d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080042

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1931
    if-eqz v0, :cond_8c

    .line 1932
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButtonLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    .line 1933
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    const v2, 0x7f0800d8

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ToButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1934
    const-string v2, "uk"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 1935
    const/high16 v2, 0x4160

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1940
    :cond_8c
    :goto_8c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 1943
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_a5

    .line 1944
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 1953
    :cond_a5
    :goto_a5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1954
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 1955
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    if-eqz v0, :cond_b8

    .line 1956
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MessageContactHeader;->setVisibility(I)V

    .line 1960
    :cond_b8
    new-instance v0, Lcom/android/mms/ui/RecipientsAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    .line 1961
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1962
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1964
    invoke-direct {p0, v1, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    .line 1965
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-nez v0, :cond_d9

    .line 1966
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByString(Ljava/lang/String;)V

    .line 1968
    :cond_d9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    .line 1970
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    .line 1971
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/RecipientsEditor;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1974
    new-array v0, v5, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xbb8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v4

    .line 1977
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V

    .line 1980
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v1, 0x2000005

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 1983
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setSoundEffect(I)V

    .line 1985
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$15;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$15;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2011
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$16;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$16;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2063
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$17;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$17;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2076
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const v1, 0x7f090214

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setHint(I)V

    .line 2078
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    .line 2079
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2080
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$18;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$18;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2091
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12

    .line 1937
    :cond_14d
    const/high16 v2, 0x4180

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_8c

    .line 1948
    :cond_154
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    if-eqz v0, :cond_a5

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    if-nez v0, :cond_a5

    .line 1949
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonLayout:Lcom/android/mms/ui/ToButtonLayout;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    goto/16 :goto_a5
.end method

.method private initResourceLayout()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2485
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 2488
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_107

    .line 2491
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideRecipientEditor(Z)V

    .line 2492
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V

    .line 2502
    :goto_1d
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 2504
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    .line 2508
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 2509
    iget v0, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v0, v1, :cond_10c

    move v0, v1

    :goto_30
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    .line 2510
    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_10f

    move v0, v1

    :goto_38
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    .line 2511
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyboardStateChanged(Z)V

    .line 2512
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_8c

    .line 2514
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    if-eqz v0, :cond_112

    .line 2515
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v3, 0x7f090041

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    .line 2521
    :goto_4f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 2522
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    .line 2528
    :goto_5e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v0

    if-ne v0, v1, :cond_123

    .line 2530
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    .line 2534
    :goto_78
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setMMSLayout(Z)V

    .line 2536
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    if-eqz v0, :cond_127

    .line 2537
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 2544
    :cond_8c
    :goto_8c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2545
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSignature()V

    .line 2548
    :cond_95
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 2550
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->createAttachmentList(Lcom/android/mms/model/SlideshowModel;)V

    .line 2551
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2554
    :cond_b7
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    .line 2556
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_132

    .line 2557
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2558
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 2565
    :goto_ce
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v0

    if-eqz v0, :cond_138

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-gtz v0, :cond_138

    .line 2570
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 2580
    :goto_df
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    .line 2582
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->checkCMASMessage()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 2584
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MmsRichContainer;->setVisibility(I)V

    .line 2585
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2586
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2587
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2589
    :cond_ff
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    return-void

    .line 2499
    :cond_107
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideRecipientEditor(Z)V

    goto/16 :goto_1d

    :cond_10c
    move v0, v2

    .line 2509
    goto/16 :goto_30

    :cond_10f
    move v0, v2

    .line 2510
    goto/16 :goto_38

    .line 2518
    :cond_112
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    const v3, 0x7f090042

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHintRes(I)V

    goto/16 :goto_4f

    .line 2524
    :cond_11c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_5e

    .line 2532
    :cond_123
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextOnTop:Z

    goto/16 :goto_78

    .line 2539
    :cond_127
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    goto/16 :goto_8c

    .line 2560
    :cond_132
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v7}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_ce

    .line 2576
    :cond_138
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto :goto_df
.end method

.method private initResourceRefs()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 5735
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initResourceRefs()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5737
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5738
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5739
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    .line 5742
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080039

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopLayout:Landroid/widget/LinearLayout;

    .line 5744
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08004e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 5745
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5746
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080048

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    .line 5747
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08003f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    .line 5750
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08004b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    .line 5752
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08004d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MmsRichContainer;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    .line 5753
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setTextColor(I)V

    .line 5754
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setCursorColor(I)V

    .line 5759
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanelBg:I

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 5760
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setBackgroundResource(I)V

    .line 5762
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setHandler(Landroid/os/Handler;)V

    .line 5763
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/MmsRichContainer;->setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5764
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->initContainer()V

    .line 5765
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5766
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    .line 5767
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 5769
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 5770
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setInputFilterComposeForSMS()V

    .line 5771
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "setInputFilterComposeForSMS!!!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5777
    :cond_c2
    :goto_c2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 5780
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$53;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$53;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5797
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 5798
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;

    .line 5804
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->LanguageSize(Ljava/lang/String;)I

    move-result v0

    .line 5806
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1af

    .line 5807
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4140

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 5821
    :goto_f5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 5822
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5823
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080040

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    .line 5824
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 5825
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08003a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5826
    if-eqz v0, :cond_124

    .line 5827
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageContactHeader;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    .line 5828
    :cond_124
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageContactHeader;->init()V

    .line 5830
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08004c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    .line 5832
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_201

    .line 5833
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5840
    :goto_141
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-nez v0, :cond_152

    .line 5841
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f080046

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    .line 5844
    :cond_152
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08003b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    .line 5846
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$54;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$54;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5874
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 5876
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 5877
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08003c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllText:Landroid/widget/TextView;

    .line 5880
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 5881
    const/16 v2, 0x2c

    .line 5882
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v3, 0x7f08004f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 5883
    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 5885
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 5887
    :cond_1a5
    return-void

    .line 5775
    :cond_1a6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorInputFilter:Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setEditTextCharMaxInputFilter(Landroid/text/InputFilter;)V

    goto/16 :goto_c2

    .line 5808
    :cond_1af
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1c7

    if-eq v0, v3, :cond_1c7

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1c7

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1c7

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1c7

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1c7

    const/16 v2, 0x22

    if-ne v0, v2, :cond_1d0

    .line 5809
    :cond_1c7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4150

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_f5

    .line 5810
    :cond_1d0
    const/4 v2, 0x7

    if-eq v0, v2, :cond_1ef

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1ef

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1ef

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1ef

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1ef

    const/16 v2, 0x14

    if-eq v0, v2, :cond_1ef

    const/16 v2, 0x16

    if-eq v0, v2, :cond_1ef

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_1f8

    .line 5812
    :cond_1ef
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4160

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_f5

    .line 5815
    :cond_1f8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    const/high16 v2, 0x4180

    invoke-virtual {v0, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    goto/16 :goto_f5

    .line 5835
    :cond_201
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5836
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v2, "Remove Attach Button!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_141
.end method

.method private initializeContactInfo()V
    .registers 4

    .prologue
    .line 7175
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 7177
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    .line 7178
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V

    .line 7182
    :goto_f
    return-void

    .line 7180
    :cond_10
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePresence(Lcom/android/mms/data/Contact;)V

    goto :goto_f
.end method

.method private insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7258
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v8

    .line 7259
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 7261
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 7264
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7267
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 7268
    sub-int v0, v1, v8

    .line 7269
    if-gez v0, :cond_21

    .line 7270
    const/4 v0, 0x0

    .line 7272
    :cond_21
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v3

    .line 7273
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    aget v5, v3, v5

    add-int/2addr v5, v0

    if-le v4, v5, :cond_39

    .line 7274
    const/4 v4, 0x0

    const/4 v5, 0x2

    aget v3, v3, v5

    add-int/2addr v0, v3

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 7280
    :cond_39
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7283
    const/4 v3, 0x0

    :try_start_3f
    invoke-virtual {v0, v2, v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 7284
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7285
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3f .. :try_end_4c} :catch_8b

    .line 7292
    const/4 v1, 0x0

    .line 7293
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 7295
    const/16 v4, 0x7d0

    if-le v3, v4, :cond_e3

    .line 7296
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 7297
    add-int/lit16 v1, v3, -0x7d0

    sub-int v5, v4, v1

    .line 7298
    if-gtz v5, :cond_90

    .line 7299
    const/4 v0, -0x7

    .line 7300
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7301
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    :cond_69
    :goto_69
    move-object v7, v1

    move v1, v0

    .line 7330
    :goto_6b
    const v2, 0x7f090199

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7335
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 7336
    const/4 v0, 0x0

    invoke-static {v7, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 7337
    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v2, 0x1

    if-le v0, v2, :cond_f4

    .line 7338
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V

    .line 7443
    :goto_8a
    return-void

    .line 7286
    :catch_8b
    move-exception v0

    .line 7287
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_8a

    .line 7304
    :cond_90
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7305
    if-nez v8, :cond_be

    .line 7306
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7307
    invoke-virtual {v0, v4, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7308
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7309
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7319
    :goto_ae
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v0

    .line 7320
    if-nez v0, :cond_69

    .line 7321
    const/4 v0, -0x7

    goto :goto_69

    .line 7311
    :cond_be
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7312
    add-int/2addr v5, v8

    invoke-virtual {v0, v8, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7313
    add-int/2addr v4, v8

    invoke-virtual {v0, v4, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7314
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7315
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7316
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_ae

    .line 7326
    :cond_e3
    if-nez p3, :cond_1f2

    .line 7327
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v1

    move-object v7, v0

    goto/16 :goto_6b

    .line 7345
    :cond_f4
    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7347
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    const/16 v2, 0x7d0

    if-lt v0, v2, :cond_113

    .line 7348
    const/16 v0, 0x7d0

    .line 7356
    :goto_102
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_10b

    .line 7357
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7361
    :cond_10b
    :try_start_10b
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_10e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10b .. :try_end_10e} :catch_11d

    .line 7442
    :goto_10e
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    goto/16 :goto_8a

    .line 7350
    :cond_113
    if-eqz v1, :cond_117

    move v0, v8

    .line 7351
    goto :goto_102

    .line 7353
    :cond_117
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    goto :goto_102

    .line 7362
    :catch_11d
    move-exception v0

    .line 7363
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 7364
    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_10e

    .line 7369
    :cond_125
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 7370
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7372
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7375
    const/4 v4, 0x0

    :try_start_137
    invoke-virtual {v2, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 7376
    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7377
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v0, v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_144
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_137 .. :try_end_144} :catch_1d2

    .line 7384
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v0

    .line 7385
    const/4 v1, 0x0

    aget v0, v0, v1

    .line 7386
    const/16 v1, 0x7d0

    .line 7387
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 7388
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v5

    if-lt v0, v5, :cond_1d8

    const/4 v0, 0x1

    .line 7390
    :goto_158
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-nez v5, :cond_1ef

    if-eqz v0, :cond_1ef

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v0

    if-nez v0, :cond_1ef

    .line 7391
    invoke-direct {p0, v2, v8, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->calculateMaxTextLength(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 7394
    :goto_16c
    if-le v4, v0, :cond_1db

    .line 7396
    sub-int v0, v4, v0

    sub-int v5, v3, v0

    .line 7397
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7399
    if-lez v8, :cond_181

    .line 7400
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7402
    :cond_181
    if-lez v5, :cond_18c

    .line 7403
    add-int v0, v8, v5

    invoke-virtual {v2, v8, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7405
    :cond_18c
    add-int v0, v8, v3

    if-ge v0, v4, :cond_199

    .line 7406
    add-int v0, v8, v3

    invoke-virtual {v2, v0, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7408
    :cond_199
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v0

    .line 7409
    if-nez v0, :cond_1a8

    .line 7410
    const/4 v0, -0x7

    .line 7416
    :cond_1a8
    add-int v2, v8, v5

    move-object v7, v1

    move v9, v2

    move v1, v0

    .line 7424
    :goto_1ad
    const v2, 0x7f090199

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7426
    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7428
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1c4

    .line 7429
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7434
    :cond_1c4
    :try_start_1c4
    invoke-virtual {p1, v9}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1c7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c4 .. :try_end_1c7} :catch_1c9

    goto/16 :goto_10e

    .line 7435
    :catch_1c9
    move-exception v0

    .line 7436
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 7437
    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_10e

    .line 7378
    :catch_1d2
    move-exception v0

    .line 7379
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_8a

    .line 7388
    :cond_1d8
    const/4 v0, 0x0

    goto/16 :goto_158

    .line 7418
    :cond_1db
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v1

    .line 7421
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    move-object v7, v2

    move v9, v0

    goto :goto_1ad

    :cond_1ef
    move v0, v1

    goto/16 :goto_16c

    :cond_1f2
    move-object v7, v0

    goto/16 :goto_6b
.end method

.method private isAttachSupportedType(Ljava/lang/String;)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 5409
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 5410
    const-string v0, "image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "video/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "text/x-vCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "text/x-vNote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "text/x-vtodo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 5416
    :cond_3e
    const/4 v0, 0x1

    .line 5419
    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method private isBottomPanelVisible()Z
    .registers 5

    .prologue
    .line 3344
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_26

    const/4 v0, 0x1

    .line 3346
    .local v0, result:Z
    :goto_d
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBottomPanelVisible(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    return v0

    .line 3344
    .end local v0           #result:Z
    :cond_26
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isComposerPanelVisible()Z
    .registers 5

    .prologue
    .line 3351
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_26

    const/4 v0, 0x1

    .line 3353
    .local v0, result:Z
    :goto_d
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isComposerPanelVisible(), return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3354
    return v0

    .line 3351
    .end local v0           #result:Z
    :cond_26
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isNeedCreateThread(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    .line 6760
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 6761
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 6762
    const/4 v0, 0x0

    .line 6765
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method private isNewCompose()Z
    .registers 2

    .prologue
    .line 8391
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    return v0
.end method

.method private isPreparedForSending()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6377
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    .line 6378
    .local v0, recipientCount:I
    const/4 v1, 0x0

    .line 6382
    .local v1, result:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 6383
    if-lez v0, :cond_47

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_47

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_2d

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-nez v4, :cond_2d

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v4

    if-eqz v4, :cond_47

    :cond_2d
    move v1, v2

    .line 6390
    :goto_2e
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreparedForSending(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6391
    return v1

    :cond_47
    move v1, v3

    .line 6383
    goto :goto_2e

    .line 6386
    :cond_49
    if-lez v0, :cond_63

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_63

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_61

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-eqz v4, :cond_63

    :cond_61
    move v1, v2

    :goto_62
    goto :goto_2e

    :cond_63
    move v1, v3

    goto :goto_62
.end method

.method private isPreparedForSendingButton()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6396
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    .line 6397
    .local v0, recipientCount:I
    const/4 v1, 0x0

    .line 6402
    .local v1, result:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSubjectSMS()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 6403
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_45

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_2b

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-nez v4, :cond_2b

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v4

    if-eqz v4, :cond_45

    :cond_2b
    move v1, v2

    .line 6410
    :goto_2c
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreparedForSendingButton(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6411
    return v1

    :cond_45
    move v1, v3

    .line 6403
    goto :goto_2c

    .line 6406
    :cond_47
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v4

    if-gt v0, v4, :cond_5f

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-nez v4, :cond_5d

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v4

    if-eqz v4, :cond_5f

    :cond_5d
    move v1, v2

    :goto_5e
    goto :goto_2c

    :cond_5f
    move v1, v3

    goto :goto_5e
.end method

.method private isRecipientCallable()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 3668
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3669
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-ne v2, v1, :cond_18

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private isSubjectEditorVisible()Z
    .registers 5

    .prologue
    .line 3335
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_26

    const/4 v0, 0x1

    .line 3338
    .local v0, result:Z
    :goto_d
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubjectEditorVisible(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3339
    return v0

    .line 3335
    .end local v0           #result:Z
    :cond_26
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isTemp(Lcom/android/mms/data/ContactList;)Z
    .registers 6
    .parameter "contactList"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1882
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1a

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_19
    return v0

    :cond_1a
    move v0, v2

    goto :goto_19
.end method

.method private isUnderLength(III)Z
    .registers 5
    .parameter "currentLength"
    .parameter "addingLength"
    .parameter "MaxLength"

    .prologue
    .line 7447
    add-int v0, p1, p2

    if-gt v0, p3, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private loadDraft()V
    .registers 3

    .prologue
    .line 6312
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6313
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "loadDraft() called with non-empty working message"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6323
    :goto_f
    return-void

    .line 6317
    :cond_10
    const-string v0, "Mms:app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6318
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "loadDraft: call WorkingMessage.loadDraft"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6321
    :cond_20
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v0, p0, v1}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 6322
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    goto :goto_f
.end method

.method private loadMessageContent()V
    .registers 3

    .prologue
    .line 2784
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "loadMessageContent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    .line 2786
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initializeContactInfo()V

    .line 2787
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendFailedNotification()V

    .line 2788
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    .line 2790
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2791
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSignature()V

    .line 2793
    :cond_1c
    return-void
.end method

.method private loadToButtonState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "bundle"

    .prologue
    .line 2812
    const-string v0, "toButtonRecipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    .line 2813
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadToButtonState toButtonRecipients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSavedToButtonRecipients:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    return-void
.end method

.method private noRecipientsInEditor()Z
    .registers 3

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->hasValidRecipient(Z)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveEmptyRecipient()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private onKeyboardStateChanged(Z)V
    .registers 5
    .parameter "isKeyboardOpen"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3120
    if-eqz p1, :cond_17

    .line 3121
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_d

    .line 3122
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setFocusableInTouchMode(Z)V

    .line 3124
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_16

    .line 3125
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3135
    :cond_16
    :goto_16
    return-void

    .line 3128
    :cond_17
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_20

    .line 3129
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setFocusable(Z)V

    .line 3131
    :cond_20
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_16

    .line 3132
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    goto :goto_16
.end method

.method private parseMultiPicker(Ljava/util/ArrayList;I)V
    .registers 12
    .parameter
    .parameter "reqCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 5043
    if-nez p1, :cond_4

    .line 5057
    :cond_3
    return-void

    .line 5045
    :cond_4
    const/4 v7, 0x0

    .line 5046
    .local v7, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5047
    .local v6, count:I
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I

    move-result v8

    .line 5048
    .local v8, importCount:I
    const/4 v7, 0x0

    :goto_e
    if-ge v7, v8, :cond_3

    .line 5049
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5051
    .local v1, attachUri:Landroid/net/Uri;
    const/16 v0, 0x1b

    if-eq p2, v0, :cond_22

    const/16 v0, 0x21

    if-ne p2, v0, :cond_2c

    .line 5052
    :cond_22
    const/4 v3, 0x1

    move-object v0, p0

    move v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    .line 5048
    :goto_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_2c
    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p2

    .line 5054
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    goto :goto_29
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 8815
    .line 8817
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v0

    packed-switch v0, :pswitch_data_106

    .line 8862
    :cond_8
    :goto_8
    return-void

    .line 8819
    :pswitch_9
    new-instance v0, Ljava/io/File;

    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8821
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0901bd

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 8823
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$77;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$77;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/io/File;Landroid/app/ProgressDialog;)V

    const-string v0, "pasteClipBoardData"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_8

    .line 8832
    :pswitch_36
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8834
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 8835
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_87

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-lez v1, :cond_87

    .line 8838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8840
    :cond_87
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 8841
    :cond_92
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_ea

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 8842
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_cd

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-lez v1, :cond_cd

    .line 8845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8847
    :cond_cd
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnderLength(III)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8849
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 8852
    :cond_ea
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 8856
    :pswitch_f5
    check-cast p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-virtual {p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v0

    .line 8857
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {p0, v1, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->insertText(Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 8817
    :pswitch_data_106
    .packed-switch 0x2
        :pswitch_36
        :pswitch_9
        :pswitch_f5
    .end packed-switch
.end method

.method private previewSlideshow()V
    .registers 5

    .prologue
    .line 7771
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 7772
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0901da

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 7774
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$67;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$67;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/ProgressDialog;)V

    const-string v0, "previewSlideshow"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 7782
    return-void
.end method

.method private recipientCount()I
    .registers 5

    .prologue
    .line 6415
    const/4 v0, 0x0

    .line 6421
    .local v0, recipientCount:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 6422
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v0

    .line 6427
    :goto_d
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipientCount(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6428
    return v0

    .line 6424
    :cond_26
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    goto :goto_d
.end method

.method private refreshCheckedList()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9141
    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-nez v5, :cond_b

    .line 9169
    :cond_a
    :goto_a
    return-void

    .line 9144
    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->backupCheckedList()V

    .line 9146
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 9149
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_31

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 9151
    :cond_1e
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 9152
    .local v2, msgId:J
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 9153
    .local v4, msgType:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->refreshChecked(JLjava/lang/String;)V

    .line 9154
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 9157
    .end local v2           #msgId:J
    .end local v4           #msgType:Ljava/lang/String;
    :cond_31
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->cleanDummyCheckedList()V

    .line 9159
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    .line 9160
    .local v1, checkedCount:I
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v5

    if-ne v1, v5, :cond_51

    .line 9161
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9165
    :goto_49
    if-lez v1, :cond_57

    .line 9166
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_a

    .line 9163
    :cond_51
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_49

    .line 9168
    :cond_57
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_a
.end method

.method private removeRecipientsListener()V
    .registers 1

    .prologue
    .line 7217
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 7218
    return-void
.end method

.method private requestClose()V
    .registers 3

    .prologue
    .line 8625
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "requestClose()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8628
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_10

    .line 8629
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 8630
    :cond_10
    return-void
.end method

.method private requestDrawPointerOnConverationList()V
    .registers 6

    .prologue
    .line 9291
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 9292
    .local v0, threadId:J
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestDrawPointerOnConverationList() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIsLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9294
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_31

    .line 9298
    :goto_30
    return-void

    .line 9297
    :cond_31
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/ConversationComposer;->requestDrawPointerOnConverationList(J)Z

    goto :goto_30
.end method

.method private requestFocusOnConverationList()V
    .registers 6

    .prologue
    .line 9280
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 9281
    .local v0, threadId:J
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocusOnConverationList() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mIsLandscape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9283
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_34

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    if-nez v2, :cond_35

    .line 9287
    :cond_34
    :goto_34
    return-void

    .line 9286
    :cond_35
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/ConversationComposer;->requsetFocusOnConversationList(J)Z

    goto :goto_34
.end method

.method private resetMessage()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 6550
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "resetMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6553
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 6556
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 6562
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6564
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 6565
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 6566
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    .line 6569
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideRecipientEditor(Z)V

    .line 6571
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setMMSLayout(Z)V

    .line 6572
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 6573
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    .line 6575
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 6576
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSignature()V

    .line 6580
    :cond_4b
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_93

    .line 6581
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 6582
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 6584
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 6590
    :goto_6a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 6593
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6596
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    if-eqz v0, :cond_83

    .line 6598
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->hideSoftInputFromWindow(Landroid/os/IBinder;I)V

    .line 6603
    :cond_83
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->recipienHasEmail()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 6604
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->createSlideshow()Lcom/android/mms/model/SlideshowModel;

    .line 6605
    :cond_90
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    .line 6606
    return-void

    .line 6586
    :cond_93
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto :goto_6a
.end method

.method private saveDraft(Z)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6326
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "saveDraft()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6332
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 6333
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "mWorkingMessage.isDiscarded()=true"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6373
    :cond_17
    :goto_17
    return v0

    .line 6338
    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6345
    :cond_3e
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingForSubActivity:Z

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-nez v1, :cond_52

    :cond_4a
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v1

    if-nez v1, :cond_72

    .line 6348
    :cond_52
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "saveDraft: not worth saving"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6351
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    if-nez v1, :cond_17

    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    if-nez v1, :cond_65

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    if-eqz v1, :cond_17

    .line 6352
    :cond_65
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "saveDraft: discard WorkingMessage and bail"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6353
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    goto :goto_17

    .line 6358
    :cond_72
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "saveDraft: call WorkingMessage.saveDraft"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6360
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)Z

    move-result v0

    .line 6362
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastForDraftSave:Z

    if-eqz v1, :cond_17

    .line 6365
    :try_start_83
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090056

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6367
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastForDraftSave:Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_93} :catch_94

    goto :goto_17

    .line 6368
    :catch_94
    move-exception v1

    .line 6369
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot make Toast. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17
.end method

.method private saveToButtonState(Landroid/os/Bundle;)V
    .registers 8
    .parameter "outState"

    .prologue
    .line 2817
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 2818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2819
    .local v0, buffer:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 2821
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    if-eqz v1, :cond_20

    .line 2822
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2824
    :cond_20
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2825
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2827
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2828
    .local v2, recipients:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 2829
    const-string v3, "toButtonRecipients"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    const-string v3, "Mms/ComposeMessageFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveToButtonState toButtonRecipients="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #contactList:Lcom/android/mms/data/ContactList;
    .end local v2           #recipients:Ljava/lang/String;
    :cond_5c
    return-void
.end method

.method private sendMessage(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6432
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage(),bCheckEcmMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 6435
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_35

    .line 6436
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 6438
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 6439
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromValidRecipients(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 6446
    :cond_35
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6448
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 6450
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "message sending is disabled"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6451
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09018c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6452
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 6547
    :goto_5f
    return-void

    .line 6488
    :cond_60
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 6489
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    .line 6492
    :cond_6c
    if-eqz p1, :cond_90

    .line 6494
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6495
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 6497
    :try_start_7a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_87
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7a .. :try_end_87} :catch_88

    goto :goto_5f

    .line 6501
    :catch_88
    move-exception v0

    .line 6503
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6508
    :cond_90
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    if-nez v0, :cond_b1

    .line 6511
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->removeRecipientsListener()V

    .line 6514
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_f4

    .line 6515
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 6521
    :goto_a5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->send()V

    .line 6522
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    .line 6523
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    .line 6524
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->addRecipientsListener()V

    .line 6527
    :cond_b1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_bc

    .line 6528
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6533
    :cond_bc
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    if-eqz v0, :cond_eb

    .line 6534
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage(),mExitOnSent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6536
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    if-nez v0, :cond_e1

    .line 6537
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 6541
    :cond_e1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6542
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 6546
    :cond_eb
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "sendMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5f

    .line 6517
    :cond_f4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iput v3, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    goto :goto_a5
.end method

.method public static setBundle(Landroid/os/Bundle;Z)V
    .registers 2
    .parameter "savedInstanceState"
    .parameter "isRestore"

    .prologue
    .line 2136
    sput-object p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    .line 2137
    sput-boolean p1, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    .line 2138
    return-void
.end method

.method private setConversation(Lcom/android/mms/data/Conversation;)V
    .registers 3
    .parameter "conv"

    .prologue
    .line 8634
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    .line 8635
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_9
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V

    .line 8636
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 8637
    return-void

    .line 8635
    :cond_12
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setEditingMode(Z)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 8397
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEditingMode(),isEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8399
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8400
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v2, 0x7f08004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 8401
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getSizeStringView()Landroid/widget/TextView;

    move-result-object v2

    .line 8404
    const/high16 v3, 0x42e6

    .line 8406
    const/high16 v4, 0x4180

    .line 8410
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 8411
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8413
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 8414
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8442
    :goto_48
    return-void

    .line 8417
    :cond_49
    if-eqz p1, :cond_64

    .line 8418
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8419
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 8421
    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 8423
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48

    .line 8425
    :cond_64
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 8427
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 8429
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48
.end method

.method private setFocusOnLastToButton()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 8292
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 8304
    :cond_9
    :goto_9
    return-void

    .line 8295
    :cond_a
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8296
    .local v1, lastKey:I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 8297
    .local v0, btn:Lcom/android/mms/ui/ToButton;
    if-eqz v0, :cond_9

    .line 8300
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    .line 8301
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8302
    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 8303
    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    goto :goto_9
.end method

.method private setFocusOnNextToButton()Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 8328
    const/4 v2, 0x0

    .line 8330
    .local v2, preToButton:Lcom/android/mms/ui/ToButton;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8331
    .local v1, id:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    .line 8333
    .local v3, toButton:Lcom/android/mms/ui/ToButton;
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 8334
    iput-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    .line 8335
    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8336
    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 8337
    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    .line 8339
    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8340
    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    move v4, v5

    .line 8347
    .end local v1           #id:I
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :goto_43
    return v4

    .line 8344
    .restart local v1       #id:I
    .restart local v3       #toButton:Lcom/android/mms/ui/ToButton;
    :cond_44
    move-object v2, v3

    goto :goto_d

    .end local v1           #id:I
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_46
    move v4, v6

    .line 8347
    goto :goto_43
.end method

.method private setFocusOnPreToButton()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 8307
    const/4 v2, 0x0

    .line 8309
    .local v2, preToButton:Lcom/android/mms/ui/ToButton;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8310
    .local v1, id:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    .line 8312
    .local v3, toButton:Lcom/android/mms/ui/ToButton;
    if-eqz v2, :cond_43

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 8313
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mKeepToButtonVisible:Z

    .line 8314
    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8315
    invoke-virtual {v2, v6}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 8316
    invoke-virtual {v2}, Lcom/android/mms/ui/ToButton;->requestFocus()Z

    .line 8318
    invoke-virtual {v3, v7}, Lcom/android/mms/ui/ToButton;->setFocusable(Z)V

    .line 8319
    invoke-virtual {v3, v7}, Lcom/android/mms/ui/ToButton;->setFocusableInTouchMode(Z)V

    .line 8325
    .end local v1           #id:I
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_42
    return-void

    .line 8323
    .restart local v1       #id:I
    .restart local v3       #toButton:Lcom/android/mms/ui/ToButton;
    :cond_43
    move-object v2, v3

    goto :goto_d
.end method

.method private setInputFilterComposeForSMS()V
    .registers 4

    .prologue
    .line 5929
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$55;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$55;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 5996
    .local v0, filter:Landroid/text/InputFilter;
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    .line 5997
    .local v1, filterArray:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 5999
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 6000
    return-void
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 8557
    monitor-enter p0

    :try_start_1
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8558
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 8559
    monitor-exit p0

    return-void

    .line 8557
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setMessageListBackground()V
    .registers 3

    .prologue
    .line 8869
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v1, -0xd4d2d0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setBackgroundColor(I)V

    .line 8870
    return-void
.end method

.method private setParentTop(Landroid/view/View;Z)V
    .registers 9
    .parameter "v"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/16 v4, 0xa

    .line 7858
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7862
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v3

    aget v3, v3, v4

    if-ne v3, v5, :cond_16

    const/4 v0, 0x1

    .line 7863
    .local v0, isParentTop:Z
    :goto_13
    if-ne v0, p2, :cond_18

    .line 7872
    :goto_15
    return-void

    .end local v0           #isParentTop:Z
    :cond_16
    move v0, v2

    .line 7862
    goto :goto_13

    .line 7866
    .restart local v0       #isParentTop:Z
    :cond_18
    if-eqz p2, :cond_21

    .line 7867
    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7871
    :goto_1d
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_15

    .line 7869
    :cond_21
    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1d
.end method

.method private setRecipientsOnRecipientsEditor()V
    .registers 7

    .prologue
    .line 8351
    const/4 v2, 0x0

    .line 8353
    .local v2, recipients:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-lez v4, :cond_36

    .line 8354
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 8356
    const/4 v0, 0x0

    .line 8357
    .local v0, i:I
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ToButton;

    .line 8358
    .local v3, toButton:Lcom/android/mms/ui/ToButton;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v0

    .line 8359
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 8363
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #toButton:Lcom/android/mms/ui/ToButton;
    :cond_36
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v4, v2}, Lcom/android/mms/ui/RecipientsEditor;->setRecipients([Ljava/lang/String;)V

    .line 8364
    return-void
.end method

.method private setSendButtonText(Z)V
    .registers 5
    .parameter

    .prologue
    .line 3436
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSendButtonText(),isMms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3438
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    .line 3439
    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 3441
    return-void
.end method

.method private setSignature()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 9460
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 9461
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v8, "pref_key_enable_signature"

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 9463
    .local v5, signature_is_on:Z
    iget-boolean v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    if-eqz v8, :cond_13

    .line 9492
    :cond_12
    :goto_12
    return-void

    .line 9467
    :cond_13
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSignature()I

    move-result v4

    .line 9468
    .local v4, signature_already_set:I
    const-string v8, "pref_key_signature_text"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9469
    .local v6, signature_text:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    if-lez v8, :cond_47

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 9471
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v10}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    goto :goto_12

    .line 9476
    :cond_47
    if-eqz v5, :cond_12

    if-nez v4, :cond_12

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 9477
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 9479
    .local v0, before:Landroid/text/Editable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9480
    .local v1, initials:Ljava/lang/StringBuilder;
    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9481
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9482
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 9483
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    .line 9484
    .local v7, text:Landroid/text/Editable;
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v2, v8, -0x1

    .line 9485
    .local v2, length:I
    if-gez v2, :cond_90

    .line 9486
    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v2

    .line 9487
    :cond_90
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {p0, v7, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->cropSelectionIndex(Ljava/lang/CharSequence;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 9488
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v10}, Lcom/android/mms/data/WorkingMessage;->setSignature(I)V

    .line 9490
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v9

    invoke-virtual {v8, v9, v7}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    goto/16 :goto_12
.end method

.method private setSlideDuration(II)V
    .registers 7
    .parameter "slideIndex"
    .parameter "duration"

    .prologue
    .line 4081
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 4082
    .local v0, model:Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_14

    .line 4083
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v2

    .line 4084
    .local v2, slideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p1, :cond_15

    .line 4093
    .end local v2           #slideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_14
    :goto_14
    return-void

    .line 4087
    .restart local v2       #slideList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    :cond_15
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 4088
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v1, :cond_14

    .line 4089
    invoke-virtual {v1, p2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    goto :goto_14
.end method

.method private setTextFieldColor(I)V
    .registers 4
    .parameter

    .prologue
    .line 9403
    iput p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextFieldColor:I

    .line 9405
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextFieldColor:I

    if-nez v0, :cond_21

    .line 9406
    const v0, 0x7f02011e

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    .line 9407
    const v0, 0x7f0200ce

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanelBg:I

    .line 9408
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    .line 9409
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    .line 9416
    :goto_20
    return-void

    .line 9411
    :cond_21
    const v0, 0x7f02011f

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    .line 9412
    const v0, 0x7f0200cf

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanelBg:I

    .line 9413
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    .line 9414
    const/high16 v0, -0x100

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    goto :goto_20
.end method

.method private showAddAttachmentDialog(ZI)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4314
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    .line 4315
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090180

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4316
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4347
    :cond_20
    :goto_20
    return-void

    .line 4320
    :cond_21
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_20

    .line 4323
    new-instance v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v4, p1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;IZI)V

    .line 4326
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4328
    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4329
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$36;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$36;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;Z)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4338
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    .line 4339
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$37;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$37;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4345
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_20
.end method

.method private showAddtextDialog()V
    .registers 4

    .prologue
    .line 4414
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4415
    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4417
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    if-nez v1, :cond_1a

    .line 4418
    new-instance v1, Lcom/android/mms/ui/AddTextSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/AddTextSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    .line 4420
    :cond_1a
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$38;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$38;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4427
    return-void
.end method

.method private showAttachListPanel()V
    .registers 3

    .prologue
    .line 4836
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "showAttachListPanel()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4838
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_28

    .line 4839
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_29

    .line 4841
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4845
    :goto_25
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    .line 4847
    :cond_28
    return-void

    .line 4843
    :cond_29
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_25
.end method

.method private showChooseContactDialog()V
    .registers 5

    .prologue
    .line 4431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4432
    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4434
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    if-nez v1, :cond_1e

    .line 4435
    new-instance v1, Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/ChooseContactSelectorAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    .line 4438
    :cond_1e
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mChooseContactSelectorAdapter:Lcom/android/mms/ui/ChooseContactSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$39;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$39;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4445
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4446
    return-void
.end method

.method private showDupplicatedRecipientToast()V
    .registers 4

    .prologue
    .line 8038
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090191

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8040
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    if-nez v1, :cond_1c

    .line 8041
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    .line 8045
    :goto_16
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8048
    return-void

    .line 8043
    :cond_1c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16
.end method

.method private showEditTextMaxCharExceedToast(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 8052
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    if-eqz v0, :cond_15

    .line 8053
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 8054
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 8059
    :goto_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8060
    return-void

    .line 8056
    :cond_15
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharExceedToast:Landroid/widget/Toast;

    goto :goto_f
.end method

.method private showInternationalSmsRoamGuardDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1361
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030035

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1363
    .local v1, roamGuardView:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1364
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1365
    const v2, 0x7f060012

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$10;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageFragment$10;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1370
    const v2, 0x7f09006a

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1371
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1372
    return-void
.end method

.method private showInvalidRecipientsPopup(Ljava/util/ArrayList;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v8, 0x7f0901a9

    const/4 v0, 0x0

    .line 9325
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_b

    .line 9364
    :cond_a
    :goto_a
    return-void

    .line 9328
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9330
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 9331
    const-string v3, "[,;]"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 9333
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    .line 9335
    array-length v4, v3

    move v1, v0

    :goto_21
    if-ge v1, v4, :cond_49

    aget-object v5, v3, v1

    .line 9336
    invoke-direct {p0, v5, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->CheckValidRecipient(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 9338
    const/4 v7, 0x2

    if-ne v6, v7, :cond_32

    .line 9339
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showDupplicatedRecipientToast()V

    .line 9335
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 9340
    :cond_32
    const/4 v7, 0x3

    if-ne v6, v7, :cond_44

    .line 9341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_40

    .line 9342
    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9344
    :cond_40
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 9345
    :cond_44
    if-nez v6, :cond_2f

    .line 9346
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 9350
    :cond_49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 9354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0901aa

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9357
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$82;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$82;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_a
.end method

.method private showLayoutSelectorDialog()V
    .registers 4

    .prologue
    .line 8513
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8514
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8515
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8517
    new-instance v1, Lcom/android/mms/ui/LayoutSelectorAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 8518
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$76;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$76;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8550
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 8554
    return-void
.end method

.method private showMaxRecipientToast()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 8032
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v0

    .line 8033
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090192

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8034
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8035
    return-void
.end method

.method private showSmileyDialog()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 7087
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_a5

    .line 7088
    sget-object v3, Lcom/android/mms/util/SmileyParser;->DEFAULT_SMILEY_RES_IDS:[I

    .line 7089
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 7090
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 7092
    array-length v8, v4

    .line 7094
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    .line 7095
    :goto_25
    if-ge v1, v8, :cond_5b

    move v0, v5

    .line 7099
    :goto_28
    if-ge v0, v1, :cond_ab

    .line 7100
    aget v9, v3, v1

    aget v10, v3, v0

    if-ne v9, v10, :cond_58

    move v0, v6

    .line 7105
    :goto_31
    if-nez v0, :cond_54

    .line 7106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7108
    const-string v9, "icon"

    aget v10, v3, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7109
    const-string v9, "name"

    aget-object v10, v4, v1

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7110
    const-string v9, "text"

    aget-object v10, v7, v1

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7112
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7095
    :cond_54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 7099
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 7116
    :cond_5b
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f030034

    new-array v4, v11, [Ljava/lang/String;

    const-string v7, "icon"

    aput-object v7, v4, v5

    const-string v5, "name"

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v7, "text"

    aput-object v7, v4, v5

    new-array v5, v11, [I

    fill-array-data v5, :array_ae

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 7122
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$58;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$58;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 7132
    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 7134
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7136
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0900ee

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7138
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7139
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$59;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$59;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/widget/SimpleAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7163
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    .line 7166
    :cond_a5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSmileyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 7167
    return-void

    :cond_ab
    move v0, v5

    goto :goto_31

    .line 7116
    nop

    :array_ae
    .array-data 0x4
        0xd0t 0x0t 0x8t 0x7ft
        0xd1t 0x0t 0x8t 0x7ft
        0xd2t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method private showSubjectEditor(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2329
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSubjectEditor(),show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_57

    .line 2334
    if-nez p1, :cond_21

    .line 2419
    :goto_20
    return-void

    .line 2338
    :cond_21
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v3, 0x7f080045

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 2340
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditorBg:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2341
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 2342
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mCursorColor:I

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorColor(I)V

    .line 2344
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const v3, 0x7f090038

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 2346
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2347
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mEditTextTouchedListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2350
    :cond_57
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_ef

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_5d
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2352
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$20;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ComposeMessageFragment$20;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2361
    if-eqz p1, :cond_f2

    .line 2362
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2368
    :goto_73
    if-nez p1, :cond_80

    .line 2369
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 2370
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 2381
    :cond_80
    :goto_80
    if-eqz p1, :cond_8b

    .line 2382
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2383
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkSubjectMargin()V

    .line 2387
    :cond_8b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const/high16 v3, 0x200

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2389
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 2391
    if-lez v0, :cond_a2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_a3

    :cond_a2
    move v0, v2

    .line 2395
    :cond_a3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_cf

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cf

    .line 2397
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2400
    :cond_cf
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2401
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_113

    :goto_de
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2402
    if-nez p1, :cond_116

    .line 2403
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2404
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 2418
    :goto_ea
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideOrShowTopPanel()V

    goto/16 :goto_20

    :cond_ef
    move-object v0, v1

    .line 2350
    goto/16 :goto_5d

    .line 2364
    :cond_f2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_73

    .line 2371
    :cond_fb
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_108

    .line 2372
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_80

    .line 2374
    :cond_108
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-eqz v0, :cond_80

    .line 2375
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    invoke-virtual {v0, v2, v2}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->toggleSoftInput(II)V

    goto/16 :goto_80

    .line 2401
    :cond_113
    const/16 v2, 0x8

    goto :goto_de

    .line 2414
    :cond_116
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2416
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    goto :goto_ea
.end method

.method private showToButtonMenuDialog(Lcom/android/mms/ui/ToButton;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 8479
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    if-ne v2, v0, :cond_7

    .line 8509
    :goto_6
    return-void

    .line 8482
    :cond_7
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z

    .line 8483
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->clearFocusAllToButtons()V

    .line 8485
    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 8486
    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8489
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/data/Contact;->IsPresentInContact(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 8490
    const-string v4, "%s (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8494
    :goto_35
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8495
    new-instance v3, Lcom/android/mms/ui/ToButtonMenuAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0}, Lcom/android/mms/ui/ToButtonMenuAdapter;-><init>(Landroid/content/Context;Z)V

    .line 8496
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;

    invoke-virtual {p1}, Lcom/android/mms/ui/ToButton;->getId()I

    move-result v4

    invoke-direct {v0, p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    .line 8498
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8499
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8501
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    .line 8502
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$75;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$75;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8508
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_6

    :cond_68
    move v0, v1

    move-object v1, v2

    goto :goto_35
.end method

.method private showToast()V
    .registers 4

    .prologue
    .line 5697
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_29

    .line 5700
    :cond_18
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f09017d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    .line 5702
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5704
    :cond_29
    return-void
.end method

.method private startActivityforAddMedia(IZ)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/16 v3, 0x33

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 4100
    if-eqz p2, :cond_8

    .line 4108
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 4109
    packed-switch p1, :pswitch_data_212

    .line 4310
    :cond_e
    :goto_e
    return-void

    .line 4111
    :pswitch_f
    const-string v1, "image/*"

    .line 4112
    if-eqz p2, :cond_25

    .line 4113
    const/16 v0, 0x29

    .line 4121
    :goto_15
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4122
    if-eqz v2, :cond_e

    .line 4123
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4124
    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 4115
    :cond_25
    const/16 v0, 0xa

    goto :goto_15

    .line 4129
    :pswitch_28
    if-eqz p2, :cond_43

    .line 4130
    const/16 v0, 0x2a

    .line 4134
    :goto_2c
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4135
    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4137
    const-string v2, "return-uri"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4138
    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 4132
    :cond_43
    const/16 v0, 0xb

    goto :goto_2c

    .line 4143
    :pswitch_46
    const-string v1, "video/*"

    .line 4144
    if-eqz p2, :cond_5c

    .line 4145
    const/16 v0, 0x2b

    .line 4153
    :goto_4c
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4154
    if-eqz v2, :cond_e

    .line 4155
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4156
    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_e

    .line 4147
    :cond_5c
    const/16 v0, 0xc

    goto :goto_4c

    .line 4161
    :pswitch_5f
    if-eqz p2, :cond_9c

    .line 4162
    const/16 v0, 0x2c

    .line 4166
    :goto_63
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    int-to-long v1, v1

    .line 4167
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_7d

    .line 4169
    if-nez p2, :cond_7d

    .line 4170
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v1

    int-to-long v1, v1

    .line 4173
    :cond_7d
    cmp-long v3, v1, v9

    if-lez v3, :cond_9f

    .line 4176
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4177
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4178
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4179
    const-string v1, "mms"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4180
    invoke-virtual {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 4164
    :cond_9c
    const/16 v0, 0xd

    goto :goto_63

    .line 4182
    :cond_9f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090046

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_e

    .line 4191
    :pswitch_b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4192
    const-string v2, "audio/*"

    .line 4193
    if-eqz p2, :cond_f8

    .line 4194
    const/16 v0, 0x2d

    .line 4199
    :goto_d6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4200
    if-eqz v3, :cond_e

    .line 4201
    const-string v4, "com.sec.android.app.myfiles"

    const-string v5, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4203
    const-string v4, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4204
    const-string v4, "FOLDERPATH"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4205
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4206
    invoke-virtual {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 4196
    :cond_f8
    const/16 v0, 0xe

    goto :goto_d6

    .line 4212
    :pswitch_fb
    if-eqz p2, :cond_140

    .line 4213
    const/16 v0, 0x2e

    .line 4218
    :goto_ff
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4220
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 4223
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v3

    int-to-long v3, v3

    .line 4224
    if-eqz v2, :cond_155

    .line 4226
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v5

    int-to-long v5, v5

    .line 4227
    invoke-virtual {v2, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    int-to-long v7, v2

    .line 4228
    if-eqz p2, :cond_14f

    .line 4229
    cmp-long v2, v7, v9

    if-lez v2, :cond_149

    .line 4230
    add-long v9, v5, v7

    cmp-long v2, v9, v3

    if-gez v2, :cond_143

    .line 4231
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    add-long v3, v5, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4247
    :goto_134
    const-string v2, "mime_type"

    const-string v3, "audio/amr"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4249
    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 4215
    :cond_140
    const/16 v0, 0xf

    goto :goto_ff

    .line 4234
    :cond_143
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_134

    .line 4238
    :cond_149
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_134

    .line 4242
    :cond_14f
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_134

    .line 4245
    :cond_155
    const-string v2, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_134

    .line 4255
    :pswitch_15b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4256
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4257
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 4261
    :pswitch_16e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4262
    const-string v1, "vnd.android.cursor.dir/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4264
    const/16 v1, 0x1a

    :try_start_17e
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_181
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17e .. :try_end_181} :catch_183

    goto/16 :goto_e

    .line 4265
    :catch_183
    move-exception v0

    .line 4266
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4267
    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4268
    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4269
    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4270
    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4271
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_e

    .line 4276
    :pswitch_1a9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4277
    const-string v1, "text/x-vnote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4278
    const/16 v1, 0x1b

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 4282
    :pswitch_1bc
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4283
    const-string v1, "text/x-vtodo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4284
    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 4289
    :pswitch_1cf
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4290
    const-string v1, "image_location"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4291
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4292
    const/16 v1, 0x24

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 4296
    :pswitch_1ed
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4297
    const-string v1, "app_name"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4298
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 4302
    :pswitch_200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4303
    const-string v1, "application/vnd.penmemo.drawingpad"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4304
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    .line 4109
    nop

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_f
        :pswitch_46
        :pswitch_b3
        :pswitch_28
        :pswitch_5f
        :pswitch_fb
        :pswitch_15b
        :pswitch_16e
        :pswitch_1a9
        :pswitch_1bc
        :pswitch_1cf
        :pswitch_1ed
        :pswitch_200
    .end packed-switch
.end method

.method private startDeleteAnimation([I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 8643
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDeleteAnimation(), delCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8645
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 8646
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const v2, 0x7f0901d1

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    .line 8647
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress shown with startDeleteAnimation()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8650
    :cond_3a
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteAnimation:Z

    .line 8651
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListView;->startDeleteMsgAnimation([I)V

    .line 8652
    return-void
.end method

.method private startMsgListQuery()V
    .registers 10

    .prologue
    const/16 v4, 0x2537

    .line 6263
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 6264
    .local v3, conversationUri:Landroid/net/Uri;
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery(),conversationUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6266
    if-nez v3, :cond_27

    .line 6267
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideMessageList(Z)V

    .line 6280
    :goto_26
    return-void

    .line 6272
    :cond_27
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->cancelOperation(I)V

    .line 6275
    :try_start_2c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "hidden=0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_3a} :catch_3b

    goto :goto_26

    .line 6277
    :catch_3b
    move-exception v8

    .line 6278
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_26
.end method

.method private startSendAnimation(Ljava/lang/Runnable;)V
    .registers 15
    .parameter

    .prologue
    .line 3523
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    .line 3525
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    .line 3528
    const/4 v3, 0x0

    .line 3529
    const/4 v9, 0x0

    .line 3530
    const/4 v2, 0x0

    .line 3531
    const/4 v4, 0x0

    .line 3532
    const/4 v1, 0x0

    .line 3533
    const/4 v0, 0x0

    .line 3552
    const/high16 v5, 0x4118

    iget v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 3553
    const/high16 v6, 0x41c8

    iget v7, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 3554
    const/high16 v7, 0x4190

    iget v8, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 3555
    const/high16 v8, 0x40a0

    iget v10, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 3558
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v11, Lcom/android/mms/ui/ComposeMessageFragment$30;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ComposeMessageFragment$30;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v10, v11}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3575
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    if-eqz v10, :cond_f2

    .line 3576
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3577
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3578
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v3, v1, v5

    .line 3579
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->lastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float v9, v1, v6

    .line 3580
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 3581
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v8

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 3582
    const/high16 v1, 0x3f80

    .line 3583
    const v0, 0x3e99999a

    move v10, v0

    move v11, v1

    move v12, v3

    .line 3586
    :goto_a9
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3589
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v12

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3592
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 3594
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3595
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3596
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3598
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 3599
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 3600
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 3602
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->sendAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3603
    return-void

    :cond_f2
    move v10, v0

    move v11, v1

    move v12, v3

    goto :goto_a9
.end method

.method private startSendAnimationPrepare(I)V
    .registers 8
    .parameter

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3480
    const/4 v1, 0x0

    .line 3481
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 3483
    const/high16 v4, 0x42e6

    .line 3484
    const/high16 v0, 0x4180

    .line 3486
    add-float/2addr v0, v4

    iget v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->displayDensity:F

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3490
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSendAnimationJpn()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3491
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3497
    :cond_25
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_47

    .line 3499
    const/4 v0, 0x2

    if-ne p1, v0, :cond_52

    .line 3500
    const/16 v0, 0x1f4

    .line 3502
    :goto_30
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$27;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$27;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    add-int/lit16 v2, v0, 0xc8

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3508
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$28;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$28;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v4, v0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3520
    :goto_46
    return-void

    .line 3514
    :cond_47
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$29;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$29;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_46

    :cond_52
    move v0, v1

    goto :goto_30
.end method

.method private threadSafeToast(Landroid/app/Activity;II)V
    .registers 5
    .parameter "activity"
    .parameter "resId"
    .parameter "length"

    .prologue
    .line 5910
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5911
    .local v0, message:Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 5912
    return-void
.end method

.method private threadSafeToast(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 7
    .parameter "activity"
    .parameter "message"
    .parameter "length"

    .prologue
    .line 5915
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getToastHandler()Landroid/os/Handler;

    move-result-object v1

    .line 5917
    .local v1, toastHandler:Landroid/os/Handler;
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5918
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5919
    invoke-static {p2, p3}, Lcom/android/mms/ui/ToastHandler;->createToastInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5921
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5922
    return-void
.end method

.method private toastConvertInfo(Z)V
    .registers 5
    .parameter "toMms"

    .prologue
    .line 967
    if-eqz p1, :cond_10

    const v0, 0x7f090052

    .line 969
    .local v0, resId:I
    :goto_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 970
    return-void

    .line 967
    .end local v0           #resId:I
    :cond_10
    const v0, 0x7f090053

    goto :goto_5
.end method

.method private updateAttachListHeight(Landroid/widget/ListView;)V
    .registers 4
    .parameter "attachList"

    .prologue
    .line 6029
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6030
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->calcAttachListHeight(Landroid/widget/ListView;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6031
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6032
    return-void
.end method

.method private updateCounter(Ljava/lang/CharSequence;III)I
    .registers 21
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 865
    const/4 v9, 0x0

    .line 866
    .local v9, result:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v8

    .line 867
    .local v8, params:[I
    if-nez v8, :cond_9

    move v10, v9

    .line 962
    .end local v9           #result:I
    .local v10, result:I
    :goto_8
    return v10

    .line 870
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v13

    if-eqz v13, :cond_129

    .line 872
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 880
    .local v5, length:I
    const/4 v13, 0x0

    aget v13, v8, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    .line 881
    const/4 v13, 0x2

    aget v13, v8, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    .line 884
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v15

    if-lt v13, v15, :cond_72

    const/4 v13, 0x1

    :goto_30
    invoke-virtual {v14, v13}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    .line 887
    const/16 v13, 0x7d0

    if-le v5, v13, :cond_e4

    .line 888
    add-int/lit16 v13, v5, -0x7d0

    sub-int v6, p4, v13

    .line 892
    .local v6, newCount:I
    if-gtz v6, :cond_74

    .line 893
    const/4 v9, -0x7

    .line 924
    .end local v6           #newCount:I
    :goto_3e
    const/4 v13, -0x7

    if-ne v9, v13, :cond_117

    .line 925
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/lit16 v13, v13, -0x7d0

    sub-int v6, p4, v13

    .line 928
    .restart local v6       #newCount:I
    :try_start_49
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    add-int v14, p2, v6

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_56
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_49 .. :try_end_56} :catch_f8

    .line 936
    .end local v6           #newCount:I
    :cond_56
    :goto_56
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v13

    if-eqz v13, :cond_65

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    if-gtz v13, :cond_65

    .line 937
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showToast()V

    .line 939
    :cond_65
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6d

    if-lez p3, :cond_70

    .line 940
    :cond_6d
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    :cond_70
    move v10, v9

    .line 942
    .end local v9           #result:I
    .restart local v10       #result:I
    goto :goto_8

    .line 884
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_72
    const/4 v13, 0x0

    goto :goto_30

    .line 895
    .restart local v6       #newCount:I
    :cond_74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    .local v7, newText:Ljava/lang/StringBuilder;
    if-nez p2, :cond_b0

    .line 897
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 898
    .local v4, inserted:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 899
    .local v3, eStr:Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :goto_98
    move-object/from16 p1, v7

    .line 910
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v14}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v12

    .line 911
    .local v12, tempRes:I
    if-nez v12, :cond_e1

    .line 912
    const/4 v9, -0x7

    goto :goto_3e

    .line 902
    .end local v3           #eStr:Ljava/lang/String;
    .end local v4           #inserted:Ljava/lang/String;
    .end local v12           #tempRes:I
    :cond_b0
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v13, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 903
    .local v11, sStr:Ljava/lang/String;
    add-int v13, p2, v6

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 904
    .restart local v4       #inserted:Ljava/lang/String;
    add-int v13, p2, p4

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 905
    .restart local v3       #eStr:Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_98

    .line 914
    .end local v11           #sStr:Ljava/lang/String;
    .restart local v12       #tempRes:I
    :cond_e1
    move v9, v12

    goto/16 :goto_3e

    .line 918
    .end local v3           #eStr:Ljava/lang/String;
    .end local v4           #inserted:Ljava/lang/String;
    .end local v6           #newCount:I
    .end local v7           #newText:Ljava/lang/StringBuilder;
    .end local v12           #tempRes:I
    :cond_e4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v14}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    move-result v9

    goto/16 :goto_3e

    .line 929
    .restart local v6       #newCount:I
    :catch_f8
    move-exception v2

    .line 930
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v13, "TAG"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IndexOutOfBoundsException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56

    .line 932
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #newCount:I
    :cond_117
    const/4 v13, -0x2

    if-ne v9, v13, :cond_56

    .line 933
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v13}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_56

    .line 951
    .end local v5           #length:I
    :cond_129
    const/4 v13, 0x0

    aget v13, v8, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    .line 954
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v15

    if-lt v13, v15, :cond_161

    const/4 v13, 0x1

    :goto_13f
    invoke-virtual {v14, v13}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    .line 957
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v14}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/android/mms/data/WorkingMessage;->updateText(ILjava/lang/CharSequence;)I

    .line 959
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_15b

    if-lez p3, :cond_15e

    .line 960
    :cond_15b
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    :cond_15e
    move v10, v9

    .line 962
    .end local v9           #result:I
    .restart local v10       #result:I
    goto/16 :goto_8

    .line 954
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_161
    const/4 v13, 0x0

    goto :goto_13f
.end method

.method private updateEditorSize()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8378
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-nez v1, :cond_6

    .line 8386
    :goto_5
    return-void

    .line 8381
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v1

    if-lez v1, :cond_32

    :cond_2e
    :goto_2e
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setEditingMode(Z)V

    goto :goto_5

    :cond_32
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private updateEditorSize(Z)V
    .registers 3
    .parameter "extend"

    .prologue
    .line 8370
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-nez v0, :cond_5

    .line 8374
    :goto_4
    return-void

    .line 8373
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setEditingMode(Z)V

    goto :goto_4
.end method

.method private updatePresence(Lcom/android/mms/data/Contact;)V
    .registers 2
    .parameter "updated"

    .prologue
    .line 7171
    return-void
.end method

.method private updateSendButtonState()V
    .registers 5

    .prologue
    .line 6609
    const/4 v0, 0x0

    .line 6611
    .local v0, enable:Z
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSendingButton()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 6612
    const/4 v0, 0x1

    .line 6613
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_13

    .line 6614
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize(Z)V

    .line 6617
    :cond_13
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSendButtonText(Z)V

    .line 6618
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 6620
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6622
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 6623
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSendButtonState(),enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6624
    return-void
.end method

.method private updateSendFailedNotification()V
    .registers 6

    .prologue
    .line 2796
    const-string v2, "Mms/ComposeMessageFragment"

    const-string v3, "updateSendFailedNotification()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2799
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_14

    .line 2809
    :goto_13
    return-void

    .line 2804
    :cond_14
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$21;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$21;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;J)V

    const-string v4, "updateSendFailedNotification"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_13
.end method


# virtual methods
.method public alertInvalidRecipientsPopup(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_2c

    .line 1420
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1421
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1422
    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1423
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1424
    const v1, 0x7f09010f

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$11;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$11;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    .line 1434
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2c
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1435
    return-void
.end method

.method public alertInvalidRecipientsPopup(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "invalidRecipients"

    .prologue
    .line 1438
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1440
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1441
    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1442
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1443
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/ComposeMessageFragment$InvalidRecipientsListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1444
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1445
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 3247
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$22;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    .line 3253
    return-void
.end method

.method public final cropSelectionIndex(Ljava/lang/CharSequence;I)I
    .registers 4
    .parameter "text"
    .parameter "index"

    .prologue
    .line 9495
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_8

    if-gez p2, :cond_c

    .line 9496
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 9498
    :cond_c
    return p2
.end method

.method public findAvailableViewToFocus()V
    .registers 2

    .prologue
    .line 9222
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 9223
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 9228
    :cond_11
    :goto_11
    return-void

    .line 9224
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    .line 9225
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_11

    .line 9226
    :cond_24
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 9227
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_11
.end method

.method public getConversationThreadId()J
    .registers 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_7

    .line 804
    const-wide/16 v0, -0x1

    .line 806
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    goto :goto_6
.end method

.method public getMessageCalculateParam(Ljava/lang/CharSequence;)[I
    .registers 4
    .parameter

    .prologue
    .line 7818
    const/4 v0, 0x0

    .line 7840
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmailAndSegmentedSms()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 7841
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "IS41 Email and Segmented SMS : getMessageCalculateParam"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7842
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getMaxEmailLen()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/telephony/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    .line 7848
    :cond_19
    return-object v0
.end method

.method public getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 5335
    const-string v6, ""

    .line 5337
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 5338
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 5340
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5345
    if-eqz v7, :cond_81

    :try_start_2a
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_81

    .line 5346
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5347
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5349
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_2a .. :try_end_55} :catchall_11f

    move-object v1, v7

    move-object v0, v6

    .line 5382
    :goto_57
    if-eqz v1, :cond_5c

    .line 5383
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5390
    :cond_5c
    :goto_5c
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    .line 5391
    invoke-static {v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5392
    const-string v3, ""

    .line 5394
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 5397
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 5398
    if-ltz v3, :cond_137

    .line 5399
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5402
    :goto_7a
    invoke-virtual {v2, v0}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5403
    if-nez v0, :cond_80

    .line 5405
    :cond_80
    return-object v0

    .line 5351
    :cond_81
    if-eqz v7, :cond_86

    .line 5352
    :try_start_83
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5355
    :cond_86
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5359
    if-eqz v7, :cond_d0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_d0

    .line 5360
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5361
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5363
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    move-object v0, v6

    goto :goto_57

    .line 5365
    :cond_d0
    if-eqz v7, :cond_d5

    .line 5366
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5369
    :cond_d5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ee
    .catchall {:try_start_83 .. :try_end_ee} :catchall_11f

    move-result-object v1

    .line 5373
    if-eqz v1, :cond_11c

    :try_start_f1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_11c

    .line 5374
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5375
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5377
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The actual path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_f1 .. :try_end_11c} :catchall_135

    :cond_11c
    move-object v0, v6

    goto/16 :goto_57

    .line 5382
    :catchall_11f
    move-exception v0

    move-object v1, v7

    :goto_121
    if-eqz v1, :cond_126

    .line 5383
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_126
    throw v0

    .line 5386
    :cond_127
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 5387
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5c

    .line 5382
    :catchall_135
    move-exception v0

    goto :goto_121

    :cond_137
    move-object v0, v1

    goto/16 :goto_7a

    :cond_13a
    move-object v0, v6

    goto/16 :goto_5c
.end method

.method public getRemoveComoposer()Z
    .registers 3

    .prologue
    .line 9510
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "getRemoveComoposer()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9511
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveComposer:Z

    return v0
.end method

.method public declared-synchronized getState()I
    .registers 6

    .prologue
    .line 8590
    monitor-enter p0

    const/4 v0, -0x1

    .line 8591
    .local v0, result:I
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_24

    .line 8592
    const/4 v0, 0x0

    .line 8606
    :goto_7
    packed-switch v0, :pswitch_data_6e

    .line 8617
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_5a

    .line 8620
    :goto_22
    monitor-exit p0

    return v0

    .line 8594
    :cond_24
    :try_start_24
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    if-eqz v1, :cond_2a

    .line 8595
    const/4 v0, 0x0

    goto :goto_7

    .line 8596
    :cond_2a
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_38

    .line 8597
    const/4 v0, 0x0

    goto :goto_7

    .line 8598
    :cond_38
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-gtz v1, :cond_42

    .line 8599
    const/4 v0, 0x0

    goto :goto_7

    .line 8600
    :cond_42
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_50

    .line 8601
    const/4 v0, 0x0

    goto :goto_7

    .line 8603
    :cond_50
    const/4 v0, 0x1

    goto :goto_7

    .line 8608
    :pswitch_52
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getState(),STATE_NONE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_24 .. :try_end_59} :catchall_5a

    goto :goto_22

    .line 8590
    :catchall_5a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 8611
    :pswitch_5d
    :try_start_5d
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getState(),STATE_NOCONV"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 8614
    :pswitch_65
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "getState(),STATE_HASCONV"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_5a

    goto :goto_22

    .line 8606
    nop

    :pswitch_data_6e
    .packed-switch -0x1
        :pswitch_52
        :pswitch_5d
        :pswitch_65
    .end packed-switch
.end method

.method public handleCheckbox(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .registers 11
    .parameter "msgListItem"
    .parameter "msgItem"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 9109
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    if-eqz v2, :cond_2d

    .line 9110
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-wide v3, p2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v5, p2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->toggleCheckBox(JLjava/lang/String;)Z

    move-result v0

    .line 9111
    .local v0, checked:Z
    invoke-virtual {p1, v6, v0}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    .line 9113
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v1

    .line 9114
    .local v1, checkedCount:I
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_2e

    .line 9115
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9119
    :goto_26
    if-lez v1, :cond_34

    .line 9120
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 9126
    .end local v0           #checked:Z
    .end local v1           #checkedCount:I
    :cond_2d
    :goto_2d
    return-void

    .line 9117
    .restart local v0       #checked:Z
    .restart local v1       #checkedCount:I
    :cond_2e
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_26

    .line 9122
    :cond_34
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2d
.end method

.method public hideSipExplicit()V
    .registers 5

    .prologue
    .line 7513
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 7514
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_9

    .line 7519
    :goto_8
    return-void

    .line 7517
    :cond_9
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideSipExplicit() view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7518
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->hideSoftInputFromWindow(Landroid/os/IBinder;I)V

    goto :goto_8
.end method

.method public initialize(Landroid/os/Bundle;J)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2429
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2434
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mFlagDeletedAll:Z

    .line 2436
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2438
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mScreenWidth:I

    .line 2441
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 2442
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setHandler(Landroid/os/Handler;)V

    .line 2445
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2447
    const-string v0, "Mms:app"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2448
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recipients = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    :cond_73
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->undeliveredMessageDialog(J)V

    .line 2457
    :cond_87
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 2460
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initMessageList()V

    .line 2469
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleSendIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 2470
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->handleForwardedMessage()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 2471
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsForwardedMessage:Z

    .line 2475
    :goto_a3
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    .line 2479
    :goto_a5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initResourceLayout()V

    .line 2481
    return-void

    .line 2473
    :cond_a9
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->loadDraft()V

    goto :goto_a3

    .line 2477
    :cond_ad
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNeedToAnimation:Z

    goto :goto_a5
.end method

.method public isBodyFocused()Z
    .registers 2

    .prologue
    .line 9654
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isComposerClosed()Z
    .registers 2

    .prologue
    .line 9658
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    return v0
.end method

.method public isDeleteMode()Z
    .registers 2

    .prologue
    .line 8731
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public isMms()Z
    .registers 2

    .prologue
    .line 9646
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_b

    .line 9647
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 9650
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isRecipientsEditorVisible()Z
    .registers 3

    .prologue
    .line 3327
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 3331
    .local v0, result:Z
    :goto_d
    return v0

    .line 3327
    .end local v0           #result:Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isReplyAllowedForThread()Z
    .registers 8

    .prologue
    .line 1407
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    .line 1409
    .local v3, isMms:Z
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v6, :cond_20

    .line 1410
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    .line 1412
    .local v1, dests:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    if-ge v2, v4, :cond_20

    aget-object v5, v0, v2

    .line 1413
    .local v5, number:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v6

    .line 1416
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dests:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #number:Ljava/lang/String;
    :goto_1f
    return v6

    :cond_20
    const/4 v6, 0x0

    goto :goto_1f
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2180
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onActivityCreated() savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2183
    if-eqz p1, :cond_25

    .line 2184
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "savedInstanceState exists"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    :cond_25
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    if-eqz v0, :cond_30

    .line 2190
    sget-object p1, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    .line 2191
    sput-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    .line 2192
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    .line 2197
    :cond_30
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    .line 2199
    new-instance v0, Lcom/android/mms/ui/GreekInputHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/GreekInputHandler;-><init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    .line 2207
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    .line 2208
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 2210
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setTextFieldColor(I)V

    .line 2211
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleFontSize(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBubbleFontSize:F

    .line 2214
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initResourceRefs()V

    .line 2216
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 2217
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    .line 2219
    new-instance v0, Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/mms/ui/GreekInputHandler;-><init>(Landroid/app/Activity;Lcom/android/mms/ui/ComposeMessageFragment;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    .line 2221
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->initialize(Landroid/os/Bundle;J)V

    .line 2243
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_94

    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_94

    .line 2244
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2251
    :cond_94
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    .line 2253
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ResponseAxT9Info"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2255
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityCreate()V

    .line 2257
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->animView:Landroid/view/View;

    .line 2260
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$19;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageFragment$19;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnDeleteMsgAnimation(Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;)V

    .line 2283
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2285
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onActivityCreated()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const v6, 0x7f0901bd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4449
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4452
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWaitingForSubActivity:Z

    .line 4456
    const/16 v0, 0x2a

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x29

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_3ea

    :cond_4e
    move v3, v4

    .line 4467
    :goto_4f
    const/16 v0, 0xb

    if-eq p1, v0, :cond_5d

    .line 4468
    if-nez p3, :cond_79

    .line 4469
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onActivityResult : data is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4831
    :cond_5c
    :goto_5c
    return-void

    .line 4472
    :cond_5d
    const/4 v0, -0x1

    if-eq p2, v0, :cond_79

    .line 4473
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 4477
    :cond_79
    packed-switch p1, :pswitch_data_3ee

    .line 4829
    :cond_7c
    :goto_7c
    :pswitch_7c
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 4479
    :pswitch_a9
    if-eqz p3, :cond_7c

    .line 4481
    const/4 v0, 0x0

    .line 4482
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_b6

    .line 4483
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4485
    :cond_b6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/android/mms/data/WorkingMessage;->load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    .line 4487
    if-eqz v1, :cond_7c

    .line 4488
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 4489
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2, v5}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 4490
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 4492
    if-eqz v0, :cond_db

    .line 4493
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4496
    :cond_db
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    .line 4497
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto :goto_7c

    .line 4508
    :pswitch_e2
    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4509
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4511
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 4514
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$40;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/mms/ui/ComposeMessageFragment$40;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V

    const-string v0, "addAttachment"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7c

    .line 4528
    :pswitch_10b
    if-eqz p3, :cond_5c

    .line 4532
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4534
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v1, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 4536
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$41;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/mms/ui/ComposeMessageFragment$41;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V

    const-string v0, "addAttachment"

    invoke-direct {v2, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7c

    .line 4551
    :pswitch_130
    if-eqz p3, :cond_5c

    .line 4554
    const/4 v1, 0x2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_7c

    .line 4561
    :pswitch_13d
    if-eqz p3, :cond_5c

    .line 4564
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object v0, p0

    .line 4565
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_7c

    .line 4572
    :pswitch_14d
    if-eqz p3, :cond_5c

    .line 4576
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V

    goto/16 :goto_7c

    .line 4580
    :pswitch_159
    const-string v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4581
    if-eqz v0, :cond_7c

    .line 4582
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(Z)V

    goto/16 :goto_7c

    .line 4588
    :pswitch_166
    if-eqz p3, :cond_5c

    .line 4591
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4592
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 4595
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 4596
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 4598
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 4599
    const-string v2, "vcard"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4600
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$42;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$42;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;Landroid/app/ProgressDialog;)V

    const-string v0, "addAttachment"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7c

    .line 4618
    :cond_1a5
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 4619
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 4620
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4621
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I

    move-result v9

    move v7, v4

    .line 4622
    :goto_1bc
    if-ge v7, v9, :cond_1d2

    .line 4623
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    move-object v2, v0

    .line 4624
    check-cast v2, Landroid/net/Uri;

    const/16 v6, 0x14

    move-object v1, p0

    move v3, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V

    .line 4622
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1bc

    .line 4626
    :cond_1d2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4627
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4628
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_7c

    .line 4629
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_7c

    .line 4638
    :pswitch_1ee
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4640
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4641
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4642
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_7c

    .line 4643
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_7c

    .line 4649
    :pswitch_215
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4652
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4653
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4654
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_7c

    .line 4655
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_7c

    .line 4661
    :pswitch_23c
    const-string v0, "uristrings"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->parseMultiPicker(Ljava/util/ArrayList;I)V

    .line 4664
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4665
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4666
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_7c

    .line 4667
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_7c

    .line 4675
    :pswitch_263
    const-string v0, "contact_number"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4676
    if-eqz v0, :cond_7c

    .line 4677
    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4678
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4679
    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto/16 :goto_7c

    .line 4685
    :pswitch_279
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "REQUEST_PHONE_MULTI"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4687
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4698
    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4700
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-lez v1, :cond_7c

    .line 4701
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->addWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 4702
    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonByContactList(Lcom/android/mms/data/ContactList;Z)V

    goto/16 :goto_7c

    .line 4708
    :pswitch_29e
    const-string v0, "namecard_result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4709
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_7c

    .line 4712
    :pswitch_2a9
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4713
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_7c

    .line 4717
    :pswitch_2b4
    const-string v0, "memotext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4718
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_7c

    .line 4722
    :pswitch_2bf
    const-string v0, "taskstext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4723
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    goto/16 :goto_7c

    .line 4727
    :pswitch_2ca
    if-eqz p3, :cond_7c

    const-string v0, "empty_thread"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4728
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 4730
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto/16 :goto_7c

    .line 4740
    :pswitch_2de
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7c

    .line 4741
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4743
    if-nez v0, :cond_2f4

    .line 4744
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4747
    :cond_2f4
    if-eqz v0, :cond_7c

    .line 4748
    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 4749
    if-eqz v0, :cond_7c

    .line 4750
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    goto/16 :goto_7c

    .line 4757
    :pswitch_301
    const-string v0, "location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4759
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 4760
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5c

    .line 4768
    :pswitch_323
    const/16 v1, 0x50

    .line 4769
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "map_image"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 4771
    if-nez v0, :cond_33c

    .line 4772
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onActivityResult REQUEST_CODE_PICK_LOCATION mapImage is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 4776
    :cond_33c
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4777
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4779
    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 4780
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 4781
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 4782
    const-string v1, "image/jpg"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 4785
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v1

    .line 4786
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 4788
    :try_start_367
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v2

    .line 4789
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V
    :try_end_376
    .catch Lcom/google/android/mms/MmsException; {:try_start_367 .. :try_end_376} :catch_378

    goto/16 :goto_7c

    .line 4790
    :catch_378
    move-exception v0

    .line 4792
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto/16 :goto_7c

    .line 4797
    :pswitch_37e
    const-string v0, "isSubject"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4798
    const-string v1, "transString"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4799
    const-string v2, "isSend"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 4800
    if-eqz v0, :cond_3d5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_3d5

    .line 4801
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4802
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4808
    :goto_3a2
    if-eqz v2, :cond_7c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4810
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_3bb

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3bb

    .line 4811
    invoke-direct {p0, v4, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    .line 4814
    :cond_3bb
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-nez v0, :cond_3ca

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_3ca

    .line 4815
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 4818
    :cond_3ca
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 4819
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto/16 :goto_7c

    .line 4804
    :cond_3d5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4805
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a2

    :cond_3ea
    move v3, v5

    goto/16 :goto_4f

    .line 4477
    nop

    :pswitch_data_3ee
    .packed-switch 0xa
        :pswitch_10b
        :pswitch_e2
        :pswitch_130
        :pswitch_130
        :pswitch_13d
        :pswitch_14d
        :pswitch_a9
        :pswitch_159
        :pswitch_263
        :pswitch_279
        :pswitch_166
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_1ee
        :pswitch_215
        :pswitch_7c
        :pswitch_2de
        :pswitch_29e
        :pswitch_2a9
        :pswitch_2b4
        :pswitch_23c
        :pswitch_2bf
        :pswitch_301
        :pswitch_323
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
        :pswitch_2ca
        :pswitch_10b
        :pswitch_e2
        :pswitch_130
        :pswitch_130
        :pswitch_13d
        :pswitch_14d
        :pswitch_37e
        :pswitch_7c
        :pswitch_7c
        :pswitch_10b
        :pswitch_10b
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 2142
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "start onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2144
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "end onAttach"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    return-void
.end method

.method public onAttachmentChanged(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 3392
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onAttachmentChanged(final int type)"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$24;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$24;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3409
    return-void
.end method

.method public onAttachmentChanged(Z)V
    .registers 5
    .parameter "sendMultiple"

    .prologue
    .line 3358
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachmentChanged() sendMultiple = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$23;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$23;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3382
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    monitor-enter v1

    .line 3384
    :try_start_25
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2c
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2a} :catch_2f

    .line 3388
    :goto_2a
    :try_start_2a
    monitor-exit v1

    .line 3389
    return-void

    .line 3388
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v0

    .line 3385
    :catch_2f
    move-exception v0

    goto :goto_2a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5498
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(),v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5500
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 5501
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5502
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    move-result v0

    if-nez v0, :cond_35

    .line 5548
    :cond_34
    :goto_34
    return-void

    .line 5507
    :cond_35
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_44

    .line 5508
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 5511
    :cond_44
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 5513
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5515
    const-string v1, "com.swype.android.inputmethod/.SwypeInputMethod"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 5517
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5518
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5519
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 5522
    :cond_82
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto :goto_34

    .line 5524
    :cond_86
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 5526
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5527
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5529
    const/16 v0, 0x8

    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    goto :goto_34

    .line 5530
    :cond_ab
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 5531
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 5533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5534
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 5535
    const-string v1, "additional"

    const-string v2, "email-phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5540
    :goto_ca
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5542
    const-string v1, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5546
    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_34

    .line 5538
    :cond_e5
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_ca
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .parameter "newConfig"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3047
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConfigurationChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v2, v3, :cond_62

    move v2, v3

    :goto_1f
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    .line 3050
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_64

    move v1, v3

    .line 3051
    .local v1, isLandscape:Z
    :goto_27
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    if-eq v2, v1, :cond_3e

    .line 3052
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsLandscape:Z

    .line 3054
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3055
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->ensureImeVisible(Z)V

    .line 3091
    :cond_3e
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsKeyboardOpen:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyboardStateChanged(Z)V

    .line 3093
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3095
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mScreenWidth:I

    .line 3097
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->AddToButtonInPanel()V

    .line 3100
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestDrawPointerOnConverationList()V

    .line 3101
    return-void

    .end local v0           #display:Landroid/view/Display;
    .end local v1           #isLandscape:Z
    :cond_62
    move v2, v4

    .line 3049
    goto :goto_1f

    :cond_64
    move v1, v4

    .line 3050
    goto :goto_27
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2150
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2153
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;

    .line 2154
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonId:I

    .line 2156
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientList:Ljava/util/SortedMap;

    .line 2157
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientId:I

    .line 2159
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 2161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setHasOptionsMenu(Z)V

    .line 2162
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6182
    packed-switch p1, :pswitch_data_2e

    .line 6195
    :goto_4
    return-object v0

    .line 6185
    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09015e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09015f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6190
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 6182
    nop

    :pswitch_data_2e
    .packed-switch 0x7f080000
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2169
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    const v0, 0x7f030008

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    .line 2173
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 2174
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onCreateView()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposeView:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteStarting()V
    .registers 2

    .prologue
    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    .line 1078
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2975
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2976
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 2984
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->setSoftInputMode(I)V

    .line 2986
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_21

    .line 2987
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2996
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_28} :catch_96

    .line 3002
    :goto_28
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityDestroyed()V

    .line 3005
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3a

    .line 3006
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 3007
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3008
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mToastHandler:Landroid/os/Handler;

    .line 3011
    :cond_3a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_43

    .line 3012
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3018
    :cond_43
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3019
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "mAttachmentProgressDialog Progress Dismissed with onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3024
    :cond_5b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_64

    .line 3025
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3026
    :cond_64
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mLayoutSelectorDialog:Landroid/app/AlertDialog;

    .line 3028
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 3032
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_82

    .line 3033
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-gtz v0, :cond_82

    .line 3034
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 3038
    :cond_82
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    if-eqz v0, :cond_88

    sput-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->mIsRestore:Z

    .line 3039
    :cond_88
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_8e

    sput-object v2, Lcom/android/mms/ui/ComposeMessageFragment;->mBundle:Landroid/os/Bundle;

    .line 3042
    :cond_8e
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, " onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    return-void

    .line 2997
    :catch_96
    move-exception v0

    .line 2998
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "reqReceiver not registered"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 5552
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEditorAction(),actionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5553
    if-eqz p3, :cond_1c

    .line 5563
    const/4 v0, 0x0

    .line 5587
    :goto_1b
    return v0

    .line 5568
    :cond_1c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5569
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2f

    .line 5570
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5587
    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    goto :goto_1b

    .line 5572
    :cond_2f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_2d

    .line 5574
    :cond_35
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 5575
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_2d

    .line 5578
    :cond_43
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v0

    if-nez v0, :cond_52

    .line 5579
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_52

    .line 5580
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 5583
    :cond_52
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5584
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto :goto_2d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 3225
    packed-switch p1, :pswitch_data_2a

    .line 3242
    const/4 v1, 0x0

    :goto_5
    return v1

    .line 3228
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_10

    move v1, v2

    .line 3229
    goto :goto_5

    .line 3231
    :cond_10
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    .line 3232
    .local v0, splitMode:I
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 3233
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    :goto_24
    move v1, v2

    .line 3237
    goto :goto_5

    .line 3235
    :cond_26
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_24

    .line 3225
    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_6
    .end packed-switch
.end method

.method public onMaxPendingMessagesReached()V
    .registers 4

    .prologue
    .line 3652
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraft(Z)Z

    .line 3654
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090106

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->threadSafeToast(Landroid/app/Activity;II)V

    .line 3655
    return-void
.end method

.method public onMessageSent()V
    .registers 2

    .prologue
    .line 3456
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 3457
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->startMsgListQuery()V

    .line 3459
    :cond_b
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 15
    .parameter

    .prologue
    .line 2594
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tonNewIntent(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/Log;->securedDump(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2598
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    .line 2601
    :cond_2d
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->noRecipientsInEditor()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2602
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_44

    .line 2603
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2605
    :cond_44
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;->setIntent(Landroid/content/Intent;)Lcom/android/mms/ui/ComposeMessageFragment$DiscardDraftListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    .line 2726
    :goto_58
    return-void

    .line 2609
    :cond_59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    .line 2611
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setIntent(Landroid/content/Intent;)V

    .line 2613
    const/4 v1, 0x0

    .line 2614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    .line 2615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    .line 2619
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    .line 2620
    const-string v0, "thread_id"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2621
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 2622
    const-string v0, "conversationDeleteMode"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 2624
    const/4 v0, 0x0

    .line 2626
    if-eqz v7, :cond_1ca

    .line 2627
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2630
    :goto_87
    const/4 v0, 0x0

    .line 2631
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_131

    .line 2632
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v5, v6, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 2665
    :cond_95
    :goto_95
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onNewIntent: data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", thread_id extra is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    const-string v2, "Mms/ComposeMessageFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     new conversation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mConversation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    if-eqz v1, :cond_f8

    .line 2671
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2679
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    cmp-long v0, v5, v9

    if-nez v0, :cond_18d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    const/4 v0, 0x1

    .line 2684
    :cond_f8
    :goto_f8
    if-eqz v0, :cond_190

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_190

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-lez v0, :cond_190

    .line 2685
    if-eqz v1, :cond_114

    .line 2686
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2688
    :cond_114
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onNewIntent: same conversation"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 2712
    :goto_120
    if-eqz v8, :cond_125

    .line 2713
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setConversationDeleteModeLayout()V

    .line 2715
    :cond_125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    .line 2725
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58

    .line 2634
    :cond_131
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_148

    .line 2638
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 2639
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v7}, Lcom/android/mms/data/Conversation;->sameRecipient(Landroid/net/Uri;)Z

    move-result v0

    .line 2641
    :cond_148
    if-nez v0, :cond_95

    .line 2644
    const/4 v1, 0x0

    .line 2646
    if-eqz v2, :cond_1c8

    const-string v9, "smsto"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c8

    .line 2648
    const-string v1, "sendto"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    .line 2651
    :goto_15c
    if-eqz v2, :cond_16b

    .line 2652
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v1, v2, v9, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 2653
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->showInvalidRecipientsPopup(Ljava/util/ArrayList;)V

    goto/16 :goto_95

    .line 2655
    :cond_16b
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->isNeedCreateThread(Landroid/content/Intent;)Z

    move-result v9

    invoke-static {v1, v7, v2, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 2658
    invoke-direct {p0, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->hasRecipientData(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-nez v2, :cond_95

    .line 2659
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->alertInvalidRecipientsPopup(Landroid/content/Context;)V

    goto/16 :goto_95

    .line 2679
    :cond_18d
    const/4 v0, 0x0

    goto/16 :goto_f8

    .line 2693
    :cond_190
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onNewIntent: different conversation, initialize..."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsNewThreadOpen:Z

    .line 2695
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_1c3

    .line 2696
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2700
    :goto_1a4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->dismissAllDialog()V

    .line 2701
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->disableDeleteModeLayout()V

    .line 2702
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->initialize(Landroid/os/Bundle;J)V

    .line 2703
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_1bb

    .line 2704
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2706
    :cond_1bb
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->loadMessageContent()V

    .line 2708
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestDrawPointerOnConverationList()V

    goto/16 :goto_120

    .line 2698
    :cond_1c3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraft(Z)Z

    goto :goto_1a4

    :cond_1c8
    move-object v2, v1

    goto :goto_15c

    :cond_1ca
    move-object v2, v0

    goto/16 :goto_87
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 3885
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_29e

    move v9, v1

    .line 4077
    :cond_a
    :goto_a
    return v9

    .line 3887
    :sswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->previewSlideshow()V

    goto :goto_a

    .line 3891
    :sswitch_f
    invoke-direct {p0, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 3892
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3894
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_30

    .line 3895
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string v2, ""

    invoke-virtual {v0, v2, v9}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 3896
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 3897
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_30

    .line 3898
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 3903
    :cond_30
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-nez v0, :cond_48

    .line 3904
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 3907
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_48

    .line 3908
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 3910
    :cond_48
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 3914
    :sswitch_56
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    .line 3915
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 3916
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 3917
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onRemoveSubject()V

    .line 3918
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 3921
    :sswitch_77
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3922
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 3924
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto :goto_a

    .line 3927
    :sswitch_83
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3928
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded()V

    goto/16 :goto_a

    .line 3932
    :sswitch_8e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    goto/16 :goto_a

    .line 3935
    :sswitch_95
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_bb

    .line 3937
    invoke-virtual {p0, v1, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    .line 3938
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_a

    .line 3940
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3941
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v0, 0x70b

    invoke-static {v1, v2, v3, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    goto/16 :goto_a

    .line 3944
    :cond_bb
    invoke-virtual {p0, v9, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_a

    .line 3948
    :sswitch_c0
    new-instance v0, Lcom/android/mms/ui/ComposeMessageFragment$34;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageFragment$34;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 3958
    :sswitch_ca
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->dialRecipient()V

    goto/16 :goto_a

    .line 3961
    :sswitch_cf
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V

    goto/16 :goto_a

    .line 3965
    :sswitch_d4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 3966
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v9, :cond_a

    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3967
    invoke-virtual {v2, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 3968
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3969
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3970
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 3977
    :sswitch_105
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddtextDialog()V

    goto/16 :goto_a

    .line 3980
    :sswitch_10a
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    .line 3981
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_a

    .line 3986
    :sswitch_119
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showChooseContactDialog()V

    goto/16 :goto_a

    .line 3991
    :sswitch_11e
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    .line 3993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3997
    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment$35;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageFragment$35;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 4005
    :try_start_15e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_171
    .catch Ljava/lang/NullPointerException; {:try_start_15e .. :try_end_171} :catch_19c

    move-result v0

    .line 4011
    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4013
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v0

    if-ge v3, v0, :cond_182

    .line 4014
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    .line 4016
    :cond_182
    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v4

    const/16 v5, 0x64

    const/4 v6, -0x1

    const v8, 0x7f02004b

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 4018
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->show()V

    goto/16 :goto_a

    .line 4007
    :catch_19c
    move-exception v0

    .line 4008
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "NullPointerException !!!"

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 4023
    :sswitch_1a6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showLayoutSelectorDialog()V

    goto/16 :goto_a

    .line 4027
    :sswitch_1ab
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 4028
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v2

    if-eqz v2, :cond_1c9

    .line 4029
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 4031
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 4034
    :cond_1c9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4035
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4036
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_a

    .line 4037
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto/16 :goto_a

    .line 4045
    :sswitch_1e5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 4046
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    .line 4047
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4048
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    .line 4049
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    .line 4050
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 4052
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    goto/16 :goto_a

    .line 4059
    :sswitch_21b
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/TranslateActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4060
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_274

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_274

    .line 4061
    const-string v0, "fromString"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4066
    :cond_23f
    :goto_23f
    const-string v0, "editable"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4067
    const-string v0, "isMms"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4068
    const-string v3, "isSubject"

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_29c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    :goto_25b
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4070
    const-string v0, "hasRecipient"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->recipientCount()I

    move-result v3

    if-lez v3, :cond_267

    move v1, v9

    :cond_267
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4071
    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4072
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    goto/16 :goto_a

    .line 4062
    :cond_274
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_23f

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 4064
    const-string v0, "fromString"

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23f

    :cond_29c
    move v0, v1

    .line 4068
    goto :goto_25b

    .line 3885
    :sswitch_data_29e
    .sparse-switch
        0x64 -> :sswitch_f
        0x66 -> :sswitch_95
        0x68 -> :sswitch_77
        0x69 -> :sswitch_83
        0x6a -> :sswitch_ca
        0x6b -> :sswitch_c0
        0x6d -> :sswitch_105
        0x6e -> :sswitch_56
        0x70 -> :sswitch_d4
        0x77 -> :sswitch_8e
        0x7e -> :sswitch_cf
        0x7f -> :sswitch_10a
        0x82 -> :sswitch_119
        0x85 -> :sswitch_b
        0x8c -> :sswitch_11e
        0x98 -> :sswitch_1a6
        0x99 -> :sswitch_1ab
        0x9a -> :sswitch_1e5
        0x9b -> :sswitch_21b
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 2905
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t\t onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2912
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->resetChildView()V

    .line 2913
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2914
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2915
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "DeleteAnimation Progress Dismissed with onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    sget-object v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDelAnimProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2918
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    .line 2920
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityPause()V

    .line 2923
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v0, :cond_3c

    .line 2924
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 2925
    :cond_3c
    return-void
.end method

.method public onPreMessageSent()V
    .registers 3

    .prologue
    .line 3450
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3451
    return-void
.end method

.method public onPrepareComposerOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter

    .prologue
    const/16 v2, 0x6a

    const v7, 0x202014a

    const/16 v6, 0x66

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3677
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->checkCMASMessage()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 3681
    :cond_28
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4e

    .line 3683
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3684
    if-eqz v0, :cond_4e

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4e

    .line 3685
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_4f

    .line 3686
    const v0, 0x7f0900af

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3853
    :cond_4e
    :goto_4e
    return v5

    .line 3689
    :cond_4f
    const v0, 0x7f0900b0

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4e

    .line 3698
    :cond_5a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 3699
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 3701
    :cond_74
    const/16 v0, 0x7e

    const v1, 0x7f0900ee

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3707
    :cond_83
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_28d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_28d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_28d

    .line 3710
    :cond_a1
    const/16 v0, 0x85

    const v1, 0x7f09005b

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020161

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3714
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 3715
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 3716
    const/16 v0, 0x6d

    const v1, 0x7f090152

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020069

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3722
    :cond_cd
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 3723
    const v0, 0x7f090009

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3744
    :cond_e0
    :goto_e0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 3745
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 3746
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ne v1, v5, :cond_10f

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 3747
    const/16 v0, 0x70

    const v1, 0x7f090066

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020071

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3751
    :cond_10f
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    .line 3755
    :cond_112
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_170

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_170

    .line 3757
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_136

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    sget v1, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    if-ge v0, v1, :cond_145

    .line 3758
    :cond_136
    const/16 v0, 0x99

    const v1, 0x7f09002d

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020066

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3761
    :cond_145
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_170

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 3762
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 3763
    if-le v0, v5, :cond_170

    .line 3765
    const/16 v0, 0x9a

    const v1, 0x7f09002c

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020085

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3774
    :cond_170
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "  ComposeMessage     MMS Subject feature enable !!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3775
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 3776
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_2bf

    .line 3777
    const/16 v0, 0x64

    const v1, 0x7f09003a

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020068

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3788
    :cond_192
    :goto_192
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1ff

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 3789
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1ff

    .line 3790
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_1ff

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-lez v0, :cond_1ff

    .line 3792
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v0

    .line 3795
    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3797
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v1

    if-ge v0, v1, :cond_1e0

    .line 3798
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v0

    .line 3801
    :cond_1e0
    if-ne v0, v5, :cond_2d6

    .line 3802
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09005d

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3808
    :goto_1f3
    const/16 v1, 0x8c

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020078

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3814
    :cond_1ff
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_22c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_22c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 3817
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v0

    if-ne v0, v5, :cond_2e9

    .line 3818
    const v0, 0x7f090060

    .line 3822
    :goto_220
    const/16 v1, 0x98

    invoke-interface {p1, v4, v1, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020083

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3826
    :cond_22c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_258

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_258

    .line 3827
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3828
    if-eqz v0, :cond_258

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_258

    .line 3829
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_2ee

    .line 3830
    const v0, 0x7f0900af

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3847
    :cond_258
    :goto_258
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsTranslateMenuON:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_268

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_27c

    :cond_268
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3850
    :cond_27c
    const/16 v0, 0x9b

    const v1, 0x7f0901c5

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_4e

    .line 3728
    :cond_28d
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_2a0

    .line 3729
    const v0, 0x7f090009

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3733
    :cond_2a0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 3734
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 3735
    const/16 v0, 0x6d

    const v1, 0x7f090152

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020069

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_e0

    .line 3779
    :cond_2bf
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 3781
    const/16 v0, 0x6e

    const v1, 0x7f090153

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020087

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_192

    .line 3805
    :cond_2d6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09016b

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f3

    .line 3820
    :cond_2e9
    const v0, 0x7f090061

    goto/16 :goto_220

    .line 3833
    :cond_2ee
    const v0, 0x7f0900b0

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_258
.end method

.method public onProtocolChanged(Z)V
    .registers 5
    .parameter "mms"

    .prologue
    .line 3412
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProtocolChanged(),mms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$25;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$25;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3433
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2854
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t\t onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2857
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1f

    .line 2858
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 2859
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2864
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_32

    .line 2865
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->setSoftInputMode(I)V

    .line 2868
    :cond_32
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z

    .line 2874
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSentMessage:Z

    .line 2882
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    .line 2884
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x378

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2887
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    if-nez v0, :cond_4b

    .line 2888
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    .line 2890
    :cond_4b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_6a

    .line 2892
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize(Z)V

    .line 2899
    :cond_6a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->onActivityResume()V

    .line 2901
    return-void

    .line 2861
    :cond_70
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1f
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 2837
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2838
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    const-string v0, "recipients"

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 2843
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->saveToButtonState(Landroid/os/Bundle;)V

    .line 2845
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    if-eqz v0, :cond_2a

    .line 2846
    const-string v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mExitOnSent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2850
    :cond_2a
    return-void
.end method

.method public onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2733
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2735
    sput-boolean v4, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed:Z

    .line 2736
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2737
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    .line 2739
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->initFocus()V

    .line 2742
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2743
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->addRecipientsListener()V

    .line 2746
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2747
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onStart : deleteDraft()!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->deleteDraft()V

    .line 2749
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    .line 2752
    :cond_3a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->loadMessageContent()V

    .line 2754
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 2755
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 2758
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 2759
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->bindToContactHeaderWidget(Lcom/android/mms/data/ContactList;)V

    .line 2762
    :cond_4d
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_59

    .line 2763
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 2764
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->drawTopPanel(Z)V

    .line 2768
    :cond_59
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestDrawPointerOnConverationList()V

    .line 2770
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->setMessageListBackground()V

    .line 2772
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    .line 2773
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2931
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "\t onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2934
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRemoveComoposer()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2935
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z

    .line 2946
    :cond_21
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->windowDismissed(Landroid/os/IBinder;)V

    .line 2950
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 2953
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 2956
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    if-nez v0, :cond_44

    .line 2957
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRemoveComoposer()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraft(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDraftSavedOnStop:Z

    .line 2959
    :cond_44
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->removeRecipientsListener()V

    .line 2962
    :try_start_47
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_4e} :catch_56

    .line 2968
    :goto_4e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 2970
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsOnScreen:Z

    .line 2971
    return-void

    .line 2963
    :catch_56
    move-exception v0

    .line 2964
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onStop() was called twice!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .registers 4
    .parameter "updated"

    .prologue
    .line 7186
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$60;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$60;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7209
    return-void
.end method

.method public onUserInteraction()V
    .registers 2

    .prologue
    .line 3140
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 3143
    :goto_3
    return-void

    .line 3141
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 3147
    if-eqz p1, :cond_5

    .line 3148
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V

    .line 3150
    :cond_5
    return-void
.end method

.method public requestFocusOnComposer()Z
    .registers 2

    .prologue
    .line 9270
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerPanelVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 9271
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    .line 9276
    :goto_b
    const/4 v0, 0x1

    return v0

    .line 9273
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->requestFocus()Z

    goto :goto_b
.end method

.method protected resetChildView()V
    .registers 8

    .prologue
    .line 6856
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v2

    .line 6857
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_23

    .line 6858
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6859
    .local v3, thisView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 6860
    .local v1, p:Landroid/widget/AbsListView$LayoutParams;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 6861
    .restart local v1       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6857
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6863
    .end local v1           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v3           #thisView:Landroid/view/View;
    :cond_23
    return-void
.end method

.method public resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7571
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "onResizeResult()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7572
    if-nez p1, :cond_17

    .line 7573
    const/4 v1, -0x1

    const v2, 0x7f0900dc

    const/4 v3, 0x0

    const/16 v4, 0xa

    move-object v0, p0

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7619
    :cond_16
    :goto_16
    return-void

    .line 7578
    :cond_17
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    .line 7579
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 7581
    const/4 v4, 0x0

    .line 7582
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    .line 7583
    if-nez v0, :cond_2d

    .line 7584
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v0

    .line 7587
    :cond_2d
    :try_start_2d
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v4

    .line 7592
    const/4 v0, 0x1

    if-ne p2, v0, :cond_90

    .line 7594
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 7600
    :goto_3e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    move-result v1

    .line 7602
    const-string v0, "Mms:app"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 7603
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Lcom/google/android/mms/MmsException; {:try_start_2d .. :try_end_6b} :catch_93

    :cond_6b
    move-object v3, v4

    .line 7608
    :goto_6c
    if-nez v1, :cond_71

    .line 7609
    invoke-virtual {p0, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    .line 7612
    :cond_71
    const v2, 0x7f0900dc

    const/16 v4, 0xa

    move-object v0, p0

    move v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V

    .line 7614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->isResizingImage:Z

    .line 7615
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 7616
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_16

    .line 7617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    goto :goto_16

    .line 7598
    :cond_90
    :try_start_90
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mPosToReplace:I
    :try_end_92
    .catch Lcom/google/android/mms/MmsException; {:try_start_90 .. :try_end_92} :catch_93

    goto :goto_3e

    .line 7605
    :catch_93
    move-exception v0

    .line 7606
    const/4 v1, -0x1

    move-object v3, v4

    goto :goto_6c
.end method

.method protected sendSmsInInternationalRoaming(I)V
    .registers 5
    .parameter

    .prologue
    .line 1375
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSmsInInternationalRoaming : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    packed-switch p1, :pswitch_data_34

    .line 1393
    :goto_1b
    return-void

    .line 1379
    :pswitch_1c
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "saveSmsToPending: call WorkingMessage.saveSmsToPending"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->saveSmsToPending()V

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSendingMessage:Z

    goto :goto_1b

    .line 1386
    :pswitch_2c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage()V

    goto :goto_1b

    .line 1390
    :pswitch_30
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_1b

    .line 1377
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2c
        :pswitch_30
    .end packed-switch
.end method

.method public setAnimationEnable(Z)V
    .registers 2
    .parameter "isAnimationEnable"

    .prologue
    .line 2780
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    .line 2781
    return-void
.end method

.method public setConversationDeleteModeLayout()V
    .registers 3

    .prologue
    .line 8723
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "setConversationDeleteModeLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8725
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_11

    .line 8726
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 8727
    :cond_11
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 8728
    return-void
.end method

.method public setDeleteModeLayout(ZZ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8657
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeleteModeLayout(),isDeleteMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8658
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    .line 8661
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->addDeleteSoftKey()V

    .line 8663
    if-eqz p1, :cond_92

    .line 8664
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8665
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8666
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 8667
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 8668
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 8669
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 8670
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 8671
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 8673
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 8675
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 8676
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8680
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 8685
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllText:Landroid/widget/TextView;

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8709
    :cond_85
    :goto_85
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setDeleteMode(Z)V

    .line 8710
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->requestLayout()V

    .line 8711
    return-void

    .line 8687
    :cond_92
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8688
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 8689
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyLeft:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 8690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSoftkeyRight:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 8692
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageContactHeader;->getVisibility()I

    move-result v0

    if-nez v0, :cond_bd

    .line 8693
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mContactHeader:Lcom/android/mms/ui/MessageContactHeader;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 8695
    :cond_bd
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-eq v0, v4, :cond_d1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-ne v0, v4, :cond_f1

    .line 8697
    :cond_d1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 8702
    :goto_d6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 8703
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 8704
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8705
    if-eqz p2, :cond_85

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    if-eqz v0, :cond_85

    .line 8706
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_85

    .line 8699
    :cond_f1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mComposerPanel:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_d6
.end method

.method public setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V
    .registers 2
    .parameter "onEventListener"

    .prologue
    .line 8568
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 8569
    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .registers 2
    .parameter "onEventListener"

    .prologue
    .line 8574
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    .line 8575
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V
    .registers 2
    .parameter "onEventListener"

    .prologue
    .line 8580
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 8581
    return-void
.end method

.method public setRemoveComposer(Z)V
    .registers 5
    .parameter "isRemoveComposer"

    .prologue
    .line 9504
    const-string v0, "Mms/ComposeMessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoveComoposer() isRemoveComposer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9505
    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemoveComposer:Z

    .line 9506
    return-void
.end method

.method public setSelectAll(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 8780
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8781
    return-void
.end method

.method public setSizeString(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 7812
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getSizeStringView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7813
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageListItem;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x75

    const v4, 0x7f0900af

    const/16 v3, 0x76

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8942
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedPosition:I

    .line 8944
    invoke-direct {p0, p1, p2, p4}, Lcom/android/mms/ui/ComposeMessageFragment;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V

    .line 8947
    if-nez p3, :cond_17

    .line 9105
    :cond_16
    :goto_16
    return-void

    .line 8951
    :cond_17
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->checkCMASMessage()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 8952
    const-string v0, "Emergency Alert"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 8956
    :goto_24
    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    .line 8959
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->checkCMASMessage()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 8961
    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8963
    const v0, 0x7f090014

    invoke-interface {p1, v5, v7, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_16

    .line 8954
    :cond_43
    const v0, 0x7f090028

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto :goto_24

    .line 8969
    :cond_4a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v0

    if-eq v0, v6, :cond_5a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v0

    if-ne v0, v6, :cond_7a

    .line 8970
    :cond_5a
    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8972
    const/16 v0, 0x79

    const v2, 0x7f09001c

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8974
    const/16 v0, 0x7c

    const v2, 0x7f090022

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_16

    .line 8980
    :cond_7a
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 8981
    const/16 v0, 0x7d

    const v2, 0x7f0900ad

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8984
    :cond_8c
    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8988
    invoke-direct {p0, p1, v1, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageFragment$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    .line 8990
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 8991
    :cond_a2
    const/16 v0, 0x7c

    const v2, 0x7f090022

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8995
    :cond_ae
    iget-boolean v0, p3, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v0, :cond_167

    .line 8996
    const/16 v0, 0x81

    const v2, 0x7f0900b2

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9046
    :goto_be
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v6, :cond_da

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 9047
    const/16 v0, 0x72

    const v2, 0x7f0900ac

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9050
    :cond_da
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 9052
    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_175

    .line 9056
    const/16 v0, 0x87

    const v2, 0x7f090154

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9078
    :cond_f0
    :goto_f0
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 9079
    const/16 v0, 0x79

    const v2, 0x7f09001c

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9085
    :cond_102
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 9087
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 9088
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-static {p3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    if-eq v2, v6, :cond_131

    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13f

    :cond_131
    if-nez v0, :cond_13f

    .line 9092
    const/16 v0, 0x83

    const v2, 0x7f090023

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9098
    :cond_13f
    const v0, 0x7f090014

    invoke-interface {p1, v5, v7, v5, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9102
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsTranslateMenuON:Z

    if-eqz v0, :cond_16

    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 9103
    const/16 v0, 0x9b

    const v2, 0x7f0901c5

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_16

    .line 8998
    :cond_167
    const/16 v0, 0x80

    const v2, 0x7f0900b1

    invoke-interface {p1, v5, v0, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_be

    .line 9059
    :cond_175
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 9061
    :try_start_17b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 9065
    if-eqz v0, :cond_f0

    .line 9066
    const/4 v0, 0x0

    const/16 v2, 0x87

    const/4 v3, 0x0

    const v4, 0x7f090154

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_199
    .catch Lcom/google/android/mms/MmsException; {:try_start_17b .. :try_end_199} :catch_19b

    goto/16 :goto_f0

    .line 9070
    :catch_19b
    move-exception v0

    .line 9071
    const-string v2, "Mms/ComposeMessageFragment"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f0
.end method

.method public showSip()V
    .registers 7

    .prologue
    .line 7469
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 7470
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 7482
    .local v0, focusedview:Landroid/view/View;
    :goto_10
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z

    if-nez v2, :cond_48

    .line 7483
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 7485
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    sget-boolean v2, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-nez v2, :cond_29

    .line 7486
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 7487
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 7502
    .end local v0           #focusedview:Landroid/view/View;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_29
    :goto_29
    return-void

    .line 7472
    :cond_2a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 7473
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;

    .restart local v0       #focusedview:Landroid/view/View;
    goto :goto_10

    .line 7475
    .end local v0           #focusedview:Landroid/view/View;
    :cond_3b
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment;->isBodyFocused()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 7476
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    .restart local v0       #focusedview:Landroid/view/View;
    goto :goto_10

    .line 7492
    :cond_48
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$63;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$63;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;)V

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_29
.end method

.method public showSip(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 7452
    if-nez p1, :cond_3

    .line 7464
    :goto_2
    return-void

    .line 7455
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$62;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$62;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/view/View;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public showSizeString(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 7790
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 7791
    if-eqz v0, :cond_12

    .line 7792
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->expectedMessageSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSizeString(Ljava/lang/CharSequence;)V

    .line 7805
    :goto_11
    return-void

    .line 7794
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v0

    .line 7795
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    .line 7796
    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    .line 7799
    invoke-static {}, Lcom/android/mms/MmsConfig;->getComposeMaxLengthLimit()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 7800
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSizeString(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 7802
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mRemainingInCurrentMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setSizeString(Ljava/lang/CharSequence;)V

    goto :goto_11
.end method

.method public showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 5020
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5022
    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5023
    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5024
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5025
    const v1, 0x1040013

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5026
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5027
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5028
    return-void
.end method

.method undeliveredMessageDialog(J)V
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 6243
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6246
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_49

    .line 6247
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090019

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 6254
    :goto_2c
    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6256
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 6257
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 6258
    invoke-virtual {v1, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 6259
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 6260
    return-void

    .line 6251
    :cond_49
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_2c
.end method
