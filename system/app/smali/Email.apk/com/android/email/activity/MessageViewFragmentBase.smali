.class public abstract Lcom/android/email/activity/MessageViewFragmentBase;
.super Landroid/app/Fragment;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;,
        Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;,
        Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;,
        Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;,
        Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;,
        Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;,
        Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    }
.end annotation


# static fields
.field private static final IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

.field private static PREVIEW_ICON_HEIGHT:I

.field private static PREVIEW_ICON_WIDTH:I

.field private static final WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

.field private static sZoomSizes:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private mAddressesView:Landroid/widget/TextView;

.field private mAlwaysShowPicturesButton:Landroid/view/View;

.field private mAttachmentCount:I

.field private mAttachmentTab:Landroid/widget/TextView;

.field private mAttachments:Landroid/widget/LinearLayout;

.field private mAttachmentsScroll:Landroid/view/View;

.field private mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

.field private mContactStatusState:I

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

.field private mCurrentTab:I

.field private mDateTimeView:Landroid/widget/TextView;

.field private mDetailsCollapsed:Landroid/view/View;

.field private mDetailsExpanded:Landroid/view/View;

.field private mDetailsFilled:Z

.field private mFromAddressView:Landroid/widget/TextView;

.field private mFromBadge:Landroid/widget/ImageView;

.field private mFromNameView:Landroid/widget/TextView;

.field private mHtmlTextRaw:Ljava/lang/String;

.field private mHtmlTextWebView:Ljava/lang/String;

.field private mInviteScroll:Landroid/view/View;

.field private mInviteTab:Landroid/widget/TextView;

.field private mIsMessageLoadedForTest:Z

.field private mLoadingProgress:Landroid/view/View;

.field private mMainView:Landroid/view/View;

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mMessageContentView:Landroid/webkit/WebView;

.field private mMessageId:J

.field private mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

.field private mMessageTab:Landroid/widget/TextView;

.field private mQuickContactLookupUri:Landroid/net/Uri;

.field private mRestoredPictureLoaded:Z

.field private mRestoredTab:I

.field private mSenderPresenceView:Landroid/widget/ImageView;

.field private mShowPicturesTab:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mTabFlags:I

