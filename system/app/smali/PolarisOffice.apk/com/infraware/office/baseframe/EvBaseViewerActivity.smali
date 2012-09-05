.class public abstract Lcom/infraware/office/baseframe/EvBaseViewerActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Lcom/infraware/common/event/SdCardListener;
.implements Lcom/infraware/office/evengine/EvListener$ViewerListener;
.implements Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;
.implements Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback$msg;
.implements Lcom/infraware/office/evengine/E;
.implements Lcom/infraware/office/evengine/E$EV_EDITMODETYPE;
.implements Lcom/infraware/office/evengine/E$EV_VIEW_MODE;
.implements Lcom/infraware/office/evengine/E$EV_ZOOM_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_VIEWMODE_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_REPLACE_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_GUI_EVENT;
.implements Lcom/infraware/office/evengine/E$EV_SEARCH_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_DOCEXTENSION_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_SHEET_FIND_REPLACE;
.implements Lcom/infraware/office/evengine/E$EV_ERROR_CODE;
.implements Lcom/infraware/office/baseframe/EvBaseE$BaseActivityEventType;
.implements Lcom/infraware/office/baseframe/EvBaseE$PopupDialogEventType;
.implements Lcom/infraware/office/evengine/E$EV_RES_STRING_ID;
.implements Lcom/infraware/office/evengine/E$EV_SCROLL_COMMAND_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_KEY_TYPE;
.implements Lcom/infraware/office/evengine/E$EV_SCROLL_FACTOR_TYPE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;
    }
.end annotation


# static fields
.field protected static final FALSE:I = 0x0

.field protected static final HANDLE_MODE_CLOSE_DIALOG:I = 0x3

.field protected static final HANDLE_MODE_PRINT_CLOSE:I = 0xd

.field protected static final HANDLE_MODE_PRINT_OPEN:I = 0xa

.field protected static final HANDLE_MODE_PRINT_OPEN_ERROR:I = 0xb

.field protected static final HANDLE_MODE_PRINT_PROGRESS:I = 0xc

.field protected static final HANDLE_MODE_REQUEST_FINISH:I = 0x14

.field protected static final HANDLE_MODE_SEARCH:I = 0x1

.field protected static final HANDLE_MODE_SEARCH_PROGRESS:I = 0x2

.field private static final RUN_SEARCH_PROGRESS_TIME:J = 0x320L

.field protected static final TRUE:I = 0x1

.field protected static final dialogId:Ljava/lang/String;

.field protected static mErrorAndClosePopup:Landroid/app/AlertDialog;

.field protected static final searchContent:Ljava/lang/String;

.field protected static final searchResultCode:Ljava/lang/String;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field findWatcher:Landroid/text/TextWatcher;

.field gotoWatcher:Landroid/text/TextWatcher;

.field private mBookClipPath:Ljava/lang/String;

.field private mBookMarkPath:Ljava/lang/String;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mCloseReceiver:Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;

.field mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mDlgMsg:Landroid/app/AlertDialog;

.field private mDlgSearch:Landroid/app/AlertDialog;

.field protected mDocExtensionType:I

.field protected mEV_VIEW_MODE:I

.field mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

.field protected mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field public mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

.field public mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

.field mFindActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mFindBar:Landroid/widget/LinearLayout;

.field private mFindNextBtn:Landroid/widget/ImageButton;

.field private mFindPrevBtn:Landroid/widget/ImageButton;

.field private mFindSetBtn:Landroid/widget/ImageButton;

.field private mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

.field private mGotoPageNum:Landroid/widget/EditText;

.field private mGotoPagePopup:Landroid/app/AlertDialog;

.field private mGotoPageText:Landroid/widget/TextView;

.field private mGotoTotalNum:Landroid/widget/TextView;

.field protected mMyApp:Lcom/infraware/polarisoffice/MyApplication;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPowerSaveOption:Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;

.field private mPrintAll:Landroid/widget/RadioButton;

.field private mPrintCurrent:Landroid/widget/RadioButton;

.field private mPrintEdit:Landroid/widget/EditText;

.field private mPrintEditLayout:Landroid/widget/RelativeLayout;

.field private mPrintNotice:Landroid/app/AlertDialog;

.field private mPrintPage:Landroid/widget/RadioButton;

.field private mPrintPagePopup:Landroid/app/AlertDialog;

.field private mPrintPath:Ljava/lang/String;

.field private mPrintPrevDlg:Landroid/app/AlertDialog;

.field private mRepalce_DstTxt:Landroid/widget/EditText;

.field private mRepalce_OrgTxt:Landroid/widget/EditText;

.field private mReplaceAllBtn:Landroid/widget/Button;

.field protected mReplaceBar:Landroid/widget/LinearLayout;

.field private mReplaceBtn:Landroid/widget/Button;

.field private mReplaceNextBtn:Landroid/widget/Button;

.field private mReplaceSetBtn:Landroid/widget/ImageButton;

.field private mRootPath:Ljava/lang/String;

.field private mSendfilePopup:Landroid/app/AlertDialog;

.field private mTTSLangPopup:Landroid/app/AlertDialog;

.field private mTempPath:Ljava/lang/String;

.field protected mTitleBar:Landroid/widget/LinearLayout;

.field protected mTopSpace:Landroid/widget/LinearLayout;

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field protected mView:Lcom/infraware/office/baseframe/EvBaseView;

.field private mViewSearchMode:I

.field mViewTitle:Landroid/widget/TextView;

.field private mZoomMenu:Landroid/app/AlertDialog;

.field private m_ToastMsg:Landroid/widget/Toast;

.field private m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

.field private m_oPasswordPopup:Landroid/app/AlertDialog;

.field private m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

.field protected m_strPassword:Ljava/lang/String;

.field protected mbDisableSendMenu:Z

.field protected mbLoadComplete:Z

.field private mbMatchCase:I

.field private mbMatchWhole:I

.field private mbNewDocument:Z

.field private mbPrint:Z

.field protected mbSave:Z

.field private mbShowSearchBar:Z

.field protected mbViewerOnlyMode:Z

.field protected final messageHandler:Landroid/os/Handler;

.field protected mstrOpenFilePath:Ljava/lang/String;

.field replaceWatcher:Landroid/text/TextWatcher;

.field private searchCode:I

.field private searchCount:I

.field private vib:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/String;

    const-string v1, "SEARCH_RESULT_CODE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchResultCode:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/String;

    const-string v1, "SEARCH_CONTENT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchContent:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/String;

    const-string v1, "DIALOG_ID"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dialogId:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 344
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 97
    const-string v0, "EvBaseViewerActivity"

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->LOG_CAT:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 102
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    .line 104
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbLoadComplete:Z

    .line 105
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbDisableSendMenu:Z

    .line 106
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_strPassword:Ljava/lang/String;

    .line 107
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbViewerOnlyMode:Z

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEV_VIEW_MODE:I

    .line 125
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgSearch:Landroid/app/AlertDialog;

    .line 126
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCode:I

    .line 127
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCount:I

    .line 130
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgMsg:Landroid/app/AlertDialog;

    .line 131
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    .line 143
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTitleBar:Landroid/widget/LinearLayout;

    .line 144
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTopSpace:Landroid/widget/LinearLayout;

    .line 145
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindBar:Landroid/widget/LinearLayout;

    .line 146
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindPrevBtn:Landroid/widget/ImageButton;

    .line 147
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindNextBtn:Landroid/widget/ImageButton;

    .line 148
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindSetBtn:Landroid/widget/ImageButton;

    .line 150
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBar:Landroid/widget/LinearLayout;

    .line 151
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    .line 152
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    .line 153
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    .line 154
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    .line 155
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    .line 156
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceSetBtn:Landroid/widget/ImageButton;

    .line 159
    iput v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    .line 161
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    .line 162
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchCase:I

    .line 163
    iput v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchWhole:I

    .line 164
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    .line 165
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbShowSearchBar:Z

    .line 166
    iput v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    .line 167
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mMyApp:Lcom/infraware/polarisoffice/MyApplication;

    .line 168
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbSave:Z

    .line 170
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewTitle:Landroid/widget/TextView;

    .line 172
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 173
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mCloseReceiver:Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;

    .line 175
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mZoomMenu:Landroid/app/AlertDialog;

    .line 178
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 182
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbPrint:Z

    .line 183
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPrevDlg:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPagePopup:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTTSLangPopup:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintNotice:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mSendfilePopup:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    .line 184
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 186
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    invoke-direct {v0}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    .line 189
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 191
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEditLayout:Landroid/widget/RelativeLayout;

    .line 192
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintAll:Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintCurrent:Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPage:Landroid/widget/RadioButton;

    .line 193
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    .line 195
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPowerSaveOption:Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRootPath:Ljava/lang/String;

    .line 198
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPath:Ljava/lang/String;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTempPath:Ljava/lang/String;

    .line 200
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookMarkPath:Ljava/lang/String;

    .line 201
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookClipPath:Ljava/lang/String;

    .line 203
    iput-boolean v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbNewDocument:Z

    .line 205
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 207
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageText:Landroid/widget/TextView;

    .line 208
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoTotalNum:Landroid/widget/TextView;

    .line 209
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;

    .line 225
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$1;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    .line 277
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$2;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 285
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$3;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$3;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 295
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$4;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 332
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$5;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$5;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1833
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$6;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->gotoWatcher:Landroid/text/TextWatcher;

    .line 2442
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$7;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$7;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->replaceWatcher:Landroid/text/TextWatcher;

    .line 2455
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$8;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$8;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findWatcher:Landroid/text/TextWatcher;

    .line 345
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 346
    return-void
.end method

.method private ReplaceEditTextEnable()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2419
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2420
    .local v1, strOrgTxt:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2422
    .local v0, strDstTxt:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2423
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2424
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2426
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3b

    .line 2428
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2429
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2430
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2440
    :cond_3a
    :goto_3a
    return-void

    .line 2434
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3a

    .line 2436
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2437
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2438
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3a
.end method