.field private mTabSection:Landroid/view/View;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x3e

    .line 105
    const-string v0, "<(?i)img\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    .line 107
    const-string v0, "(?i)http|https://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    .line 109
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_WIDTH:I

    .line 110
    sput v1, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_HEIGHT:I

    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->sZoomSizes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 141
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    .line 142
    iput-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    .line 197
    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    .line 202
    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    .line 206
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 244
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 1910
    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MessageViewFragmentBase;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->queryContactStatus()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageViewFragmentBase;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/email/activity/MessageViewFragmentBase;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfoFromView(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updatePreviewIcon(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-static {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIcon(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()V

    return-void
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 15
    .parameter

    .prologue
    const/4 v12, 0x0

    .line 1482
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1483
    const v1, 0x7f040038

    invoke-virtual {v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1485
    const v0, 0x7f0e004c

    invoke-static {v9, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1486
    const v1, 0x7f0e0091

    invoke-static {v9, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1487
    const v2, 0x7f0e0090

    invoke-static {v9, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1488
    const v3, 0x7f0e0095

    invoke-static {v9, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1489
    const v4, 0x7f0e0094

    invoke-static {v9, v4}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1490
    const v5, 0x7f0e0092

    invoke-static {v9, v5}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1491
    const v6, 0x7f0e0093

    invoke-static {v9, v6}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1492
    const v7, 0x7f0e0001

    invoke-static {v9, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1493
    const v8, 0x7f0e0081

    invoke-static {v9, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 1495
    new-instance v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget-object v11, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, p1, v8, v12}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/widget/ProgressBar;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    .line 1499
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 1500
    const/4 v8, 0x1

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z
    invoke-static {v10, v8}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1002(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z

    .line 1503
    :cond_74
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->openButton:Landroid/widget/Button;
    invoke-static {v10, v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2602(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1504
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/Button;
    invoke-static {v10, v4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2702(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1505
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;
    invoke-static {v10, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$802(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1506
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->infoButton:Landroid/widget/Button;
    invoke-static {v10, v6}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2802(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1507
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;
    invoke-static {v10, v7}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$902(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1508
    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;
    invoke-static {v10, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2502(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1510
    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 1512
    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1513
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1514
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1515
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1516
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1517
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    iget-object v2, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, v10, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSize:J

    invoke-static {v0, v2, v3}, Lcom/android/email/activity/UiUtilities;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1523
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1524
    return-void
.end method

.method private blockNetworkLoads(Z)V
    .registers 3
    .parameter "block"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_d

    .line 649
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 651
    :cond_d
    return-void
.end method

.method private cancelAllTasks()V
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->unregister()V

    .line 455
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 456
    return-void
.end method

.method private cleanupDetachedViews()V
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_c

    .line 405
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    .line 408
    :cond_c
    return-void
.end method

.method private final clearTabFlags(I)V
    .registers 4
    .parameter "tabFlags"

    .prologue
    .line 544
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 545
    return-void
.end method

.method private doFinishLoadAttachment(J)V
    .registers 5
    .parameter "attachmentId"

    .prologue
    .line 900
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    .line 901
    .local v0, info:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v0, :cond_d

    .line 902
    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1002(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)Z

    .line 903
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 905
    :cond_d
    return-void
.end method

.method private findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .registers 5
    .parameter "attachmentId"

    .prologue
    .line 1747
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentView(J)Landroid/view/View;

    move-result-object v0

    .line 1748
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_d

    .line 1749
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1751
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private findAttachmentInfoFromView(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .registers 8
    .parameter "attachmentId"

    .prologue
    .line 1527
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_7
    if-ge v2, v1, :cond_1f

    .line 1528
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1530
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1c

    .line 1534
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :goto_1b
    return-object v0

    .line 1527
    .restart local v0       #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1534
    .end local v0           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private findAttachmentView(J)Landroid/view/View;
    .registers 9
    .parameter "attachmentId"

    .prologue
    .line 1736
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_7
    if-ge v2, v1, :cond_1f

    .line 1737
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1738
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1739
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1c

    .line 1743
    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #view:Landroid/view/View;
    :goto_1b
    return-object v3

    .line 1736
    .restart local v0       #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .restart local v3       #view:Landroid/view/View;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1743
    .end local v0           #attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #view:Landroid/view/View;
    :cond_1f
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method private formatDate(JZ)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 1630
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1631
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 1632
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x80011

    if-eqz p3, :cond_1e

    const/4 v2, 0x4

    :goto_12
    or-int v6, v3, v2

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 1637
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1632
    :cond_1e
    const/16 v2, 0x8

    goto :goto_12
.end method

.method private static getPreviewIcon(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 1238
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-wide v0, p1, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mId:J

    sget v4, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_WIDTH:I

    sget v5, Lcom/android/email/activity/MessageViewFragmentBase;->PREVIEW_ICON_HEIGHT:I

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentThumbnailUri(JJII)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 1246
    :goto_18
    return-object v0

    .line 1244
    :catch_19
    move-exception v0

    .line 1245
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attachment preview failed with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getTabContentViewForFlag(I)Landroid/view/View;
    .registers 3
    .parameter "tabFlag"

    .prologue
    .line 636
    packed-switch p1, :pswitch_data_12

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 638
    :pswitch_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    .line 642
    :goto_b
    return-object v0

    .line 640
    :pswitch_c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsScroll:Landroid/view/View;

    goto :goto_b

    .line 642
    :pswitch_f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteScroll:Landroid/view/View;

    goto :goto_b

    .line 636
    :pswitch_data_12
    .packed-switch 0x65
        :pswitch_9
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method private getTabViewForFlag(I)Landroid/view/View;
    .registers 3
    .parameter "tabFlag"

    .prologue
    .line 624
    packed-switch p1, :pswitch_data_12

    .line 632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 626
    :pswitch_9
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 630
    :goto_b
    return-object v0

    .line 628
    :pswitch_c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    goto :goto_b

    .line 630
    :pswitch_f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    goto :goto_b

    .line 624
    :pswitch_data_12
    .packed-switch 0x65
        :pswitch_9
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method private getWebViewZoom()I
    .registers 5

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 521
    .local v0, density:F
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v1

    .line 522
    .local v1, zoom:I
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->sZoomSizes:[Ljava/lang/String;

    if-nez v2, :cond_29

    .line 523
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->sZoomSizes:[Ljava/lang/String;

    .line 526
    :cond_29
    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->sZoomSizes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method private hideDetails()V
    .registers 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsCollapsed:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 946
    return-void
.end method

.method private initContactStatusViews()V
    .registers 2

    .prologue
    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    .line 532
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDefaultQuickContactBadgeImage()V

    .line 533
    return-void
.end method

.method private static isVisible(Landroid/view/View;)Z
    .registers 2
    .parameter "v"

    .prologue
    .line 564
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static makeVisible(Landroid/view/View;Z)V
    .registers 4
    .parameter "v"
    .parameter "visible"

    .prologue
    .line 557
    if-eqz p1, :cond_f

    const/4 v0, 0x0

    .line 558
    .local v0, visibility:I
    :goto_3
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_e

    .line 559
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :cond_e
    return-void

    .line 557
    .end local v0           #visibility:I
    :cond_f
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 4
    .parameter "attachment"

    .prologue
    .line 887
    iget-wide v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/service/AttachmentDownloadService;->cancelQueuedAttachment(J)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 888
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 889
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 890
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->hideProgress()V

    .line 892
    :cond_1c
    return-void
.end method

.method private onClickSender()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 667
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v4

    if-nez v4, :cond_9

    .line 698
    :cond_8
    :goto_8
    return-void

    .line 668
    :cond_9
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 669
    .local v2, senderEmail:Lcom/android/emailcommon/mail/Address;
    if-eqz v2, :cond_8

    .line 671
    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    if-nez v4, :cond_1a

    .line 673
    iput v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    goto :goto_8

    .line 676
    :cond_1a
    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContactStatusState:I

    if-eq v4, v5, :cond_8

    .line 680
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    if-eqz v4, :cond_2d

    .line 681
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mQuickContactLookupUri:Landroid/net/Uri;

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v8}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    goto :goto_8

    .line 685
    :cond_2d
    const-string v4, "mailto"

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 686
    .local v1, mailUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 690
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, senderPersonal:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 692
    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    :cond_4d
    const/high16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_8
.end method

.method private onInfoAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 5
    .parameter "attachment"

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mDenyFlags:I

    invoke-static {v1, v2}, Lcom/android/email/activity/AttachmentInfoDialog;->newInstance(Landroid/content/Context;I)Lcom/android/email/activity/AttachmentInfoDialog;

    move-result-object v0

    .line 850
    .local v0, dialog:Lcom/android/email/activity/AttachmentInfoDialog;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/AttachmentInfoDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method private onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 9
    .parameter "attachment"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 854
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 857
    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->getQueueSize()I

    move-result v0

    if-nez v0, :cond_32

    .line 860
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 862
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$1;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/email/activity/MessageViewFragmentBase$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$1;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 881
    :goto_23
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgressIndeterminate()V

    .line 882
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->loadAttachment(JJJ)V

    .line 883
    return-void

    .line 879
    :cond_32
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_23
.end method

.method private onOpenAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 5
    .parameter

    .prologue
    const v1, 0x7f08007e

    .line 822
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowInstall:Z

    if-eqz v0, :cond_2d

    .line 825
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowSave:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_19

    .line 826
    :cond_11
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 845
    :goto_18
    return-void

    .line 830
    :cond_19
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isFileSaved()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 831
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->performAttachmentSave(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 833
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_18

    .line 840
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 841
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startActivity(Landroid/content/Intent;)V
    :try_end_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2d .. :try_end_38} :catch_39

    goto :goto_18

    .line 842
    :catch_39
    move-exception v0

    .line 843
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800a2

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_18
.end method

.method private onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 8
    .parameter "info"

    .prologue
    const v2, 0x7f08007e

    .line 749
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_11

    .line 754
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 771
    :cond_10
    :goto_10
    return-void

    .line 758
    :cond_11
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isFileSaved()Z

    move-result v1

    if-nez v1, :cond_10

    .line 763
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->performAttachmentSave(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Ljava/io/File;

    move-result-object v0

    .line 764
    .local v0, savedFile:Ljava/io/File;
    if-eqz v0, :cond_3c

    .line 765
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v3, 0x7f08007d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10

    .line 769
    :cond_3c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    goto :goto_10
.end method

.method private performAttachmentSave(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Ljava/io/File;
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x0

    .line 774
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 775
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v1

    .line 778
    :try_start_11
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 780
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 781
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 782
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 785
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 786
    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 787
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 788
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 789
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 791
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 796
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 799
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 801
    iget-object v1, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mContentType:Ljava/lang/String;

    iget-wide v6, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mSize:J

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    .line 807
    #calls: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->setSavedPath(Ljava/lang/String;)V
    invoke-static {p1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$700(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Ljava/lang/String;)V

    .line 810
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_75} :catch_77

    move-object v0, v9

    .line 818
    :goto_76
    return-object v0

    .line 814
    :catch_77
    move-exception v0

    move-object v0, v10

    .line 818
    goto :goto_76
.end method

.method private queryContactStatus()V
    .registers 7

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1022
    :cond_6
    :goto_6
    return-void

    .line 1010
    :cond_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->initContactStatusViews()V

    .line 1013
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 1014
    .local v1, sender:Lcom/android/emailcommon/mail/Address;
    if-eqz v1, :cond_6

    .line 1015
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 1017
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageViewFragmentBase$ContactStatusLoaderCallbacks;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_6
.end method

.method private reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1649
    .line 1650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 1653
    if-nez p2, :cond_c5

    .line 1658
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "<html><body>"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1659
    if-eqz p1, :cond_8f

    .line 1661
    invoke-static {p1}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1663
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1664
    :goto_1a
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1665
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 1671
    if-eqz v0, :cond_30

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x40

    if-eq v0, v5, :cond_86

    .line 1672
    :cond_30
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    .line 1673
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->WEB_URL_PROTOCOL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1675
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 1678
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1684
    :goto_61
    const-string v6, "<a href=\"%s\">%s</a>"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v1

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1685
    invoke-virtual {v4, v2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1a

    .line 1682
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_61

    .line 1688
    :cond_86
    const-string v0, "$0"

    invoke-virtual {v4, v2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1a

    .line 1691
    :cond_8c
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1693
    :cond_8f
    const-string v0, "</body></html>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1694
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    move v0, v1

    .line 1705
    :goto_99
    if-eqz v0, :cond_ab

    .line 1706
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredPictureLoaded:Z

    if-nez v0, :cond_a1

    if-eqz p3, :cond_d2

    .line 1707
    :cond_a1
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->blockNetworkLoads(Z)V

    .line 1708
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 1712
    iput-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredPictureLoaded:Z

    .line 1717
    :cond_ab
    :goto_ab
    invoke-direct {p0, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V

    .line 1720
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    new-array v2, v8, [Ljava/lang/Long;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1722
    iput-boolean v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    .line 1723
    return-void

    .line 1697
    :cond_c5
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;

    .line 1698
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->IMG_TAG_START_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_99

    .line 1714
    :cond_d2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    goto :goto_ab
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 439
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 440
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " restoreInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_20
    const-string v0, "MessageViewFragmentBase.currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    .line 446
    const-string v0, "MessageViewFragmentBase.pictureLoaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredPictureLoaded:Z

    .line 447
    return-void
.end method

.method private setAttachmentCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    .line 548
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    .line 549
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    if-lez v0, :cond_b

    .line 550
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 554
    :goto_a
    return-void

    .line 552
    :cond_b
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->clearTabFlags(I)V

    goto :goto_a
.end method

.method private setCurrentTab(I)V
    .registers 8
    .parameter "tab"

    .prologue
    const/16 v5, 0x67

    const/16 v4, 0x66

    const/16 v3, 0x65

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 609
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    .line 612
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 613
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 614
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 615
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 616
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 617
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 619
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabContentViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 620
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 621
    return-void
.end method

.method private static setDetailsRow(Landroid/view/View;Ljava/lang/String;II)V
    .registers 6
    .parameter "root"
    .parameter "text"
    .parameter "textViewId"
    .parameter "rowViewId"

    .prologue
    .line 949
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 950
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 954
    :goto_f
    return-void

    .line 953
    :cond_10
    invoke-static {p0, p2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private setMessageHtml(Ljava/lang/String;)V
    .registers 8
    .parameter "html"

    .prologue
    .line 654
    if-nez p1, :cond_4

    .line 655
    const-string p1, ""

    .line 657
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v0, :cond_15

    .line 658
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    const-string v1, "email://"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_15
    return-void
.end method

.method private setShowImagesForSender()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1940
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e00a0

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 1941
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080085

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1944
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 1946
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 1947
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    .line 1948
    array-length v3, v1

    :goto_2f
    if-ge v0, v3, :cond_3d

    aget-object v4, v1, v0

    .line 1949
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1950
    invoke-virtual {v2, v4}, Lcom/android/email/Preferences;->setSenderAsTrusted(Ljava/lang/String;)V

    .line 1948
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1952
    :cond_3d
    return-void
.end method

.method private shouldShowImagesFor(Ljava/lang/String;)Z
    .registers 3
    .parameter "senderEmail"

    .prologue
    .line 1936
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/Preferences;->shouldShowImagesFor(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showContent(ZZ)V
    .registers 5
    .parameter "showContent"
    .parameter "showProgressWhenHidden"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 488
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    if-nez p1, :cond_10

    if-eqz p2, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 489
    return-void

    .line 488
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private showDefaultQuickContactBadgeImage()V
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 537
    return-void
.end method

.method private showDetails()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 922
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_8

    .line 941
    :goto_7
    return-void

    .line 926
    :cond_8
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsFilled:Z

    if-nez v0, :cond_6e

    .line 927
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {p0, v0, v1, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->formatDate(JZ)Ljava/lang/String;

    move-result-object v0

    .line 928
    const-string v1, "\n"

    .line 929
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    const-string v2, "\n"

    invoke-static {v1, v2}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 930
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    const-string v3, "\n"

    invoke-static {v2, v3}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 931
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    const-string v4, "\n"

    invoke-static {v3, v4}, Lcom/android/emailcommon/mail/Address;->toString([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 932
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v5, 0x7f0e0088

    const v6, 0x7f0e0097

    invoke-static {v4, v0, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->setDetailsRow(Landroid/view/View;Ljava/lang/String;II)V

    .line 933
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v4, 0x7f0e005a

    const v5, 0x7f0e0098

    invoke-static {v0, v1, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->setDetailsRow(Landroid/view/View;Ljava/lang/String;II)V

    .line 934
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v1, 0x7f0e005e

    const v4, 0x7f0e0099

    invoke-static {v0, v2, v1, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->setDetailsRow(Landroid/view/View;Ljava/lang/String;II)V

    .line 935
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const v1, 0x7f0e0061

    const v2, 0x7f0e009a

    invoke-static {v0, v3, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->setDetailsRow(Landroid/view/View;Ljava/lang/String;II)V

    .line 936
    iput-boolean v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsFilled:Z

    .line 939
    :cond_6e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsCollapsed:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method private showPicturesInHtml()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 908
    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2b

    move v0, v1

    .line 909
    .local v0, picturesAlreadyLoaded:Z
    :goto_9
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v3, :cond_2a

    if-nez v0, :cond_2a

    .line 910
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->blockNetworkLoads(Z)V

    .line 912
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e00a0

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 917
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->addTabFlags(I)V

    .line 919
    :cond_2a
    return-void

    .end local v0           #picturesAlreadyLoaded:Z
    :cond_2b
    move v0, v2

    .line 908
    goto :goto_9
.end method

.method private updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v9, 0x8

    .line 1390
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->iconView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2500(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/ImageView;

    .line 1391
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->openButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2600(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v2

    .line 1392
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v3

    .line 1393
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v4

    .line 1394
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->infoButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v5

    .line 1395
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v6

    .line 1397
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowView:Z

    if-nez v0, :cond_21

    .line 1398
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1400
    :cond_21
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowSave:Z

    if-nez v0, :cond_28

    .line 1401
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1404
    :cond_28
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowView:Z

    if-nez v0, :cond_52

    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowSave:Z

    if-nez v0, :cond_52

    .line 1406
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->hideProgress()V

    .line 1407
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1408
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1409
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1410
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1411
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1469
    :goto_42
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1470
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1471
    invoke-virtual {v4, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1472
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1473
    invoke-virtual {v6, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1474
    return-void

    .line 1412
    :cond_52
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1417
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgress(I)V

    .line 1418
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowSave:Z

    if-eqz v0, :cond_76

    .line 1419
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1421
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isFileSaved()Z

    move-result v7

    .line 1422
    if-nez v7, :cond_a8

    const/4 v0, 0x1

    :goto_6b
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1423
    if-nez v7, :cond_aa

    .line 1424
    const v0, 0x7f08007a

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V

    .line 1429
    :cond_76
    :goto_76
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowView:Z

    if-eqz v0, :cond_97

    .line 1431
    iget-object v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v7, "audio/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mContentType:Ljava/lang/String;

    const-string v7, "video/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1433
    :cond_8e
    const v0, 0x7f080077

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 1439
    :goto_94
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1441
    :cond_97
    iget v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mDenyFlags:I

    if-nez v0, :cond_c3

    .line 1442
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1446
    :goto_9e
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1447
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1449
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->updatePreviewIcon(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_42

    :cond_a8
    move v0, v1

    .line 1422
    goto :goto_6b

    .line 1426
    :cond_aa
    const v0, 0x7f08007b

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_76

    .line 1434
    :cond_b1
    iget-boolean v0, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mAllowInstall:Z

    if-eqz v0, :cond_bc

    .line 1435
    const v0, 0x7f080076

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_94

    .line 1437
    :cond_bc
    const v0, 0x7f080075

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_94

    .line 1444
    :cond_c3
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_9e

    .line 1454
    :cond_c7
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1455
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1456
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1460
    iget-wide v7, p1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mId:J

    invoke-static {v7, v8}, Lcom/android/email/service/AttachmentDownloadService;->isAttachmentQueued(J)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 1461
    invoke-virtual {p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgressIndeterminate()V

    .line 1462
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1463
    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_42

    .line 1465
    :cond_e3
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1466
    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_42
.end method

.method private updateAttachmentTab()V
    .registers 8

    .prologue
    .line 1375
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_7
    if-ge v1, v0, :cond_28

    .line 1376
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1377
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 1378
    .local v3, oldInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v6}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    .line 1380
    .local v2, newInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentButtons(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 1381
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1375
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1383
    .end local v2           #newInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v3           #oldInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v4           #view:Landroid/view/View;
    :cond_28
    return-void
.end method

.method private updatePreviewIcon(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 4
    .parameter "attachmentInfo"

    .prologue
    .line 1907
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$UpdatePreviewIconTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1908
    return-void
.end method

.method private updateTabs(I)V
    .registers 13
    .parameter "tabFlags"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 571
    iput p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    .line 573
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_b

    .line 601
    :cond_a
    :goto_a
    return-void

    .line 577
    :cond_b
    and-int/lit8 v5, p1, 0x3

    if-eqz v5, :cond_a1

    move v1, v3

    .line 579
    .local v1, messageTabVisible:Z
    :goto_10
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-static {v5, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 580
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_a4

    move v5, v3

    :goto_1c
    invoke-static {v6, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 581
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_a7

    move v5, v3

    :goto_26
    invoke-static {v6, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 583
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_aa

    move v0, v3

    .line 584
    .local v0, hasPictures:Z
    :goto_2e
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_ac

    move v2, v3

    .line 585
    .local v2, pictureLoaded:Z
    :goto_33
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    if-eqz v0, :cond_ae

    if-nez v2, :cond_ae

    move v5, v3

    :goto_3a
    invoke-static {v6, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 587
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0006

    iget v8, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    new-array v9, v3, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_85

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_85

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_85

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_85

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlwaysShowPicturesButton:Landroid/view/View;

    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b0

    :cond_85
    :goto_85
    invoke-static {v5, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->makeVisible(Landroid/view/View;Z)V

    .line 597
    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getTabViewForFlag(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 598
    iget v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 599
    iput v4, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mRestoredTab:I

    goto/16 :goto_a

    .end local v0           #hasPictures:Z
    .end local v1           #messageTabVisible:Z
    .end local v2           #pictureLoaded:Z
    :cond_a1
    move v1, v4

    .line 577
    goto/16 :goto_10

    .restart local v1       #messageTabVisible:Z
    :cond_a4
    move v5, v4

    .line 580
    goto/16 :goto_1c

    :cond_a7
    move v5, v4

    .line 581
    goto/16 :goto_26

    :cond_aa
    move v0, v4

    .line 583
    goto :goto_2e

    .restart local v0       #hasPictures:Z
    :cond_ac
    move v2, v4

    .line 584
    goto :goto_33

    .restart local v2       #pictureLoaded:Z
    :cond_ae
    move v5, v4

    .line 585
    goto :goto_3a

    :cond_b0
    move v3, v4

    .line 592
    goto :goto_85
.end method


# virtual methods
.method protected final addTabFlags(I)V
    .registers 3
    .parameter "tabFlags"

    .prologue
    .line 540
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    or-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 541
    return-void
.end method

.method public clearIsMessageLoadedForTest()V
    .registers 2

    .prologue
    .line 1959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    .line 1960
    return-void
.end method

.method public getAccountId()J
    .registers 3

    .prologue
    .line 479
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    return-wide v0
.end method

.method protected final getController()Lcom/android/email/Controller;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method public final getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method public isMessageLoadedForTest()Z
    .registers 2

    .prologue
    .line 1955
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z

    return v0
.end method

.method protected final isMessageOpen()Z
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 337
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 338
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_20
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 341
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 344
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 346
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->installFragment(Landroid/app/Fragment;)V

    .line 347
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 248
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 249
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onAttach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_20
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 252
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1003
    :goto_6
    return-void

    .line 962
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_68

    goto :goto_6

    .line 979
    :sswitch_f
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onCancelAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_6

    .line 964
    :sswitch_19
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onClickSender()V

    goto :goto_6

    .line 967
    :sswitch_1d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_6

    .line 970
    :sswitch_27
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onInfoAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_6

    .line 973
    :sswitch_31
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_6

    .line 976
    :sswitch_3b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onOpenAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    goto :goto_6

    .line 982
    :sswitch_45
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto :goto_6

    .line 985
    :sswitch_4b
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto :goto_6

    .line 988
    :sswitch_51
    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    goto :goto_6

    .line 991
    :sswitch_57
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPicturesInHtml()V

    goto :goto_6

    .line 994
    :sswitch_5b
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->setShowImagesForSender()V

    goto :goto_6

    .line 997
    :sswitch_5f
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDetails()V

    goto :goto_6

    .line 1000
    :sswitch_63
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->hideDetails()V

    goto :goto_6

    .line 962
    nop

    :sswitch_data_68
    .sparse-switch
        0x7f0e0001 -> :sswitch_f
        0x7f0e0092 -> :sswitch_1d
        0x7f0e0093 -> :sswitch_27
        0x7f0e0094 -> :sswitch_31
        0x7f0e0095 -> :sswitch_3b
        0x7f0e009f -> :sswitch_57
        0x7f0e00a0 -> :sswitch_5b
        0x7f0e00a1 -> :sswitch_45
        0x7f0e00a2 -> :sswitch_4b
        0x7f0e00a3 -> :sswitch_51
        0x7f0e00af -> :sswitch_19
        0x7f0e00b9 -> :sswitch_5f
        0x7f0e00bc -> :sswitch_63
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 256
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 257
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_20
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    .line 267
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    .line 268
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 270
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    .line 272
    if-eqz p1, :cond_5a

    .line 273
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 275
    :cond_5a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 280
    sget-boolean v3, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v3, :cond_22

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_22

    .line 281
    const-string v3, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onCreateView"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_22
    const v3, 0x7f04003a

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 285
    .local v1, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cleanupDetachedViews()V

    .line 287
    const v3, 0x7f0e0062

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    .line 288
    const v3, 0x7f0e00b0

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    .line 289
    const v3, 0x7f0e00b2

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    .line 290
    const v3, 0x7f0e00ba

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAddressesView:Landroid/widget/TextView;

    .line 291
    const v3, 0x7f0e00bb

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    .line 292
    const v3, 0x7f0e00a4

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    .line 293
    const v3, 0x7f0e0079

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    .line 294
    const v3, 0x7f0e009e

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabSection:Landroid/view/View;

    .line 295
    const v3, 0x7f0e00af

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    .line 296
    const v3, 0x7f0e00b1

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;

    .line 297
    const v3, 0x7f0e009c

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMainView:Landroid/view/View;

    .line 298
    const v3, 0x7f0e009b

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadingProgress:Landroid/view/View;

    .line 299
    const v3, 0x7f0e00b9

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsCollapsed:Landroid/view/View;

    .line 300
    const v3, 0x7f0e00bc

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    .line 302
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromBadge:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSenderPresenceView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v3, 0x7f0e00a1

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    .line 308
    const v3, 0x7f0e00a3

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    .line 309
    const v3, 0x7f0e009f

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    .line 310
    const v3, 0x7f0e00a0

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlwaysShowPicturesButton:Landroid/view/View;

    .line 312
    const v3, 0x7f0e00a2

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    .line 314
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mShowPicturesTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAlwaysShowPicturesButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsCollapsed:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDetailsExpanded:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    const v3, 0x7f0e00a6

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsScroll:Landroid/view/View;

    .line 323
    const v3, 0x7f0e00a5

    invoke-static {v1, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteScroll:Landroid/view/View;

    .line 325
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 326
    .local v2, webSettings:Landroid/webkit/WebSettings;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 328
    .local v0, supportMultiTouch:Z
    if-nez v0, :cond_164

    move v3, v4

    :goto_14f
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 329
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 330
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 331
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 332
    return-object v1

    :cond_164
    move v3, v5

    .line 328
    goto :goto_14f
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 412
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 413
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_20
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cleanupDetachedViews()V

    .line 417
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 418
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .prologue
    .line 388
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 389
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

    .line 391
    :cond_20
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->uninstallFragment(Landroid/app/Fragment;)V

    .line 392
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 393
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V

    .line 398
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 399
    return-void
.end method

.method public onDetach()V
    .registers 4

    .prologue
    .line 422
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 423
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDetach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_20
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 426
    return-void
.end method

.method protected onMessageShown(JLcom/android/emailcommon/provider/Mailbox;)V
    .registers 4
    .parameter "messageId"
    .parameter "mailbox"

    .prologue
    .line 1125
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 372
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 373
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_20
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 376
    return-void
.end method

.method protected onPostLoadBody()V
    .registers 1

    .prologue
    .line 1131
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 359
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 360
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_20
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 367
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->updateAttachmentTab()V

    .line 368
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 430
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 431
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_20
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 434
    const-string v0, "MessageViewFragmentBase.currentTab"

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    const-string v1, "MessageViewFragmentBase.pictureLoaded"

    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mTabFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    :goto_33
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    return-void

    .line 435
    :cond_37
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 351
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 352
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_20
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 355
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    .line 380
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 381
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_20
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 384
    return-void
.end method

.method protected abstract openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
.end method

.method protected reloadMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 3
    .parameter "activity"

    .prologue
    .line 1040
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .registers 14
    .parameter "message"
    .parameter "okToFetch"

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1548
    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iput-wide v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J

    .line 1550
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageObserver:Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->register(Landroid/net/Uri;)V

    .line 1552
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1559
    if-eqz p2, :cond_36

    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_36

    .line 1560
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v7}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v7

    check-cast v7, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v7, v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 1561
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v7, v8, v9}, Lcom/android/email/Controller;->loadMessageForView(J)V

    .line 1576
    :goto_35
    return-void

    .line 1563
    :cond_36
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    .line 1564
    .local v3, fromList:[Lcom/android/emailcommon/mail/Address;
    const/4 v1, 0x0

    .line 1565
    .local v1, autoShowImages:Z
    move-object v0, v3

    .local v0, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_42
    if-ge v4, v5, :cond_51

    aget-object v6, v0, v4

    .line 1566
    .local v6, sender:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1567
    .local v2, email:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->shouldShowImagesFor(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 1568
    const/4 v1, 0x1

    .line 1572
    .end local v2           #email:Ljava/lang/String;
    .end local v6           #sender:Lcom/android/emailcommon/mail/Address;
    :cond_51
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v7}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v7

    check-cast v7, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    const-wide/16 v8, -0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->setWaitForLoadMessageId(J)V

    .line 1574
    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-direct {v7, p0, v8, v9, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_35

    .line 1565
    .restart local v2       #email:Ljava/lang/String;
    .restart local v6       #sender:Lcom/android/emailcommon/mail/Address;
    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_42
.end method

.method protected resetView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 494
    invoke-direct {p0, v3, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 495
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->updateTabs(I)V

    .line 496
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->setCurrentTab(I)V

    .line 497
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2d

    .line 498
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->blockNetworkLoads(Z)V

    .line 499
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v3}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 502
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 503
    .local v0, settings:Landroid/webkit/WebSettings;
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 504
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageContentView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getWebViewZoom()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 506
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_2d
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachmentsScroll:Landroid/view/View;

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 507
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteScroll:Landroid/view/View;

    invoke-virtual {v1, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 508
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 509
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->initContactStatusViews()V

    .line 511
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 450
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    .line 451
    return-void
.end method

.method protected updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 8
    .parameter

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1580
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1585
    if-eqz v0, :cond_bb

    .line 1586
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v1

    .line 1587
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1588
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v0, " "

    :cond_26
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1594
    :goto_29
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mDateTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1598
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1599
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1600
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    .line 1601
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v3

    .line 1602
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    .line 1604
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 1605
    const v5, 0x7f08006f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/emailcommon/utility/Utility;->appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 1606
    const-string v5, " "

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1607
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1609
    :cond_7b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 1610
    const-string v2, "  "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1611
    const v2, 0x7f080070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 1612
    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1613
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1615
    :cond_98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 1616
    const-string v2, "  "

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1617
    const v2, 0x7f080071

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/emailcommon/utility/Utility;->appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    .line 1618
    const-string v0, " "

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1619
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1621
    :cond_b5
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mAddressesView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1622
    return-void

    .line 1591
    :cond_bb
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromNameView:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1592
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mFromAddressView:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_29
.end method