.method static synthetic access$0(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 159
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 126
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCode:I

    return-void
.end method

.method static synthetic access$10(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 2418
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->ReplaceEditTextEnable()V

    return-void
.end method

.method static synthetic access$11(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Lcom/infraware/polarisoffice/common/ExEditText;
    .registers 2
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 162
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchCase:I

    return-void
.end method

.method static synthetic access$13(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 163
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchWhole:I

    return-void
.end method

.method static synthetic access$14(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$15(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/RadioButton;
    .registers 2
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintCurrent:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$16(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/RadioButton;
    .registers 2
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPage:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$18(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPagePopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$19(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/RadioButton;
    .registers 2
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintAll:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 126
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCode:I

    return v0
.end method

.method static synthetic access$3(Lcom/infraware/office/baseframe/EvBaseViewerActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCount:I

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 159
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    return v0
.end method

.method static synthetic access$5(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Lcom/infraware/polarisoffice/common/ImmManager;
    .registers 2
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Landroid/widget/PopupWindow;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    return-void
.end method

.method static synthetic access$7(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2693
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method private getOpenFilePath(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .parameter "intent"

    .prologue
    .line 757
    const/4 v1, 0x0

    .line 758
    .local v1, path:Ljava/lang/String;
    if-eqz p1, :cond_f

    .line 759
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 760
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_f

    .line 761
    const-string v2, "key_filename"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 763
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_f
    return-object v1
.end method

.method private onToastMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "strMsg"

    .prologue
    const/4 v2, 0x0

    .line 2694
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_1c

    .line 2695
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 2698
    :goto_f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_ToastMsg:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 2699
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2700
    return-void

    .line 2697
    :cond_1c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private setFindString()V
    .registers 9

    .prologue
    const v7, 0x7f08018d

    const v6, 0x7f08013c

    const v5, 0x7f08013b

    .line 2601
    const v2, 0x7f0c0135

    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2602
    .local v0, findTitle:Landroid/widget/TextView;
    const v2, 0x7f0c013b

    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2604
    .local v1, replaceTitle:Landroid/widget/TextView;
    if-eqz v0, :cond_2b

    .line 2606
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2607
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 2610
    :cond_2b
    if-eqz v1, :cond_3b

    .line 2612
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2613
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 2616
    :cond_3b
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    if-eqz v2, :cond_51

    .line 2618
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2619
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    .line 2622
    :cond_51
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    if-eqz v2, :cond_6a

    .line 2624
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08013d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2625
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    .line 2628
    :cond_6a
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    if-eqz v2, :cond_7b

    .line 2629
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2631
    :cond_7b
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    if-eqz v2, :cond_8c

    .line 2632
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2634
    :cond_8c
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    if-eqz v2, :cond_9d

    .line 2635
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2637
    :cond_9d
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    if-eqz v2, :cond_b1

    .line 2638
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2639
    :cond_b1
    return-void
.end method


# virtual methods
.method public ActivityMsgProc(IIIIILjava/lang/Object;)I
    .registers 16
    .parameter "msg"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "p4"
    .parameter "obj"

    .prologue
    .line 2477
    packed-switch p1, :pswitch_data_c0

    .line 2526
    :pswitch_3
    const/4 v6, 0x0

    .line 2528
    :goto_4
    return v6

    .line 2479
    :pswitch_5
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v6}, Lcom/infraware/office/baseframe/EvBaseView;->drawAllContents()V

    .line 2528
    :cond_a
    :goto_a
    const/4 v6, 0x1

    goto :goto_4

    :pswitch_c
    move-object v1, p6

    .line 2483
    check-cast v1, Ljava/lang/String;

    .line 2484
    .local v1, hyperLink:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2488
    .local v2, i:Landroid/content/Intent;
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x7

    if-le v6, v7, :cond_bd

    .line 2490
    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2491
    .local v4, mailcode:Ljava/lang/String;
    const-string v6, "mailto:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_bd

    .line 2493
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mailto:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2494
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_48} :catch_70

    .line 2497
    .end local v2           #i:Landroid/content/Intent;
    .end local v4           #mailcode:Ljava/lang/String;
    .local v3, i:Landroid/content/Intent;
    :goto_48
    if-nez v3, :cond_bb

    .line 2499
    :try_start_4a
    const-string v6, "http://"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_61

    .line 2500
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2501
    :cond_61
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_6c} :catch_b8

    .line 2503
    .end local v3           #i:Landroid/content/Intent;
    .restart local v2       #i:Landroid/content/Intent;
    :goto_6c
    :try_start_6c
    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_a

    .line 2504
    :catch_70
    move-exception v0

    .line 2506
    .local v0, e:Ljava/lang/Exception;
    :goto_71
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801f2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 2511
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #hyperLink:Ljava/lang/String;
    .end local v2           #i:Landroid/content/Intent;
    :pswitch_85
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-eqz v6, :cond_94

    .line 2513
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v6}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->isTextToSpeechPlay()Z

    move-result v6

    if-eqz v6, :cond_94

    .line 2514
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 2516
    :cond_94
    invoke-static {}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->isSupportDictionary()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2517
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v6, p2, p3}, Lcom/infraware/office/evengine/EvInterface;->IGetTouchString(II)Ljava/lang/String;

    move-result-object v5

    .line 2518
    .local v5, text:Ljava/lang/String;
    const/4 v6, 0x1

    if-ne p4, v6, :cond_a

    .line 2519
    if-eqz v5, :cond_ac

    .line 2520
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->vib:Landroid/os/Vibrator;

    const-wide/16 v7, 0x32

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2521
    :cond_ac
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    invoke-virtual {v6, v5}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->setDictionaryString(Ljava/lang/String;)V

    .line 2522
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    invoke-virtual {v6, p0}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->setDictionaryPopup(Landroid/app/Activity;)V

    goto/16 :goto_a

    .line 2504
    .end local v5           #text:Ljava/lang/String;
    .restart local v1       #hyperLink:Ljava/lang/String;
    .restart local v3       #i:Landroid/content/Intent;
    :catch_b8
    move-exception v0

    move-object v2, v3

    .end local v3           #i:Landroid/content/Intent;
    .restart local v2       #i:Landroid/content/Intent;
    goto :goto_71

    .end local v2           #i:Landroid/content/Intent;
    .restart local v3       #i:Landroid/content/Intent;
    :cond_bb
    move-object v2, v3

    .end local v3           #i:Landroid/content/Intent;
    .restart local v2       #i:Landroid/content/Intent;
    goto :goto_6c

    :cond_bd
    move-object v3, v2

    .end local v2           #i:Landroid/content/Intent;
    .restart local v3       #i:Landroid/content/Intent;
    goto :goto_48

    .line 2477
    nop

    :pswitch_data_c0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_85
    .end packed-switch
.end method

.method protected AlertErrorAndCloseDlg(I)V
    .registers 6
    .parameter "contentStringId"

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1020
    .local v1, content:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1021
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1022
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1023
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/infraware/office/baseframe/EvBaseViewerActivity$19;

    invoke-direct {v3, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$19;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1030
    new-instance v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity$20;

    invoke-direct {v2, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$20;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1037
    new-instance v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity$21;

    invoke-direct {v2, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$21;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1047
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    .line 1048
    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1049
    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1050
    return-void
.end method

.method public FindBarClose()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dismissPopupWindow()Z

    .line 431
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindBar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2c

    .line 433
    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindBarShow(Z)V

    .line 434
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->ISearchStop()V

    .line 435
    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    .line 438
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    if-eqz v1, :cond_2b

    .line 440
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ImmManager;->hideForcedIme()V

    .line 445
    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    move v0, v1

    goto :goto_2b
.end method

.method public FindBarShow(Z)V
    .registers 6
    .parameter "bShow"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 400
    if-eqz p1, :cond_2d

    .line 402
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/EvBaseView;->setFindReplaceMode(Z)V

    .line 405
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->requestFocus()Z

    .line 407
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusable(Z)V

    .line 408
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 412
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->showDelayedIme()V

    .line 426
    :goto_29
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setShowSearchBar(Z)V

    .line 427
    return-void

    .line 416
    :cond_2d
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->hideForcedIme()V

    .line 418
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseView;->setFindReplaceMode(Z)V

    .line 422
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusable(Z)V

    .line 423
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    goto :goto_29
.end method

.method public FindReplaceEnabled(Z)V
    .registers 4
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    .line 2362
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2364
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2365
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2366
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2367
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2370
    :cond_21
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2372
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->ReplaceEditTextEnable()V

    .line 2373
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2374
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2375
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2377
    :cond_3f
    return-void
.end method

.method public FindText(I)V
    .registers 10
    .parameter "bPrev"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 450
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dismissPopupWindow()Z

    .line 451
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, strFind:Ljava/lang/String;
    if-nez v1, :cond_12

    .line 479
    :cond_11
    :goto_11
    return-void

    .line 459
    :cond_12
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    if-eq v0, v5, :cond_1c

    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    const/16 v2, 0xff

    if-ne v0, v2, :cond_11

    .line 461
    :cond_1c
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2b

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_4d

    .line 463
    :cond_2b
    const/4 v6, 0x0

    .line 464
    .local v6, nFlag:I
    if-ne p1, v5, :cond_30

    .line 465
    or-int/lit8 v6, v6, 0x8

    .line 466
    :cond_30
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchCase:I

    if-ne v0, v5, :cond_36

    .line 467
    or-int/lit8 v6, v6, 0x2

    .line 468
    :cond_36
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchWhole:I

    if-ne v0, v5, :cond_3c

    .line 469
    or-int/lit8 v6, v6, 0x4

    .line 471
    :cond_3c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v6}, Lcom/infraware/office/evengine/EvInterface;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    .line 476
    .end local v6           #nFlag:I
    :goto_42
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 477
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_11

    .line 474
    :cond_4d
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchWhole:I

    iget v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchCase:I

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/evengine/EvInterface;->ISearchStart(Ljava/lang/String;IIII)V

    goto :goto_42
.end method

.method public GetBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->prcessLoadComplete()V

    .line 1189
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/office/baseframe/EvBaseView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public GetThumbnailBitmap(III)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 799
    const/4 v0, 0x0

    return-object v0
.end method

.method public InitFindBar()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 361
    const v1, 0x7f0c012f

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTitleBar:Landroid/widget/LinearLayout;

    .line 362
    const v1, 0x7f0c0134

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindBar:Landroid/widget/LinearLayout;

    .line 363
    const v1, 0x7f0c0136

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindSetBtn:Landroid/widget/ImageButton;

    .line 364
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindSetBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    const v1, 0x7f0c0138

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindPrevBtn:Landroid/widget/ImageButton;

    .line 367
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindPrevBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 370
    const v1, 0x7f0c0137

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindNextBtn:Landroid/widget/ImageButton;

    .line 371
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindNextBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 374
    const v1, 0x7f0c0139

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/ExEditText;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    .line 375
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 377
    .local v0, osVer:Ljava/lang/String;
    const v1, 0x7f08030e

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 379
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 380
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    :cond_81
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 384
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setImeOptions(I)V

    .line 385
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 386
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    new-instance v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity$9;

    invoke-direct {v2, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$9;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setOnKeyPreImeListener(Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;)V

    .line 395
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 396
    return-void
.end method

.method public OnCloseDoc()V
    .registers 2

    .prologue
    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbLoadComplete:Z

    .line 795
    return-void
.end method

.method public OnDrawBitmap(II)V
    .registers 4
    .parameter "nCallId"
    .parameter "bShowAutomap"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    iput p1, v0, Lcom/infraware/office/baseframe/EvBaseView;->mCallBackID:I

    .line 1196
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->drawAllContents()V

    .line 1197
    return-void
.end method

.method public OnDrawThumbnailBitmap(I)V
    .registers 2
    .parameter "nPageNum"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 804
    return-void
.end method

.method public OnGetResID(I)Ljava/lang/String;
    .registers 4
    .parameter "nStrID"

    .prologue
    .line 1066
    packed-switch p1, :pswitch_data_2a

    .line 1074
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1068
    :pswitch_5
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1070
    :pswitch_11
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1072
    :pswitch_1d
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1066
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_11
        :pswitch_1d
    .end packed-switch
.end method

.method protected OnGotoDialog()V
    .registers 3

    .prologue
    .line 1396
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 1397
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1398
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1399
    :cond_1c
    return-void
.end method

.method public OnImagePlaceHolderDefaultImage()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201fc

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1080
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1081
    .local v1, defaultImage:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1082
    const/4 v0, 0x0

    .line 1083
    return-object v1
.end method

.method public OnLoadComplete(Ljava/lang/String;)V
    .registers 3
    .parameter "strWritePassword"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbViewerOnlyMode:Z

    .line 829
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 831
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onWritePasswordDoc(Ljava/lang/String;)Z

    .line 833
    :cond_e
    return-void
.end method

.method public OnLoadFail(I)V
    .registers 10
    .parameter "nErrorCode"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 905
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbPrint:Z

    if-eqz v0, :cond_3a

    .line 907
    iput-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 908
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetInitialHeapSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetHeapSize(I)V

    .line 910
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 911
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v5}, Lcom/infraware/office/baseframe/EvBaseView;->setPrintMode(Z)V

    .line 912
    iput-boolean v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbPrint:Z

    .line 919
    :goto_1f
    const v6, 0x7f0801e3

    .line 920
    .local v6, nStrID:I
    sparse-switch p1, :sswitch_data_7a

    .line 942
    :goto_25
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/infraware/common/util/FileUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 943
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgMsg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5e

    .line 944
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgMsg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 954
    :cond_39
    :goto_39
    return-void

    .line 917
    .end local v6           #nStrID:I
    :cond_3a
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dialogId:Ljava/lang/String;

    const/16 v3, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1f

    .line 925
    .restart local v6       #nStrID:I
    :sswitch_4a
    const v6, 0x7f0801e3

    .line 926
    goto :goto_25

    .line 929
    :sswitch_4e
    const v6, 0x7f0801e4

    .line 930
    goto :goto_25

    .line 932
    :sswitch_52
    const v6, 0x7f0801ef

    .line 933
    goto :goto_25

    .line 935
    :sswitch_56
    const v6, 0x7f0802fd

    .line 936
    goto :goto_25

    .line 938
    :sswitch_5a
    const v6, 0x7f0801f1

    goto :goto_25

    .line 949
    :cond_5e
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSupportEncryptDoc()Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, -0x5

    if-eq p1, v0, :cond_6b

    const/16 v0, -0x16

    if-ne p1, v0, :cond_75

    .line 950
    :cond_6b
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onPasswordDoc(I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 951
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->AlertErrorAndCloseDlg(I)V

    goto :goto_39

    .line 953
    :cond_75
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->AlertErrorAndCloseDlg(I)V

    goto :goto_39

    .line 920
    nop

    :sswitch_data_7a
    .sparse-switch
        -0x16 -> :sswitch_56
        -0x7 -> :sswitch_5a
        -0x5 -> :sswitch_52
        -0x4 -> :sswitch_4a
        -0x3 -> :sswitch_4e
        -0x2 -> :sswitch_4e
        -0x1 -> :sswitch_4a
        0x0 -> :sswitch_4a
    .end sparse-switch
.end method

.method public OnPageMove(III)V
    .registers 6
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nErrorCode"

    .prologue
    .line 1054
    const/4 v0, 0x6

    if-ne p3, v0, :cond_16

    .line 1055
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1057
    :cond_16
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    const/16 v1, 0xb

    iput v1, v0, Lcom/infraware/office/baseframe/EvBaseView;->mCallBackID:I

    .line 1059
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getScreenView()Lcom/infraware/office/baseframe/EvBaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->setPageInfoTimer()V

    .line 1061
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setSheetTitle(I)V

    .line 1062
    return-void
.end method

.method public OnPrintMode(Ljava/lang/String;)V
    .registers 15
    .parameter "strPrintFile"

    .prologue
    .line 1202
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 1249
    :cond_f
    :goto_f
    return-void

    .line 1204
    :cond_10
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetInitialHeapSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetHeapSize(I)V

    .line 1206
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    if-eqz v0, :cond_f

    .line 1208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 1209
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 1210
    if-nez p1, :cond_3a

    .line 1213
    iget-object v12, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_f

    .line 1219
    :cond_3a
    const/16 v0, 0x2f

    :try_start_3c
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 1220
    .local v8, index:I
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1221
    .local v11, path:Ljava/lang/String;
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_4e} :catch_9f

    move-result-object p1

    .line 1223
    const/4 v10, 0x0

    .line 1225
    .local v10, out:Ljava/io/FileOutputStream;
    const/4 v0, 0x3

    :try_start_51
    invoke-virtual {p0, p1, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_54} :catch_b2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_51 .. :try_end_54} :catch_9f

    move-result-object v10

    .line 1230
    :goto_55
    :try_start_55
    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1231
    .local v7, imgFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1232
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1233
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1236
    :cond_81
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1238
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.STREAM"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1239
    const-string v0, "android.intent.extra.TITLE"

    const-string v1, "PolarisOffice"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    const/16 v0, 0x11

    invoke-virtual {p0, v9, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_9d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_55 .. :try_end_9d} :catch_9f

    goto/16 :goto_f

    .line 1242
    .end local v7           #imgFile:Ljava/io/File;
    .end local v8           #index:I
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .end local v11           #path:Ljava/lang/String;
    :catch_9f
    move-exception v6

    .line 1245
    .local v6, e:Landroid/content/ActivityNotFoundException;
    iget-object v12, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_f

    .line 1226
    .end local v6           #e:Landroid/content/ActivityNotFoundException;
    .restart local v8       #index:I
    .restart local v10       #out:Ljava/io/FileOutputStream;
    .restart local v11       #path:Ljava/lang/String;
    :catch_b2
    move-exception v6

    .line 1227
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_b3
    iget-object v12, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b3 .. :try_end_c3} :catch_9f

    goto :goto_55
.end method

.method public OnPrintedCount(I)V
    .registers 14
    .parameter "nTotalCount"

    .prologue
    const/16 v1, 0xb

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1252
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetInitialHeapSize()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/infraware/office/evengine/EvInterface;->ISetHeapSize(I)V

    .line 1254
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    if-eqz v0, :cond_28

    .line 1255
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 1256
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 1257
    if-nez p1, :cond_29

    .line 1258
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    move-object v0, p0

    move-object v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1279
    :cond_28
    :goto_28
    return-void

    .line 1261
    :cond_29
    const v0, 0x7f08030e

    :try_start_2c
    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "FV04"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    .line 1262
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1263
    .local v11, intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1264
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.pantech.app.insight"

    const-string v5, "com.pantech.app.insight.preferences"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1265
    const-string v0, "intPageNum"

    invoke-virtual {v11, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1266
    const-string v0, "stringFullPath"

    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPath:Ljava/lang/String;

    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    const-string v0, "stringPreFix"

    const-string v4, "printimg"

    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1268
    const/high16 v0, 0x80

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1270
    invoke-virtual {p0, v11}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1271
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_7b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2c .. :try_end_7b} :catch_7c

    goto :goto_28

    .line 1273
    .end local v11           #intent:Landroid/content/Intent;
    :catch_7c
    move-exception v10

    .line 1274
    .local v10, e:Landroid/content/ActivityNotFoundException;
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    move-object v0, p0

    move-object v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_28
.end method

.method public OnProgress(II)V
    .registers 3
    .parameter "EV_PROGRESS_TYPE"
    .parameter "nProgressValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1087
    return-void
.end method

.method public OnProgressStart(I)V
    .registers 2
    .parameter "EV_PROGRESS_TYPE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1090
    return-void
.end method

.method public OnSearchMode(IIII)V
    .registers 15
    .parameter "nResult"
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nReplaceAllCount"

    .prologue
    const/16 v9, 0x11

    const/16 v8, 0x10

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1108
    const-string v0, "EvBaseViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "OnSearchMode nReuslt = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    sparse-switch p1, :sswitch_data_e4

    .line 1154
    :goto_1e
    return-void

    .line 1113
    :sswitch_1f
    iput v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    .line 1114
    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchResultCode:Ljava/lang/String;

    sget-object v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchContent:Ljava/lang/String;

    const v5, 0x7f08011c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v6

    .line 1115
    .local v6, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1e

    .line 1118
    .end local v6           #msg:Landroid/os/Message;
    :sswitch_33
    iput v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    .line 1119
    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchResultCode:Ljava/lang/String;

    sget-object v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchContent:Ljava/lang/String;

    const v5, 0x7f08011c

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v6

    .line 1120
    .restart local v6       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1e

    .line 1123
    .end local v6           #msg:Landroid/os/Message;
    :sswitch_47
    iput v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    .line 1124
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchResultCode:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1125
    invoke-virtual {p0, p2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setSheetTitle(I)V

    .line 1126
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindText:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/infraware/office/util/EvUtil;->hideIme(Landroid/content/Context;Landroid/os/IBinder;)V

    goto :goto_1e

    .line 1129
    :sswitch_64
    const/4 v0, 0x3

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    .line 1130
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1e

    .line 1134
    :sswitch_6f
    const-string v0, "EvBaseViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nReplaceAllCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchResultCode:Ljava/lang/String;

    const/16 v3, 0x31

    sget-object v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchContent:Ljava/lang/String;

    move-object v0, p0

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1e

    .line 1139
    :sswitch_95
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchResultCode:Ljava/lang/String;

    const/16 v3, 0x32

    sget-object v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchContent:Ljava/lang/String;

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1e

    .line 1142
    :sswitch_a8
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchResultCode:Ljava/lang/String;

    const/16 v3, 0x33

    sget-object v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchContent:Ljava/lang/String;

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1e

    .line 1145
    :sswitch_bb
    iput v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    .line 1146
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchResultCode:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1e

    .line 1149
    :sswitch_cd
    iput v8, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewSearchMode:I

    .line 1150
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchResultCode:Ljava/lang/String;

    sget-object v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchContent:Ljava/lang/String;

    const v5, 0x7f08011d

    move-object v0, p0

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1e

    .line 1110
    nop

    :sswitch_data_e4
    .sparse-switch
        0x0 -> :sswitch_1f
        0x1 -> :sswitch_47
        0x2 -> :sswitch_33
        0x3 -> :sswitch_64
        0x10 -> :sswitch_cd
        0x11 -> :sswitch_bb
        0x31 -> :sswitch_6f
        0x32 -> :sswitch_95
        0x33 -> :sswitch_a8
    .end sparse-switch
.end method

.method public OnTerminate()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1159
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbPrint:Z

    if-eqz v0, :cond_2c

    .line 1161
    iput-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 1162
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetInitialHeapSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetHeapSize(I)V

    .line 1164
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 1165
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v5}, Lcom/infraware/office/baseframe/EvBaseView;->setPrintMode(Z)V

    .line 1166
    iput-boolean v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbPrint:Z

    .line 1174
    :goto_1f
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbSave:Z

    if-eqz v0, :cond_3c

    .line 1176
    const v0, 0x7f0801f0

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->AlertErrorAndCloseDlg(I)V

    .line 1177
    iput-boolean v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbSave:Z

    .line 1184
    :goto_2b
    return-void

    .line 1171
    :cond_2c
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dialogId:Ljava/lang/String;

    const/16 v3, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1f

    .line 1180
    :cond_3c
    const v0, 0x7f0801e0

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->AlertErrorAndCloseDlg(I)V

    .line 1181
    sput-object v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    goto :goto_2b
.end method

.method public OnTextToSpeachString(Ljava/lang/String;)V
    .registers 3
    .parameter "strTTS"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-eqz v0, :cond_9

    .line 1284
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0, p1}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->speechString(Ljava/lang/String;)V

    .line 1285
    :cond_9
    return-void
.end method

.method public OnThumbnailActivity()V
    .registers 4

    .prologue
    .line 349
    const-string v1, "EvBaseViewerActivity"

    const-string v2, "OnThumbnailActivity"

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/office/baseframe/EvBaseThumbnailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 352
    return-void
.end method

.method protected ReplaceBarClose()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2337
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindBarClose()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2357
    :goto_8
    return v0

    .line 2340
    :cond_9
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3f

    .line 2342
    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->ReplaceBarShow(Z)V

    .line 2343
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->ISearchStop()V

    .line 2344
    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setMatchCase(I)V

    .line 2345
    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setMatchWhole(I)V

    .line 2346
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    if-eqz v1, :cond_2e

    .line 2348
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2350
    :cond_2e
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    if-eqz v1, :cond_39

    .line 2352
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2354
    :cond_39
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ImmManager;->hideForcedIme()V

    goto :goto_8

    :cond_3f
    move v0, v1

    .line 2357
    goto :goto_8
.end method

.method protected ReplaceBarShow(Z)V
    .registers 6
    .parameter "bShow"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2307
    if-eqz p1, :cond_2d

    .line 2309
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2310
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2311
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/EvBaseView;->setFindReplaceMode(Z)V

    .line 2312
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2314
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusable(Z)V

    .line 2315
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 2319
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->showDelayedIme()V

    .line 2333
    :goto_29
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setShowSearchBar(Z)V

    .line 2334
    return-void

    .line 2323
    :cond_2d
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2324
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2325
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseView;->setFindReplaceMode(Z)V

    .line 2327
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusable(Z)V

    .line 2328
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 2330
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->hideForcedIme()V

    goto :goto_29
.end method

.method public ReplaceText(I)V
    .registers 13
    .parameter "nMode"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v10, 0x14

    const/4 v9, 0x5

    const/4 v4, 0x0

    .line 2257
    const/4 v8, 0x0

    .line 2258
    .local v8, nFlag:I
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2259
    .local v1, OrgText:Ljava/lang/String;
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2260
    .local v7, DstText:Ljava/lang/String;
    const-string v0, "EvBaseViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orgText = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DstText = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v0

    if-eq v0, v9, :cond_45

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v0

    if-ne v0, v10, :cond_55

    .line 2264
    :cond_45
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getMatchCase()I

    move-result v0

    if-ne v0, v6, :cond_4d

    .line 2265
    or-int/lit8 v8, v8, 0x2

    .line 2266
    :cond_4d
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getMatchWhole()I

    move-result v0

    if-ne v0, v6, :cond_55

    .line 2267
    or-int/lit8 v8, v8, 0x4

    .line 2270
    :cond_55
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 2271
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 2272
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 2274
    packed-switch p1, :pswitch_data_d6

    .line 2304
    :goto_67
    return-void

    .line 2277
    :pswitch_68
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v0

    if-eq v0, v9, :cond_74

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v0

    if-ne v0, v10, :cond_7a

    .line 2278
    :cond_74
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1, v5, v8}, Lcom/infraware/office/evengine/EvInterface;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_67

    .line 2280
    :cond_7a
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getMatchWhole()I

    move-result v2

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getMatchCase()I

    move-result v3

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_67

    .line 2283
    :pswitch_89
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v0

    if-eq v0, v9, :cond_95

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v0

    if-ne v0, v10, :cond_9d

    .line 2285
    :cond_95
    or-int/lit8 v8, v8, 0x20

    .line 2286
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1, v7, v8}, Lcom/infraware/office/evengine/EvInterface;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_67

    .line 2289
    :cond_9d
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getMatchWhole()I

    move-result v2

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getMatchCase()I

    move-result v3

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_67

    .line 2292
    :pswitch_ac
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v0

    if-eq v0, v9, :cond_b8

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v0

    if-ne v0, v10, :cond_c0

    .line 2294
    :cond_b8
    or-int/lit8 v8, v8, 0x10

    .line 2295
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1, v7, v8}, Lcom/infraware/office/evengine/EvInterface;->ISheetFindReplace(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_67

    .line 2299
    :cond_c0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 2300
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getMatchWhole()I

    move-result v2

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getMatchCase()I

    move-result v3

    const/4 v6, 0x2

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetReplace(Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_67

    .line 2274
    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_68
        :pswitch_89
        :pswitch_ac
    .end packed-switch
.end method

.method public ReqeustViewerBookClip(Landroid/content/Intent;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 1388
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->EV()Lcom/infraware/office/evengine/EV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EV;->getBookClip()Lcom/infraware/office/evengine/EV$BOOK_CLIP;

    move-result-object v0

    .line 1389
    .local v0, a_Clip:Lcom/infraware/office/evengine/EV$BOOK_CLIP;
    const-string v1, "FILEPATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    .line 1390
    const-string v1, "CLIPNAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    .line 1391
    const-string v1, "EvBaseViewerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "a_Clip.szFilePath  = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " a_Clip.szClipName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/infraware/office/evengine/EV$BOOK_CLIP;->szClipName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvInterface;->IApplyBookClip(Lcom/infraware/office/evengine/EV$BOOK_CLIP;)V

    .line 1393
    return-void
.end method

.method public RequestThumbnail(Landroid/content/Intent;)V
    .registers 10
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 1382
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 1383
    const-string v0, "THUMBNAIL_GOTO"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1384
    .local v7, nPageNum:I
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v7}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    .line 1385
    return-void
.end method

.method public RequestViewerPrint(Ljava/lang/String;)V
    .registers 13
    .parameter "fileName"

    .prologue
    const/4 v10, 0x0

    .line 1405
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 1406
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPath:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/infraware/common/util/FileUtils;->deleteDirectory(Ljava/lang/String;Z)V

    .line 1408
    :cond_15
    const/4 v6, 0x0

    .line 1409
    .local v6, bLandScape:I
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 1410
    const/4 v6, 0x1

    .line 1412
    :cond_24
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 1414
    iput-boolean v10, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbLoadComplete:Z

    .line 1416
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v5

    .line 1417
    .local v5, locale:I
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEV_VIEW_MODE:I

    if-nez v0, :cond_59

    .line 1418
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->getWidth()I

    move-result v2

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->getHeight()I

    move-result v3

    const/16 v4, 0x20

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTempPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookMarkPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookClipPath:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/office/evengine/EvInterface;->IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    :goto_51
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v10}, Lcom/infraware/office/baseframe/EvBaseView;->setPrintMode(Z)V

    .line 1427
    iput-boolean v10, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbPrint:Z

    .line 1428
    return-void

    .line 1420
    :cond_59
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_strPassword:Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 1421
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_strPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseView;->openDocEx(Ljava/lang/String;)V

    goto :goto_51

    .line 1423
    :cond_65
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->getWidth()I

    move-result v2

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->getHeight()I

    move-result v3

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTempPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookMarkPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookClipPath:Ljava/lang/String;

    move-object v1, p1

    move v4, v10

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/office/evengine/EvInterface;->IOpen(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method public SearchSetPopupWindow(I)V
    .registers 19
    .parameter "parentID"

    .prologue
    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ImmManager;->hideForcedIme()V

    .line 500
    const-string v3, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 501
    .local v12, inflater:Landroid/view/LayoutInflater;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v10, SrcListItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/polarisoffice/common/MultiListItem;>;"
    new-instance v1, Lcom/infraware/polarisoffice/common/MultiListItem;

    const/4 v2, 0x7

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08013a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 503
    const/4 v4, 0x0

    const v5, 0x7f020008

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 502
    invoke-direct/range {v1 .. v8}, Lcom/infraware/polarisoffice/common/MultiListItem;-><init>(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 504
    .local v1, item:Lcom/infraware/polarisoffice/common/MultiListItem;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchCase:I

    invoke-virtual {v1, v3}, Lcom/infraware/polarisoffice/common/MultiListItem;->setRightBtnState(I)V

    .line 505
    new-instance v2, Lcom/infraware/polarisoffice/common/MultiListItem;

    const/4 v3, 0x7

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080138

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 506
    const/4 v5, 0x0

    const v6, 0x7f020008

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v16, 0x106000b

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 505
    invoke-direct/range {v2 .. v9}, Lcom/infraware/polarisoffice/common/MultiListItem;-><init>(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 507
    .local v2, item1:Lcom/infraware/polarisoffice/common/MultiListItem;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchWhole:I

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/common/MultiListItem;->setRightBtnState(I)V

    .line 508
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v11, Lcom/infraware/polarisoffice/common/MultiAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10, v3}, Lcom/infraware/polarisoffice/common/MultiAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;)V

    .line 512
    .local v11, adapter:Lcom/infraware/polarisoffice/common/MultiAdapter;
    const v3, 0x7f030048

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 513
    .local v14, popupView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v14, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 514
    new-instance v3, Landroid/widget/PopupWindow;

    const/high16 v4, 0x439b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x42f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dipToPx(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v14, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    .line 515
    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x4100

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x4000

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dipToPx(F)F

    move-result v5

    float-to-int v5, v5

    const/high16 v6, 0x40c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v14, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 518
    const v3, 0x7f0c01a3

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 519
    .local v13, listView:Landroid/widget/ListView;
    invoke-virtual {v13, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 520
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020208

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 522
    .local v15, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13, v15}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 524
    new-instance v3, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v11}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$10;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Ljava/util/ArrayList;Lcom/infraware/polarisoffice/common/MultiAdapter;)V

    invoke-virtual {v13, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02025e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->update()V

    .line 559
    return-void
.end method

.method public ShowMsg()V
    .registers 3

    .prologue
    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbViewerOnlyMode:Z

    .line 838
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 839
    return-void
.end method

.method public ShowWriteProtectMsg()V
    .registers 3

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080300

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 844
    return-void
.end method

.method protected checkPrintStatus()V
    .registers 10

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2215
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    if-nez v0, :cond_f

    .line 2216
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/porting/EvPrintHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 2218
    :cond_f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetInitialHeapSize()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Lcom/infraware/office/evengine/EvInterface;->ISetHeapSize(I)V

    .line 2220
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISaveBookMark()V

    .line 2221
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintCurrent:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2222
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v2

    iget v2, v2, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPath:Ljava/lang/String;

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2228
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v6}, Lcom/infraware/office/baseframe/EvBaseView;->setPrintMode(Z)V

    .line 2229
    iput-boolean v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbPrint:Z

    .line 2230
    return-void

    .line 2223
    :cond_49
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintAll:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 2224
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPath:Ljava/lang/String;

    move v2, v5

    move v3, v5

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 2225
    :cond_5c
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEditLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPage:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2226
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_41

    .line 2227
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPath:Ljava/lang/String;

    move v2, v5

    move v3, v5

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public dipToPx(F)F
    .registers 4
    .parameter "value"

    .prologue
    .line 492
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public dismissPopupWindow()Z
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    .line 483
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPopup:Landroid/widget/PopupWindow;

    .line 485
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 486
    const/4 v0, 0x1

    .line 488
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;
    .registers 9
    .parameter "what"
    .parameter "key1"
    .parameter "value1"
    .parameter "key2"
    .parameter "value2"

    .prologue
    .line 1094
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1095
    .local v1, message:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 1096
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1098
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p2, :cond_12

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1099
    :cond_12
    if-eqz p4, :cond_17

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1101
    :cond_17
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1103
    return-object v1
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 1289
    const-string v0, "EvBaseViewerActivity"

    const-string v1, "Called finish"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    .line 1292
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->destory()V

    .line 1294
    :try_start_f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IClose()V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_14} :catch_2c

    .line 1300
    :goto_14
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTempPath:Ljava/lang/String;

    const-string v1, "/mnt/sdcard/.polarisOffice/"

    if-eq v0, v1, :cond_20

    .line 1301
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTempPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/infraware/common/util/FileUtils;->deleteDirectory(Ljava/lang/String;Z)V

    .line 1303
    :cond_20
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/infraware/common/util/FileUtils;->deleteDirectory(Ljava/io/File;Z)V

    .line 1305
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->finish()V

    .line 1306
    return-void

    .line 1296
    :catch_2c
    move-exception v0

    goto :goto_14
.end method

.method public finishEx()V
    .registers 3

    .prologue
    .line 1309
    const-string v0, "EvBaseViewerActivity"

    const-string v1, "Called finishEx"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    .line 1312
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->finish()V

    .line 1313
    return-void
.end method

.method public getDocExtensionType()I
    .registers 2

    .prologue
    .line 356
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    return v0
.end method

.method public getMatchCase()I
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchCase:I

    return v0
.end method

.method public getMatchWhole()I
    .registers 2

    .prologue
    .line 355
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchWhole:I

    return v0
.end method

.method public getScreenView()Lcom/infraware/office/baseframe/EvBaseView;
    .registers 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    return-object v0
.end method

.method public getSdcardIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 689
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 690
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 692
    return-object v0
.end method

.method protected getZoomValueArray()[I
    .registers 8

    .prologue
    .line 1681
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1682
    .local v4, zoomValueVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/16 v5, 0x8

    new-array v2, v5, [I

    fill-array-data v2, :array_4c

    .line 1684
    .local v2, zoomList:[I
    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v5}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    .line 1685
    .local v1, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    array-length v5, v2

    if-lt v0, v5, :cond_24

    .line 1691
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v3, v5, [I

    .line 1692
    .local v3, zoomValueArray:[I
    const/4 v0, 0x0

    :goto_1d
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v0, v5, :cond_3c

    .line 1695
    return-object v3

    .line 1687
    .end local v3           #zoomValueArray:[I
    :cond_24
    aget v5, v2, v0

    iget v6, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMinZoom:I

    if-lt v5, v6, :cond_39

    aget v5, v2, v0

    iget v6, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nMaxZoom:I

    if-gt v5, v6, :cond_39

    .line 1688
    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1685
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1693
    .restart local v3       #zoomValueArray:[I
    :cond_3c
    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v0

    .line 1692
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1682
    nop

    :array_4c
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method protected initReplaceBar()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 2380
    const v1, 0x7f0c013a

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBar:Landroid/widget/LinearLayout;

    .line 2382
    const v1, 0x7f0c013f

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    .line 2383
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2384
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceNextBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2386
    const v1, 0x7f0c0140

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    .line 2387
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2388
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2390
    const v1, 0x7f0c0141

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    .line 2391
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2392
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceAllBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2394
    const v1, 0x7f0c013c

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceSetBtn:Landroid/widget/ImageButton;

    .line 2395
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mReplaceSetBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2397
    const v1, 0x7f0c013d

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    .line 2398
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->replaceWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2399
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2400
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2401
    const v1, 0x7f0c013e

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    .line 2402
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->replaceWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2403
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2404
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mFindActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2406
    const v1, 0x7f08030e

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FV03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 2408
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2409
    .local v0, osVer:Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 2411
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_OrgTxt:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2412
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRepalce_DstTxt:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2415
    .end local v0           #osVer:Ljava/lang/String;
    :cond_c4
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setFindString()V

    .line 2416
    return-void
.end method

.method public isSdCardAction(Ljava/lang/String;)V
    .registers 6
    .parameter "nowAction"

    .prologue
    .line 2643
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2645
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->sdUnmountMsg()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2647
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2648
    .local v1, str:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2651
    .end local v1           #str:Ljava/lang/String;
    :cond_21
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2653
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_31

    .line 2654
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->finish()V

    .line 2664
    .end local v0           #file:Ljava/io/File;
    :cond_31
    return-void
.end method

.method public isShowSearchBar()Z
    .registers 2

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbShowSearchBar:Z

    return v0
.end method

.method protected makeOfficeDir()V
    .registers 4

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookClipPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookMarkPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTempPath:Ljava/lang/String;

    .line 571
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->makeRootDir()V

    .line 573
    const-string v0, "/mnt/sdcard/.polarisOffice/polarisTemp"

    const-string v1, "polarisTemp"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTempPath:Ljava/lang/String;

    .line 575
    const-string v0, "/mnt/sdcard/.polarisOffice/polarisBookmark"

    const-string v1, "polarisBookmark"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisBookmark"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookMarkPath:Ljava/lang/String;

    .line 577
    const-string v0, "/mnt/sdcard/.polarisOffice/polarisBookclip"

    const-string v1, "polarisBookclip"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisBookclip"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookClipPath:Ljava/lang/String;

    .line 579
    const-string v0, ""

    const-string v1, "polarisPrint"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisPrint"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPath:Ljava/lang/String;

    .line 580
    return-void
.end method

.method protected makeRootDir()V
    .registers 3

    .prologue
    .line 563
    const-string v0, "/mnt/sdcard/.polarisOffice/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 564
    const-string v0, "/mnt/sdcard/.polarisOffice/"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mRootPath:Ljava/lang/String;

    .line 565
    :cond_11
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1342
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/common/baseactivity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1344
    if-eqz p3, :cond_1a

    .line 1346
    const-string v0, "SdCardUnMounted"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1348
    const-string v0, "EvBaseViewerActivity"

    const-string v1, "OnActivityReult SdCardUnMounted"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->isSdCardAction(Ljava/lang/String;)V

    .line 1353
    :cond_1a
    const/16 v0, 0x11

    if-ne p1, v0, :cond_23

    .line 1355
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->RequestViewerPrint(Ljava/lang/String;)V

    .line 1358
    :cond_23
    const/4 v0, -0x1

    if-ne p2, v0, :cond_29

    .line 1360
    sparse-switch p1, :sswitch_data_36

    .line 1379
    :cond_29
    :goto_29
    return-void

    .line 1363
    :sswitch_2a
    invoke-virtual {p0, p3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->ReqeustViewerBookClip(Landroid/content/Intent;)V

    goto :goto_29

    .line 1366
    :sswitch_2e
    invoke-virtual {p0, p3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->RequestThumbnail(Landroid/content/Intent;)V

    goto :goto_29

    .line 1369
    :sswitch_32
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setResultFromSettingActivity()V

    goto :goto_29

    .line 1360
    :sswitch_data_36
    .sparse-switch
        0x6 -> :sswitch_2e
        0x7 -> :sswitch_2a
        0xe -> :sswitch_32
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2236
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-eqz v0, :cond_d

    .line 2237
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->finalizeSpeech()V

    .line 2238
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 2253
    :cond_c
    :goto_c
    return-void

    .line 2242
    :cond_d
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindBarClose()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2245
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    if-eqz v0, :cond_25

    .line 2246
    iput-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 2247
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetInitialHeapSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetHeapSize(I)V

    goto :goto_c

    .line 2251
    :cond_25
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->finish()V

    .line 2252
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onBackPressed()V

    goto :goto_c
.end method

.method public onChangeScreen(I)V
    .registers 8
    .parameter "nType"

    .prologue
    const/16 v5, 0x800

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x400

    .line 774
    if-ne p1, v3, :cond_23

    .line 775
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Landroid/view/Window;->setFlags(II)V

    .line 776
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTopSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 778
    const-string v0, "EvBaseViewerActivity"

    const-string v1, "onChangeScreen ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :goto_22
    return-void

    .line 781
    :cond_23
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEV_VIEW_MODE:I

    if-ne v0, v3, :cond_46

    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isShowLandscapeStatusbar()Z

    move-result v0

    if-nez v0, :cond_46

    .line 782
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 786
    :goto_34
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTopSpace:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 788
    const-string v0, "Plasma Activity"

    const-string v1, "onChangeScreen ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 784
    :cond_46
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_34
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 768
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 769
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dismissPopupWindow()Z

    .line 770
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1672
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 1677
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 1674
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    invoke-virtual {v0, p0}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->performDictionary(Landroid/app/Activity;)V

    goto :goto_7

    .line 1672
    nop

    :pswitch_data_10
    .packed-switch 0x7f0c0307
        :pswitch_9
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    .line 585
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.infraware.polarisoffice.DEACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 588
    :cond_19
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 589
    .local v11, display:Landroid/view/Display;
    const-string v0, "EvBaseViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getDefaultDisplay mWidth = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mHeight = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v0, "EvBaseViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PolarisOffcie Version = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getVersionName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_disable_send_file"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbDisableSendMenu:Z

    .line 594
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INTCMD"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 595
    .local v12, nNewDoc:I
    const/4 v2, 0x0

    .line 596
    .local v2, nEV_EditModeType:I
    const/4 v5, 0x0

    .line 597
    .local v5, openType:I
    const/4 v6, -0x1

    .line 599
    .local v6, aNewTemplatePPT:I
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->makeOfficeDir()V

    .line 600
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->vib:Landroid/os/Vibrator;

    .line 602
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getOpenFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->getDocFileExtentionType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    .line 604
    if-eqz v12, :cond_aa

    .line 606
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    sparse-switch v0, :sswitch_data_1e0

    .line 629
    :goto_a6
    const/4 v0, 0x1

    if-ne v12, v0, :cond_1c3

    .line 631
    const/4 v5, 0x1

    .line 642
    :cond_aa
    :goto_aa
    const/4 v0, 0x1

    if-ne v12, v0, :cond_b0

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbNewDocument:Z

    .line 645
    :cond_b0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    .line 646
    .local v13, path:Ljava/lang/String;
    const-string v0, "EvBaseViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ExternalStorage Path = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/MyApplication;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mMyApp:Lcom/infraware/polarisoffice/MyApplication;

    .line 649
    const v0, 0x7f0c0142

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/office/baseframe/EvBaseView;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    .line 650
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    iget v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTempPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookMarkPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mBookClipPath:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/infraware/office/baseframe/EvBaseView;->setInit(Landroid/app/Activity;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setEvListener()V

    .line 653
    const v0, 0x7f0c0130

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewTitle:Landroid/widget/TextView;

    .line 654
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/infraware/common/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    const v0, 0x7f0c015b

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTopSpace:Landroid/widget/LinearLayout;

    .line 658
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 660
    const-string v0, "EvBaseViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Oncreate docExtension = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 663
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_160

    .line 664
    const/4 v0, 0x1

    if-eq v5, v0, :cond_147

    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isShowLandscapeStatusbar()Z

    move-result v0

    if-eqz v0, :cond_1d3

    .line 665
    :cond_147
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v3}, Landroid/view/Window;->setFlags(II)V

    .line 669
    :goto_152
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mViewTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTopSpace:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    :cond_160
    new-instance v0, Lcom/infraware/common/event/SdCardEvent;

    invoke-direct {v0}, Lcom/infraware/common/event/SdCardEvent;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    .line 674
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {v0, p0}, Lcom/infraware/common/event/SdCardEvent;->setSdListener(Lcom/infraware/common/event/SdCardListener;)V

    .line 675
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSdcardIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 677
    new-instance v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mCloseReceiver:Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;

    .line 678
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 679
    .local v10, closeFilter:Landroid/content/IntentFilter;
    const-string v0, "com.infraware.polarisoffice.DEACTIVE"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mCloseReceiver:Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;

    invoke-virtual {p0, v0, v10}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 683
    new-instance v0, Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ImmManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 685
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;

    invoke-direct {v0}, Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPowerSaveOption:Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;

    .line 686
    return-void

    .line 609
    .end local v10           #closeFilter:Landroid/content/IntentFilter;
    .end local v13           #path:Ljava/lang/String;
    :sswitch_19b
    const/4 v2, 0x1

    .line 610
    goto/16 :goto_a6

    .line 612
    :sswitch_19e
    const/4 v2, 0x3

    .line 613
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "new_ppt_template"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 614
    goto/16 :goto_a6

    .line 616
    :sswitch_1ac
    const/4 v2, 0x2

    .line 617
    goto/16 :goto_a6

    .line 619
    :sswitch_1af
    const/4 v2, 0x1

    .line 620
    goto/16 :goto_a6

    .line 622
    :sswitch_1b2
    const/4 v2, 0x3

    .line 623
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "new_ppt_template"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 624
    goto/16 :goto_a6

    .line 626
    :sswitch_1c0
    const/4 v2, 0x2

    goto/16 :goto_a6

    .line 633
    :cond_1c3
    const/4 v0, 0x2

    if-ne v12, v0, :cond_aa

    .line 637
    const/4 v5, 0x2

    .line 638
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->getDocFileExtentionType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    goto/16 :goto_aa

    .line 667
    .restart local v13       #path:Ljava/lang/String;
    :cond_1d3
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v3}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_152

    .line 606
    :sswitch_data_1e0
    .sparse-switch
        0x1 -> :sswitch_19e
        0x2 -> :sswitch_19b
        0x5 -> :sswitch_1ac
        0x12 -> :sswitch_1af
        0x13 -> :sswitch_1b2
        0x14 -> :sswitch_1c0
    .end sparse-switch
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 17
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1865
    const-string v9, "EvBaseViewerActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onCreateDialog id = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    sparse-switch p1, :sswitch_data_462

    .line 2211
    :goto_17
    invoke-super/range {p0 .. p2}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_1b
    return-object v1

    .line 1869
    :sswitch_1c
    invoke-static {}, Lcom/infraware/polarisoffice/common/DlgFactory;->getInstance()Lcom/infraware/polarisoffice/common/DlgFactory;

    move-result-object v9

    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/infraware/common/util/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p0, v10}, Lcom/infraware/polarisoffice/common/DlgFactory;->createOpenProgressDlg(Landroid/app/Activity;Ljava/lang/String;)Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;

    move-result-object v1

    goto :goto_1b

    .line 1871
    :sswitch_2b
    invoke-static {}, Lcom/infraware/polarisoffice/common/DlgFactory;->getInstance()Lcom/infraware/polarisoffice/common/DlgFactory;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/infraware/polarisoffice/common/DlgFactory;->createSearchProgressDlg(Landroid/app/Activity;)Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;

    move-result-object v1

    goto :goto_1b

    .line 1875
    :sswitch_34
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1876
    .local v8, vi:Landroid/view/LayoutInflater;
    const v9, 0x7f030047

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1877
    .local v7, v:Landroid/view/View;
    const v9, 0x7f0c01a2

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1878
    .local v5, msg:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08026d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1879
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1880
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080246

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1881
    invoke-virtual {v9, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1882
    const v10, 0x7f080045

    invoke-virtual {p0, v10}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseViewerActivity$23;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$23;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1892
    new-instance v10, Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;

    invoke-direct {v10, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$24;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1904
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1905
    .local v1, dlg:Landroid/app/AlertDialog;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_1b

    .line 1910
    .end local v1           #dlg:Landroid/app/AlertDialog;
    .end local v5           #msg:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    .end local v8           #vi:Landroid/view/LayoutInflater;
    :sswitch_95
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1911
    .restart local v8       #vi:Landroid/view/LayoutInflater;
    const v9, 0x7f030047

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1912
    .restart local v7       #v:Landroid/view/View;
    const v9, 0x7f0c01a2

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1913
    .restart local v5       #msg:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08024d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1916
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080246

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1917
    invoke-virtual {v9, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 1915
    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPrevDlg:Landroid/app/AlertDialog;

    .line 1918
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPrevDlg:Landroid/app/AlertDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1919
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPrevDlg:Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 1923
    .end local v5           #msg:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    .end local v8           #vi:Landroid/view/LayoutInflater;
    :sswitch_e4
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1924
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080246

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1925
    const v10, 0x7f08024e

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1926
    const v10, 0x7f080043

    invoke-virtual {p0, v10}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseViewerActivity$25;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$25;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1931
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 1923
    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintNotice:Landroid/app/AlertDialog;

    .line 1932
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintNotice:Landroid/app/AlertDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1933
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintNotice:Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 1937
    :sswitch_11f
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1938
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f030054

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1939
    .local v4, layout:Landroid/view/View;
    const v9, 0x7f0c01dd

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageText:Landroid/widget/TextView;

    .line 1940
    const v9, 0x7f0c01de

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoTotalNum:Landroid/widget/TextView;

    .line 1941
    const v9, 0x7f0c01df

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;

    .line 1942
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->gotoWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1943
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoTotalNum:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " (1 ~ "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v11}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v11

    iget v11, v11, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1944
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 1946
    const v6, 0x7f0801b9

    .line 1947
    .local v6, nTitleId:I
    iget v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_191

    iget v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    const/16 v10, 0x13

    if-ne v9, v10, :cond_194

    .line 1948
    :cond_191
    const v6, 0x7f0801ba

    .line 1950
    :cond_194
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1951
    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1952
    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1953
    const v10, 0x7f08018f

    invoke-virtual {p0, v10}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseViewerActivity$26;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$26;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1968
    const v10, 0x7f080045

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseViewerActivity$27;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$27;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1976
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 1950
    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    .line 1978
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1979
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1980
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 1984
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v6           #nTitleId:I
    :sswitch_1d7
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1985
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080214

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1986
    const v10, 0x7f080272

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1987
    const v10, 0x7f080043

    invoke-virtual {p0, v10}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseViewerActivity$28;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$28;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 1992
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 1984
    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mSendfilePopup:Landroid/app/AlertDialog;

    .line 1993
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mSendfilePopup:Landroid/app/AlertDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1994
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mSendfilePopup:Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 1998
    :sswitch_212
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTTSLangPopup:Landroid/app/AlertDialog;

    if-eqz v9, :cond_221

    .line 2000
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTTSLangPopup:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_221

    .line 2001
    const/4 v1, 0x0

    goto/16 :goto_1b

    .line 2004
    :cond_221
    :try_start_221
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2005
    const v10, 0x7f08026c

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2006
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v10}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->getLanguages()[Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v11}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->getCurLanguage()I

    move-result v11

    new-instance v12, Lcom/infraware/office/baseframe/EvBaseViewerActivity$29;

    invoke-direct {v12, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$29;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2013
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 2004
    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTTSLangPopup:Landroid/app/AlertDialog;

    .line 2014
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTTSLangPopup:Landroid/app/AlertDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2015
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTTSLangPopup:Landroid/app/AlertDialog;
    :try_end_250
    .catch Ljava/lang/NullPointerException; {:try_start_221 .. :try_end_250} :catch_252

    goto/16 :goto_1b

    .line 2016
    :catch_252
    move-exception v2

    .line 2017
    .local v2, e:Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto/16 :goto_1b

    .line 2022
    .end local v2           #e:Ljava/lang/NullPointerException;
    :sswitch_256
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 2023
    .restart local v8       #vi:Landroid/view/LayoutInflater;
    const v9, 0x7f030046

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2025
    .restart local v7       #v:Landroid/view/View;
    const v9, 0x7f0c019d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintAll:Landroid/widget/RadioButton;

    .line 2026
    const v9, 0x7f0c019e

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintCurrent:Landroid/widget/RadioButton;

    .line 2027
    const v9, 0x7f0c01a0

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPage:Landroid/widget/RadioButton;

    .line 2028
    const v9, 0x7f0c019f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEditLayout:Landroid/widget/RelativeLayout;

    .line 2029
    const v9, 0x7f0c01a1

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    .line 2030
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 2031
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v10}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v10

    iget v10, v10, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2032
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/text/InputFilter;

    const/4 v11, 0x0

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    iget-object v13, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v13}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v13

    iget v13, v13, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, -0x1

    invoke-direct {v12, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2033
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2034
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2035
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2036
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintAll:Landroid/widget/RadioButton;

    const v10, 0x7f080248

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(I)V

    .line 2038
    iget v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    sparse-switch v9, :sswitch_data_490

    .line 2054
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintCurrent:Landroid/widget/RadioButton;

    const v10, 0x7f080249

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(I)V

    .line 2055
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPage:Landroid/widget/RadioButton;

    const v10, 0x7f08024c

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(I)V

    .line 2056
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEditLayout:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2059
    :goto_305
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintAll:Landroid/widget/RadioButton;

    new-instance v10, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;

    invoke-direct {v10, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2074
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintCurrent:Landroid/widget/RadioButton;

    new-instance v10, Lcom/infraware/office/baseframe/EvBaseViewerActivity$31;

    invoke-direct {v10, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$31;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2089
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPage:Landroid/widget/RadioButton;

    new-instance v10, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;

    invoke-direct {v10, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2103
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;

    new-instance v10, Lcom/infraware/office/baseframe/EvBaseViewerActivity$33;

    invoke-direct {v10, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$33;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2114
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2115
    const v10, 0x7f080247

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2116
    const v10, 0x7f080043

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseViewerActivity$34;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$34;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2122
    const v10, 0x7f080045

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseViewerActivity$35;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$35;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2126
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 2114
    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPagePopup:Landroid/app/AlertDialog;

    .line 2127
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPagePopup:Landroid/app/AlertDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2128
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPagePopup:Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 2042
    :sswitch_365
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintCurrent:Landroid/widget/RadioButton;

    const v10, 0x7f08024a

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(I)V

    .line 2043
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPage:Landroid/widget/RadioButton;

    const v10, 0x7f08024c

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(I)V

    .line 2044
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEditLayout:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_305

    .line 2048
    :sswitch_37c
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintCurrent:Landroid/widget/RadioButton;

    const v10, 0x7f08024b

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(I)V

    .line 2049
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEditLayout:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_305

    .line 2132
    .end local v7           #v:Landroid/view/View;
    .end local v8           #vi:Landroid/view/LayoutInflater;
    :sswitch_38d
    const/4 v0, 0x0

    .line 2133
    .local v0, content:Ljava/lang/String;
    iget v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCode:I

    const/16 v10, 0x33

    if-ne v9, v10, :cond_39a

    .line 2135
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindReplaceEnabled(Z)V

    goto/16 :goto_17

    .line 2139
    :cond_39a
    iget v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCode:I

    const/16 v10, 0x31

    if-ne v9, v10, :cond_40c

    .line 2141
    iget v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCount:I

    const/16 v10, 0x64

    if-lt v9, v10, :cond_3f0

    .line 2143
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08020b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2160
    :goto_3b1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2161
    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2162
    new-instance v10, Lcom/infraware/office/baseframe/EvBaseViewerActivity$36;

    invoke-direct {v10, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$36;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2167
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080043

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseViewerActivity$37;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$37;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2173
    new-instance v10, Lcom/infraware/office/baseframe/EvBaseViewerActivity$38;

    invoke-direct {v10, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$38;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2182
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 2160
    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgSearch:Landroid/app/AlertDialog;

    .line 2183
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgSearch:Landroid/app/AlertDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2184
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgSearch:Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 2147
    :cond_3f0
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080250

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2148
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b1

    .line 2153
    :cond_40c
    :try_start_40c
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->searchCount:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_415
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40c .. :try_end_415} :catch_417

    move-result-object v0

    goto :goto_3b1

    .line 2154
    :catch_417
    move-exception v2

    .line 2155
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v9, "EvBaseViewerActivity"

    const-string v10, "Hey, check string id"

    invoke-static {v9, v10}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    const/4 v1, 0x0

    goto/16 :goto_1b

    .line 2188
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    :sswitch_422
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2189
    const v10, 0x7f080023

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2190
    const v10, 0x7f0800b7

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2191
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080043

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/infraware/office/baseframe/EvBaseViewerActivity$39;

    invoke-direct {v11, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$39;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2197
    new-instance v10, Lcom/infraware/office/baseframe/EvBaseViewerActivity$40;

    invoke-direct {v10, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$40;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 2206
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 2188
    iput-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgMsg:Landroid/app/AlertDialog;

    .line 2207
    iget-object v9, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgMsg:Landroid/app/AlertDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2208
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgMsg:Landroid/app/AlertDialog;

    goto/16 :goto_1b

    .line 1866
    :sswitch_data_462
    .sparse-switch
        0x9 -> :sswitch_1c
        0xa -> :sswitch_2b
        0x23 -> :sswitch_34
        0x24 -> :sswitch_95
        0x25 -> :sswitch_e4
        0x28 -> :sswitch_212
        0x29 -> :sswitch_256
        0x2b -> :sswitch_1d7
        0x2c -> :sswitch_38d
        0x2d -> :sswitch_422
        0x2f -> :sswitch_11f
    .end sparse-switch

    .line 2038
    :sswitch_data_490
    .sparse-switch
        0x1 -> :sswitch_365
        0x5 -> :sswitch_37c
        0x13 -> :sswitch_365
        0x14 -> :sswitch_37c
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 11
    .parameter "menu"

    .prologue
    const v8, 0x7f0c0335

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1433
    iget-boolean v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbLoadComplete:Z

    if-eqz v5, :cond_70

    .line 1435
    const v5, 0x7f0c0334

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1436
    .local v1, menugotoItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_25

    .line 1437
    const v3, 0x7f0801b9

    .line 1438
    .local v3, nTitleId:I
    iget v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    if-eq v5, v7, :cond_1f

    iget v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    const/16 v6, 0x13

    if-ne v5, v6, :cond_22

    .line 1439
    :cond_1f
    const v3, 0x7f0801ba

    .line 1440
    :cond_22
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1443
    .end local v3           #nTitleId:I
    :cond_25
    iget-boolean v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbDisableSendMenu:Z

    if-eqz v5, :cond_35

    .line 1444
    const v5, 0x7f0c032f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1445
    .local v2, menuttsItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_35

    .line 1446
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1449
    .end local v2           #menuttsItem:Landroid/view/MenuItem;
    :cond_35
    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-nez v5, :cond_56

    .line 1451
    iget v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEV_VIEW_MODE:I

    if-ne v5, v7, :cond_71

    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v5

    invoke-static {v5}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->isSupportTTS(I)Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-static {p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->isSupportTTS(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 1452
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1453
    .local v0, menuItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_56

    .line 1454
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1459
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_56
    :goto_56
    iget-object v5, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    if-nez v5, :cond_6c

    .line 1461
    const v5, 0x7f0c031e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1462
    .restart local v0       #menuItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_6c

    .line 1463
    invoke-static {p0}, Lcom/infraware/office/baseframe/porting/EvPrintHelper;->isSupportPrint(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 1464
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1471
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_6c
    :goto_6c
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    .line 1474
    .end local v1           #menugotoItem:Landroid/view/MenuItem;
    :cond_70
    return v4

    .line 1457
    .restart local v1       #menugotoItem:Landroid/view/MenuItem;
    :cond_71
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_56

    .line 1466
    .restart local v0       #menuItem:Landroid/view/MenuItem;
    :cond_75
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6c
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1317
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onDestroy()V

    .line 1318
    const-string v0, "EvBaseViewerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dismissPopupWindow()Z

    .line 1320
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPowerSaveOption:Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;

    .line 1322
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1324
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mCloseReceiver:Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;->isReceivedDeactiveAction()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1325
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IClose()V

    .line 1327
    :cond_23
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oSDReceiver:Lcom/infraware/common/event/SdCardEvent;

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1328
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mCloseReceiver:Lcom/infraware/office/baseframe/EvBaseViewerActivity$CloseActionReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1329
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->destory()V

    .line 1330
    iput-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 1333
    :cond_34
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1334
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1645
    packed-switch p1, :pswitch_data_16

    .line 1654
    invoke-super {p0, p1, p2}, Lcom/infraware/common/baseactivity/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_8
    :goto_8
    return v0

    .line 1648
    :pswitch_9
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->isShowSearchBar()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1649
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->InitFindBar()V

    .line 1650
    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindBarShow(Z)V

    goto :goto_8

    .line 1645
    :pswitch_data_16
    .packed-switch 0x54
        :pswitch_9
    .end packed-switch
.end method

.method public onLocaleChange(I)V
    .registers 9
    .parameter "nLocale"

    .prologue
    const/16 v6, 0x2d

    const/16 v5, 0x2c

    const/16 v4, 0x2b

    const/16 v3, 0x28

    const/16 v2, 0x25

    .line 2533
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setFindString()V

    .line 2534
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-eqz v1, :cond_16

    .line 2535
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->chaeckLanguage()V

    .line 2536
    :cond_16
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mZoomMenu:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mZoomMenu:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2537
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mZoomMenu:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2538
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onZoomMenu(Z)V

    .line 2540
    :cond_2b
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgSearch:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3d

    .line 2542
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgSearch:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2544
    invoke-virtual {p0, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 2545
    invoke-virtual {p0, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 2548
    :cond_3d
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgMsg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4f

    .line 2550
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgMsg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 2552
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 2553
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 2556
    :cond_4f
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTTSLangPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_66

    .line 2558
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTTSLangPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2560
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mTTSLangPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2561
    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 2562
    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 2565
    :cond_66
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintNotice:Landroid/app/AlertDialog;

    if-eqz v1, :cond_7d

    .line 2567
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintNotice:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 2569
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintNotice:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2570
    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 2571
    invoke-virtual {p0, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 2574
    :cond_7d
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c1

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 2576
    const v0, 0x7f0801b9

    .line 2577
    .local v0, nTitleId:I
    iget v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_97

    iget v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_9a

    .line 2578
    :cond_97
    const v0, 0x7f0801ba

    .line 2579
    :cond_9a
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2580
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageText:Landroid/widget/TextView;

    const v2, 0x7f080244

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2582
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f08018f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 2583
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 2586
    .end local v0           #nTitleId:I
    :cond_c1
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mSendfilePopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mSendfilePopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 2588
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mSendfilePopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2589
    invoke-virtual {p0, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 2590
    invoke-virtual {p0, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 2592
    :cond_d8
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->isShowingDialog()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 2594
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->dismissDictionaryDialog()V

    .line 2595
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvDictionaryHelper:Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;

    invoke-virtual {v1, p0}, Lcom/infraware/office/baseframe/porting/EvDictionaryHelper;->setDictionaryPopup(Landroid/app/Activity;)V

    .line 2597
    :cond_ea
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 16
    .parameter "item"

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x1

    .line 1558
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_104

    .line 1637
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1639
    :goto_f
    return v0

    .line 1560
    :sswitch_10
    invoke-virtual {p0, v6}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onZoomMenu(Z)V

    :cond_13
    :goto_13
    move v0, v13

    .line 1639
    goto :goto_f

    .line 1563
    :sswitch_15
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->ISetViewMode(I)V

    goto :goto_13

    .line 1566
    :sswitch_1c
    new-instance v11, Landroid/content/Intent;

    const-class v0, Lcom/infraware/polarisoffice/viewer/BookClipActivity;

    invoke-direct {v11, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1567
    .local v11, intent:Landroid/content/Intent;
    const/4 v0, 0x7

    invoke-virtual {p0, v11, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 1570
    .end local v11           #intent:Landroid/content/Intent;
    :sswitch_28
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->InitFindBar()V

    .line 1571
    invoke-virtual {p0, v13}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->FindBarShow(Z)V

    goto :goto_13

    .line 1574
    :sswitch_2f
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->OnGotoDialog()V

    goto :goto_13

    .line 1577
    :sswitch_33
    const/4 v10, 0x0

    .line 1578
    .local v10, bSendFile:Z
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->GetOpenType()I

    move-result v0

    if-ne v0, v13, :cond_4b

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IDocumentModified_Editor()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1579
    const/4 v10, 0x0

    .line 1585
    :goto_45
    if-eqz v10, :cond_57

    .line 1586
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onSendFilePath()V

    goto :goto_13

    .line 1580
    :cond_4b
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IDocumentModified_Editor()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1581
    const/4 v10, 0x0

    goto :goto_45

    .line 1583
    :cond_55
    const/4 v10, 0x1

    goto :goto_45

    .line 1588
    :cond_57
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    goto :goto_13

    .line 1591
    .end local v10           #bSendFile:Z
    :sswitch_5d
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-nez v0, :cond_68

    .line 1592
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 1593
    :cond_68
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->initialize()V

    goto :goto_13

    .line 1596
    :sswitch_6e
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onSettingActivity()V

    goto :goto_13

    .line 1601
    :sswitch_72
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    if-nez v0, :cond_13

    .line 1602
    new-instance v0, Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    invoke-direct {v0, p0}, Lcom/infraware/office/baseframe/porting/EvPrintHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 1603
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IDocumentModified_Editor()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1604
    iput-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 1605
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    goto :goto_13

    .line 1608
    :cond_8d
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FV04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a5

    .line 1609
    iput-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    .line 1610
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    goto/16 :goto_13

    .line 1613
    :cond_a5
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    .line 1614
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISaveBookMark()V

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1618
    .local v8, path:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1619
    .local v12, newFolder:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1621
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1624
    invoke-virtual {v12, v13, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v9

    .line 1625
    .local v9, b:Z
    invoke-virtual {v12, v13, v6}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v9

    .line 1626
    invoke-virtual {v12, v13, v6}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v9

    .line 1627
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v2

    iget v2, v2, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v3

    iget v3, v3, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    move v5, v1

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetPrintEx(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v13}, Lcom/infraware/office/baseframe/EvBaseView;->setPrintMode(Z)V

    .line 1629
    iput-boolean v13, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbPrint:Z

    goto/16 :goto_13

    .line 1558
    nop

    :sswitch_data_104
    .sparse-switch
        0x7f0c031e -> :sswitch_72
        0x7f0c031f -> :sswitch_6e
        0x7f0c032a -> :sswitch_10
        0x7f0c032c -> :sswitch_28
        0x7f0c032d -> :sswitch_1c
        0x7f0c032f -> :sswitch_33
        0x7f0c0333 -> :sswitch_15
        0x7f0c0334 -> :sswitch_2f
        0x7f0c0335 -> :sswitch_5d
    .end sparse-switch
.end method

.method protected onPasswordDoc(I)Z
    .registers 10
    .parameter "nErrorCode"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 961
    const/16 v3, -0x16

    if-ne p1, v3, :cond_18

    .line 962
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0802fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 965
    :cond_18
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03003a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 966
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0c0185

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 967
    .local v1, etPassword:Landroid/widget/EditText;
    new-instance v3, Lcom/infraware/office/baseframe/EvBaseViewerActivity$15;

    invoke-direct {v3, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$15;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 978
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 979
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080055

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 981
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 982
    const v3, 0x7f080043

    new-instance v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity$16;

    invoke-direct {v4, p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$16;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 991
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 992
    new-instance v3, Lcom/infraware/office/baseframe/EvBaseViewerActivity$17;

    invoke-direct {v3, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$17;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 998
    const v3, 0x7f080045

    new-instance v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity$18;

    invoke-direct {v4, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$18;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1005
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    .line 1007
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1008
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1009
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1011
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1013
    return v7
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-eqz v0, :cond_9

    .line 742
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->stop()V

    .line 744
    :cond_9
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dismissPopupWindow()Z

    .line 747
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onPause()V

    .line 749
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onPause()V

    .line 750
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1658
    invoke-super {p0, p1, p2}, Lcom/infraware/common/baseactivity/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1659
    packed-switch p1, :pswitch_data_c

    .line 1668
    :goto_6
    :pswitch_6
    return-void

    .line 1665
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    goto :goto_6

    .line 1659
    nop

    :pswitch_data_c
    .packed-switch 0x25
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 12
    .parameter "menu"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1485
    const v7, 0x7f0c0330

    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 1487
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->isShowSearchBar()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1553
    :cond_e
    :goto_e
    return v6

    .line 1490
    :cond_f
    iget-boolean v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbLoadComplete:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-nez v7, :cond_e

    .line 1493
    const v7, 0x7f0c0334

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1494
    .local v3, menugotoItem:Landroid/view/MenuItem;
    if-eqz v3, :cond_33

    .line 1495
    const v5, 0x7f0801b9

    .line 1496
    .local v5, nTitleId:I
    iget v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    if-eq v7, v9, :cond_2d

    iget v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    const/16 v8, 0x13

    if-ne v7, v8, :cond_30

    .line 1497
    :cond_2d
    const v5, 0x7f0801ba

    .line 1498
    :cond_30
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1501
    .end local v5           #nTitleId:I
    :cond_33
    iget-boolean v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbDisableSendMenu:Z

    if-eqz v7, :cond_43

    .line 1502
    const v7, 0x7f0c032f

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1503
    .local v4, menuttsItem:Landroid/view/MenuItem;
    if-eqz v4, :cond_43

    .line 1504
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1507
    .end local v4           #menuttsItem:Landroid/view/MenuItem;
    :cond_43
    iget v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEV_VIEW_MODE:I

    if-ne v7, v9, :cond_66

    .line 1509
    const v7, 0x7f0c0335

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1510
    .restart local v4       #menuttsItem:Landroid/view/MenuItem;
    if-eqz v4, :cond_66

    .line 1512
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v7

    invoke-static {v7}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->isSupportTTS(I)Z

    move-result v7

    if-eqz v7, :cond_c2

    invoke-static {p0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->isSupportTTS(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 1513
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1514
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1521
    .end local v4           #menuttsItem:Landroid/view/MenuItem;
    :cond_66
    :goto_66
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvPrintHelper:Lcom/infraware/office/baseframe/porting/EvPrintHelper;

    if-nez v7, :cond_93

    .line 1523
    const v7, 0x7f0c031e

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1524
    .local v2, menuItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_93

    .line 1525
    invoke-static {p0}, Lcom/infraware/office/baseframe/porting/EvPrintHelper;->isSupportPrint(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 1526
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1527
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v7}, Lcom/infraware/office/evengine/EvInterface;->IDocumentModified_Editor()Z

    move-result v7

    if-nez v7, :cond_ca

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    iget v7, v7, Lcom/infraware/office/baseframe/EvBaseView;->mOpenType:I

    if-ne v7, v9, :cond_ca

    .line 1528
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isShowDisableMenuItem()Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 1529
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1540
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_93
    :goto_93
    iget v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEV_VIEW_MODE:I

    if-ne v7, v9, :cond_b2

    .line 1541
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1542
    .local v1, f:Ljava/io/File;
    const/4 v0, 0x0

    .line 1543
    .local v0, bEnable:Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_d2

    const/4 v0, 0x0

    .line 1546
    :goto_a6
    const v7, 0x7f0c032d

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1547
    .restart local v2       #menuItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_b2

    .line 1548
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1551
    .end local v0           #bEnable:Z
    .end local v1           #f:Ljava/io/File;
    .end local v2           #menuItem:Landroid/view/MenuItem;
    :cond_b2
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v7, v6}, Lcom/infraware/office/baseframe/EvBaseView;->onShowIme(Z)V

    .line 1552
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v6}, Lcom/infraware/office/baseframe/EvBaseView;->cancelGesture()V

    .line 1553
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    goto/16 :goto_e

    .line 1517
    .restart local v4       #menuttsItem:Landroid/view/MenuItem;
    :cond_c2
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_66

    .line 1531
    .end local v4           #menuttsItem:Landroid/view/MenuItem;
    .restart local v2       #menuItem:Landroid/view/MenuItem;
    :cond_c6
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_93

    .line 1534
    :cond_ca
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_93

    .line 1536
    :cond_ce
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_93

    .line 1544
    .end local v2           #menuItem:Landroid/view/MenuItem;
    .restart local v0       #bEnable:Z
    .restart local v1       #f:Ljava/io/File;
    :cond_d2
    const/4 v0, 0x1

    goto :goto_a6
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/16 v4, 0x2d

    const/4 v3, 0x0

    .line 706
    const-string v0, "EvBaseViewerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnResume mView mWidth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    sget-object v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_36

    .line 708
    sget-object v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mErrorAndClosePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 710
    :cond_36
    invoke-virtual {p0, v3}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setSheetTitle(I)V

    .line 713
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbShowSearchBar:Z

    if-eqz v0, :cond_42

    .line 714
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ImmManager;->onResume()V

    .line 716
    :cond_42
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onResume()V

    .line 718
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/infraware/common/util/FileUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 720
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbNewDocument:Z

    if-eqz v0, :cond_58

    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbSave:Z

    if-eqz v0, :cond_58

    .line 721
    iput-boolean v3, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbNewDocument:Z

    .line 737
    :cond_57
    :goto_57
    return-void

    .line 724
    :cond_58
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbNewDocument:Z

    if-nez v0, :cond_57

    .line 727
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgMsg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6c

    .line 729
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDlgMsg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_57

    .line 732
    invoke-virtual {p0, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    goto :goto_57

    .line 735
    :cond_6c
    invoke-virtual {p0, v4}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->showDialog(I)V

    goto :goto_57
.end method

.method public onSendFilePath()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 1790
    const/4 v3, 0x0

    .line 1791
    .local v3, mimeType:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1792
    .local v0, f:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 1795
    .local v8, uri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1796
    .local v1, idx_exe:I
    iget-object v10, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1798
    .local v5, temp:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1800
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1802
    if-nez v3, :cond_45

    .line 1803
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "application/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1805
    :cond_45
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    const-string v10, "text/plain"

    invoke-virtual {v3, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_7c

    .line 1808
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    const/16 v12, 0x7d0

    invoke-static {v10, v11, v12}, Lcom/infraware/common/util/FileUtils;->getTextFromFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1809
    .local v6, text:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->beAttatchTextFileToMMSBody()Z

    move-result v10

    if-eqz v10, :cond_6c

    .line 1810
    const-string v10, "sms_body"

    invoke-virtual {v2, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1811
    const-string v10, "PolarisOfficeMode"

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1813
    :cond_6c
    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->isSendTextFileAsExtraText(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 1814
    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {v2, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1815
    const-string v10, "isSendToText"

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1818
    .end local v6           #text:Ljava/lang/String;
    :cond_7c
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1819
    const-string v10, "fromAppName"

    const-string v11, "PolarisOffice"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1820
    const/high16 v10, 0x1000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1823
    const v10, 0x7f08030e

    invoke-virtual {p0, v10}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1824
    .local v4, strVendor:Ljava/lang/String;
    const-string v10, "- FV09"

    invoke-virtual {v4, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_af

    .line 1825
    const v10, 0x7f080283

    invoke-virtual {p0, v10}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1829
    .local v7, title:Ljava/lang/CharSequence;
    :goto_a7
    invoke-static {v2, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    .line 1830
    .local v9, wrapperIntent:Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1831
    return-void

    .line 1827
    .end local v7           #title:Ljava/lang/CharSequence;
    .end local v9           #wrapperIntent:Landroid/content/Intent;
    :cond_af
    const v10, 0x7f0800cb

    invoke-virtual {p0, v10}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #title:Ljava/lang/CharSequence;
    goto :goto_a7
.end method

.method public onSettingActivity()V
    .registers 2

    .prologue
    .line 1337
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->callSettingActivity(Landroid/app/Activity;I)V

    .line 1338
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPowerSaveOption:Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->getDocFileExtentionType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 2682
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPowerSaveOption:Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;

    invoke-virtual {v0, p0}, Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;->setPowerSaveOnResume(Landroid/content/Context;)V

    .line 2683
    :cond_14
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onStart()V

    .line 2684
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPowerSaveOption:Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->getDocFileExtentionType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 2689
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPowerSaveOption:Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;

    invoke-virtual {v0, p0}, Lcom/infraware/office/baseframe/porting/EvPowerSaveOption;->setPowerRestoreOnPause(Landroid/content/Context;)V

    .line 2690
    :cond_14
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onStop()V

    .line 2691
    return-void
.end method

.method protected onWritePasswordDoc(Ljava/lang/String;)Z
    .registers 11
    .parameter "strPass"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 848
    move-object v2, p1

    .line 849
    .local v2, strPassword:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03003a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 850
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0c0185

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 851
    .local v1, etPassword:Landroid/widget/EditText;
    new-instance v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity$11;

    invoke-direct {v4, p0, v1, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$11;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 863
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 864
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f080055

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 866
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 867
    const v4, 0x7f080043

    new-instance v5, Lcom/infraware/office/baseframe/EvBaseViewerActivity$12;

    invoke-direct {v5, p0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$12;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 874
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 875
    new-instance v4, Lcom/infraware/office/baseframe/EvBaseViewerActivity$13;

    invoke-direct {v4, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$13;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 882
    const v4, 0x7f080045

    new-instance v5, Lcom/infraware/office/baseframe/EvBaseViewerActivity$14;

    invoke-direct {v5, p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$14;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 890
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    .line 892
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 893
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 894
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 896
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->m_oPasswordPopup:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 898
    return v8
.end method

.method public onZoomMenu(Z)V
    .registers 20
    .parameter "isToolbar"

    .prologue
    .line 1699
    const/4 v3, 0x0

    .line 1700
    .local v3, ZOOM_MENU_FIT_PAGE:I
    const/4 v4, 0x1

    .line 1701
    .local v4, ZOOM_MENU_FIT_WIDTH:I
    const/4 v2, 0x2

    .line 1703
    .local v2, ZOOM_MENU_CUSTOM:I
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 1704
    .local v12, zoomStringVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 1706
    .local v15, zoomValueVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/infraware/common/setting/SettingActivity;->getCustomZoom()I

    move-result v7

    .line 1707
    .local v7, nCustomZoom:I
    if-nez p1, :cond_92

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getDocExtensionType()I

    move-result v16

    sparse-switch v16, :sswitch_data_19e

    .line 1724
    const v16, 0x7f080195

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1725
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1728
    :goto_33
    :sswitch_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mDocExtensionType:I

    move/from16 v16, v0

    const/16 v17, 0xc

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5a

    .line 1730
    const v16, 0x7f080113

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1731
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1734
    :cond_5a
    new-instance v16, Ljava/lang/StringBuilder;

    const v17, 0x7f080209

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1735
    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1738
    :cond_92
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getZoomValueArray()[I

    move-result-object v9

    .line 1739
    .local v9, validZoomValueArray:[I
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v10, v0, [I

    fill-array-data v10, :array_1b4

    .line 1741
    .local v10, zoomList:[I
    const/4 v5, 0x0

    .local v5, index:I
    :goto_a0
    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v5, v0, :cond_168

    .line 1749
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v11, v0, [Ljava/lang/String;

    .line 1750
    .local v11, zoomMenuString:[Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1751
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/Integer;

    .line 1752
    .local v14, zoomValue:[Ljava/lang/Integer;
    invoke-virtual {v15, v14}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v6

    .line 1755
    .local v6, info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    new-instance v16, Ljava/lang/StringBuilder;

    const v17, 0x7f0801f3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, " - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v6, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nZoomRatio:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1757
    .local v13, zoomTitle:Ljava/lang/String;
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1758
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 1759
    new-instance v17, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v7}, Lcom/infraware/office/baseframe/EvBaseViewerActivity$22;-><init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;[Ljava/lang/Integer;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    .line 1782
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 1757
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mZoomMenu:Landroid/app/AlertDialog;

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mZoomMenu:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mZoomMenu:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    .line 1786
    return-void

    .line 1713
    .end local v5           #index:I
    .end local v6           #info:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    .end local v9           #validZoomValueArray:[I
    .end local v10           #zoomList:[I
    .end local v11           #zoomMenuString:[Ljava/lang/String;
    .end local v13           #zoomTitle:Ljava/lang/String;
    .end local v14           #zoomValue:[Ljava/lang/Integer;
    :sswitch_132
    const v16, 0x7f080196

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1714
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    .line 1718
    :sswitch_14d
    const v16, 0x7f080197

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1719
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    .line 1742
    .restart local v5       #index:I
    .restart local v9       #validZoomValueArray:[I
    .restart local v10       #zoomList:[I
    :cond_168
    aget v16, v10, v5

    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    .line 1743
    .local v8, validZoomIndex:I
    if-ltz v8, :cond_199

    .line 1744
    new-instance v16, Ljava/lang/StringBuilder;

    aget v17, v9, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1745
    aget v16, v9, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1741
    :cond_199
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a0

    .line 1709
    nop

    :sswitch_data_19e
    .sparse-switch
        0x1 -> :sswitch_132
        0x5 -> :sswitch_14d
        0xc -> :sswitch_33
        0x13 -> :sswitch_132
        0x14 -> :sswitch_14d
    .end sparse-switch

    .line 1739
    :array_1b4
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public prcessLoadComplete()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 807
    iget-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbLoadComplete:Z

    if-nez v0, :cond_2c

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbLoadComplete:Z

    .line 810
    invoke-virtual {p0, v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->setSheetTitle(I)V

    .line 813
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPrevDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    .line 815
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPrevDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 816
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->removeDialog(I)V

    .line 821
    :cond_1c
    iget-object v6, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    sget-object v2, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->dialogId:Ljava/lang/String;

    const/16 v3, 0x9

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 823
    :cond_2c
    return-void
.end method

.method public abstract setEvListener()V
.end method

.method public setMatchCase(I)V
    .registers 2
    .parameter "b"

    .prologue
    .line 357
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchCase:I

    return-void
.end method

.method public setMatchWhole(I)V
    .registers 2
    .parameter "b"

    .prologue
    .line 358
    iput p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbMatchWhole:I

    return-void
.end method

.method protected setSheetTitle(I)V
    .registers 2
    .parameter "nCurrentPage"

    .prologue
    .line 2677
    return-void
.end method

.method public setShowSearchBar(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mbShowSearchBar:Z

    return-void
.end method
