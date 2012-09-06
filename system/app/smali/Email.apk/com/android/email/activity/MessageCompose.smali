.class public Lcom/android/email/activity/MessageCompose;
.super Landroid/app/Activity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;
.implements Lcom/android/email/activity/InsertQuickResponseDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;,
        Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;,
        Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;,
        Lcom/android/email/activity/MessageCompose$LoadMessageTask;,
        Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;,
        Lcom/android/email/activity/MessageCompose$QuickResponseChecker;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

.field static final RECIPIENT_FILTER:Landroid/text/InputFilter;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final sActiveSaveTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextSaveTaskId:J


# instance fields
.field private final ACTION_SPINNER_LISTENER:Landroid/app/ActionBar$OnNavigationListener;

.field private final ACTION_TAB_LISTENER:Landroid/app/ActionBar$TabListener;

.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mAction:Ljava/lang/String;

.field private mActionSpinnerAdapter:Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;

.field private mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

.field private mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

.field private mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

.field private mAttachmentContainer:Landroid/view/View;

.field private mAttachmentContentView:Landroid/view/ViewGroup;

.field private final mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mBccView:Landroid/widget/MultiAutoCompleteTextView;

.field private mCcBccContainer:Landroid/view/View;

.field private mCcView:Landroid/widget/MultiAutoCompleteTextView;

.field private mController:Lcom/android/email/Controller;

.field private mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mDraftNeedsSaving:Z

.field private mFromView:Landroid/widget/TextView;

.field private mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

.field private mInitiallyEmpty:Z

.field private mLastSaveTaskId:J

.field private mMessageContentView:Landroid/widget/EditText;

.field private mMessageLoaded:Z

.field private mPickingAttachment:Z

.field private mQuickResponsesAvailable:Ljava/lang/Boolean;

.field private mQuotedText:Landroid/webkit/WebView;

.field private mQuotedTextArea:Landroid/view/View;

.field private mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mSourceAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mSubjectView:Landroid/widget/EditText;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mToView:Landroid/widget/MultiAutoCompleteTextView;

.field private final mWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 137
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->sActiveSaveTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 148
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/email/activity/MessageCompose;->sNextSaveTaskId:J

    .line 640
    new-instance v0, Lcom/android/email/activity/MessageCompose$3;

    invoke-direct {v0}, Lcom/android/email/activity/MessageCompose$3;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->RECIPIENT_FILTER:Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 153
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mLastSaveTaskId:J

    .line 162
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mPickingAttachment:Z

    .line 205
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuickResponsesAvailable:Ljava/lang/Boolean;

    .line 206
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 215
    new-instance v0, Lcom/android/email/activity/MessageCompose$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$1;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    .line 1851
    new-instance v0, Lcom/android/email/activity/MessageCompose$8;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$8;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->ACTION_TAB_LISTENER:Landroid/app/ActionBar$TabListener;

    .line 1862
    new-instance v0, Lcom/android/email/activity/MessageCompose$9;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$9;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->ACTION_SPINNER_LISTENER:Landroid/app/ActionBar$OnNavigationListener;

    .line 1870
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageCompose;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isForward()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageCompose;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateActionSelector()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/Account;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageCompose;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setMessageLoaded(Z)V

    return-void
.end method

.method static synthetic access$1900()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/email/activity/MessageCompose;->sActiveSaveTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageCompose;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setQuickResponsesAvailable(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;ZZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;ZZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageCompose;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mPickingAttachment:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageCompose;JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->loadAttachments(JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageCompose;JZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->loadSourceMessage(JZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/MessageCompose;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 109
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static actionCompose(Landroid/content/Context;J)V
    .registers 6
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 265
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->getMainAppIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 266
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    .line 272
    .end local v1           #i:Landroid/content/Intent;
    :goto_7
    return-void

    .line 267
    :catch_8
    move-exception v0

    .line 270
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 7
    .parameter "context"
    .parameter "uriString"
    .parameter "accountId"

    .prologue
    .line 285
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/android/email/activity/MessageCompose;->getMainAppIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 286
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_13} :catch_15

    .line 289
    const/4 v2, 0x1

    .line 294
    .end local v1           #i:Landroid/content/Intent;
    :goto_14
    return v2

    .line 290
    :catch_15
    move-exception v0

    .line 293
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 294
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public static actionEditDraft(Landroid/content/Context;J)V
    .registers 4
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 327
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 328
    return-void
.end method

.method public static actionForward(Landroid/content/Context;J)V
    .registers 4
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 315
    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 316
    return-void
.end method

.method public static actionReply(Landroid/content/Context;JZ)V
    .registers 5
    .parameter "context"
    .parameter "messageId"
    .parameter "replyAll"

    .prologue
    .line 306
    if-eqz p3, :cond_8

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    :goto_4
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 307
    return-void

    .line 306
    :cond_8
    const-string v0, "com.android.email.intent.action.REPLY"

    goto :goto_4
.end method

.method private static addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->append(Ljava/lang/CharSequence;)V

    .line 1168
    return-void
.end method

.method private static addAddresses(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V
    .registers 8
    .parameter "view"
    .parameter "addresses"

    .prologue
    .line 1157
    if-nez p1, :cond_3

    .line 1164
    :cond_2
    return-void

    .line 1160
    :cond_3
    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 1161
    .local v4, unpackedAddresses:[Lcom/android/emailcommon/mail/Address;
    move-object v1, v4

    .local v1, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 1162
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 1161
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private static addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V
    .registers 7
    .parameter "view"
    .parameter "addresses"

    .prologue
    .line 1139
    if-nez p1, :cond_3

    .line 1145
    :cond_2
    return-void

    .line 1142
    :cond_3
    move-object v1, p1

    .local v1, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 1143
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 1142
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private static addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    .registers 6
    .parameter "view"
    .parameter "addresses"

    .prologue
    .line 1148
    if-nez p1, :cond_3

    .line 1154
    :cond_2
    return-void

    .line 1151
    :cond_3
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1152
    .local v3, oneAddress:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 1151
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 6
    .parameter

    .prologue
    .line 1595
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 1596
    const v0, 0x7f08006c

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1603
    :goto_14
    return-void

    .line 1601
    :cond_15
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V

    goto :goto_14
.end method

.method private addAttachmentFromSendIntent(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 1656
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 1657
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1658
    .local v1, mimeType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1660
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1662
    :cond_17
    return-void
.end method

.method private addAttachmentFromUri(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 1648
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1649
    return-void
.end method

.method private addListeners()V
    .registers 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 768
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 769
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 770
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 771
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 772
    return-void
.end method

.method private areViewsEmpty()Z
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isBodyEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private clearAddressViews()V
    .registers 3

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2225
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2226
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2227
    return-void
.end method

.method private createAndAddTab(ILjava/lang/String;)Landroid/app/ActionBar$Tab;
    .registers 6
    .parameter "labelResource"
    .parameter "action"

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 1933
    .local v1, tab:Landroid/app/ActionBar$Tab;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1934
    .local v0, selected:Z
    invoke-virtual {v1, p2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 1935
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 1936
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->ACTION_TAB_LISTENER:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 1937
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 1938
    return-object v1
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2132
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteAttachment(Ljava/util/List;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 9
    .parameter
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1716
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1717
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1718
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 1719
    .local v0, attachmentId:J
    new-instance v2, Lcom/android/email/activity/MessageCompose$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/MessageCompose$7;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1726
    .end local v0           #attachmentId:J
    :cond_1d
    return-void
.end method

.method private displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 2140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2141
    if-eqz v0, :cond_26

    move-object v2, p1

    .line 2142
    :goto_7
    if-eqz v2, :cond_25

    .line 2143
    if-eqz v0, :cond_f

    invoke-static {v2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2147
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2148
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    if-eqz v0, :cond_25

    .line 2149
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const-string v1, "email://"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    :cond_25
    return-void

    :cond_26
    move-object v2, p2

    .line 2141
    goto :goto_7
.end method

.method private static getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;
    .registers 2
    .parameter "account"

    .prologue
    .line 2362
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    goto :goto_3
.end method

.method private static getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;
    .registers 3
    .parameter "view"

    .prologue
    .line 1176
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1177
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    return-object v0
.end method

.method private static getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getMainAppIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 251
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 252
    .local v0, result:Landroid/content/Intent;
    const-string v1, "from_within_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    return-object v0
.end method

.method public static getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 239
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 240
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 241
    return-object v0
.end method

.method private static getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;
    .registers 3
    .parameter "view"

    .prologue
    .line 1171
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1172
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .registers 6
    .parameter

    .prologue
    .line 1206
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1207
    const-string v1, "timeStamp"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1208
    const-string v1, "fromList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v1, "toList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v1, "ccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v1, "bccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v1, "subject"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const-string v1, "displayName"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v1, "flagRead"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1215
    const-string v1, "flagLoaded"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1216
    const-string v1, "flagAttachment"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1217
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1218
    return-object v0
.end method

.method private handleCommand(I)Z
    .registers 5
    .parameter "viewId"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1737
    sparse-switch p1, :sswitch_data_36

    move v0, v1

    .line 1767
    :goto_6
    return v0

    .line 1739
    :sswitch_7
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->onBack(Z)V

    goto :goto_6

    .line 1742
    :sswitch_b
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_6

    .line 1745
    :sswitch_f
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    goto :goto_6

    .line 1748
    :sswitch_13
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showQuickResponseDialog()V

    goto :goto_6

    .line 1751
    :sswitch_17
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscard()V

    goto :goto_6

    .line 1755
    :sswitch_1b
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    goto :goto_6

    .line 1758
    :sswitch_25
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFields()V

    goto :goto_6

    .line 1761
    :sswitch_29
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddAttachment()V

    goto :goto_6

    .line 1764
    :sswitch_2d
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->actionSettings(Landroid/app/Activity;J)V

    goto :goto_6

    .line 1737
    nop

    :sswitch_data_36
    .sparse-switch
        0x102002c -> :sswitch_7
        0x7f0e0055 -> :sswitch_25
        0x7f0e0056 -> :sswitch_29
        0x7f0e0094 -> :sswitch_f
        0x7f0e00c2 -> :sswitch_1b
        0x7f0e00e5 -> :sswitch_b
        0x7f0e00e6 -> :sswitch_17
        0x7f0e00e7 -> :sswitch_13
        0x7f0e00e8 -> :sswitch_2d
    .end sparse-switch
.end method

.method private hasSourceMessage()Z
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private includeQuotedText()Z
    .registers 2

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method private initViews()V
    .registers 15

    .prologue
    const v13, 0x7f0e0063

    const v12, 0x7f0e0061

    const v11, 0x7f0e005e

    const v10, 0x7f0e005a

    const/4 v9, 0x0

    .line 687
    const v7, 0x7f0e0058

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 688
    .local v6, toParent:Landroid/view/ViewGroup;
    if-eqz v6, :cond_134

    .line 689
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    .line 691
    const v7, 0x7f0e005c

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 692
    .local v4, ccParent:Landroid/view/ViewGroup;
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    .line 693
    const v7, 0x7f0e005f

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 694
    .local v3, bccParent:Landroid/view/ViewGroup;
    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    .line 701
    .end local v3           #bccParent:Landroid/view/ViewGroup;
    .end local v4           #ccParent:Landroid/view/ViewGroup;
    :goto_42
    const v7, 0x7f0e0064

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    .line 702
    const v7, 0x7f0e005b

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    .line 703
    const v7, 0x7f0e0062

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    .line 704
    invoke-static {p0, v13}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    .line 705
    const v7, 0x7f0e0079

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    .line 706
    const v7, 0x7f0e007a

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContainer:Landroid/view/View;

    .line 707
    const v7, 0x7f0e00bf

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    .line 708
    const v7, 0x7f0e00c2

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    .line 709
    const v7, 0x7f0e00c4

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    .line 711
    const/4 v7, 0x1

    new-array v5, v7, [Landroid/text/InputFilter;

    sget-object v7, Lcom/android/email/activity/MessageCompose;->RECIPIENT_FILTER:Landroid/text/InputFilter;

    aput-object v7, v5, v9

    .line 714
    .local v5, recipientFilters:[Landroid/text/InputFilter;
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v5}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 715
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v5}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 716
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v5}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 722
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 723
    invoke-direct {p0, v9, v9}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 725
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    new-instance v2, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v2}, Lcom/android/email/EmailAddressValidator;-><init>()V

    .line 729
    .local v2, addressValidator:Lcom/android/email/EmailAddressValidator;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setupAddressAdapters()V

    .line 730
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v8, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v8}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 731
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v2}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 733
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v8, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v8}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 734
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v2}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 736
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v8, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v8}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 737
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v2}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 739
    const v7, 0x7f0e0055

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    .line 740
    .local v1, addCcBccView:Landroid/view/View;
    if-eqz v1, :cond_102

    .line 742
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    :cond_102
    const v7, 0x7f0e0056

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    .line 746
    .local v0, addAttachmentView:Landroid/view/View;
    if-eqz v0, :cond_10e

    .line 748
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    :cond_10e
    const v7, 0x7f0e0059

    invoke-virtual {p0, v7, v10}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 752
    const v7, 0x7f0e005d

    invoke-virtual {p0, v7, v11}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 753
    const v7, 0x7f0e0060

    invoke-virtual {p0, v7, v12}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 754
    const v7, 0x7f0e007e

    invoke-virtual {p0, v7, v13}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 756
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 758
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentContainer()V

    .line 759
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 760
    return-void

    .line 696
    .end local v0           #addAttachmentView:Landroid/view/View;
    .end local v1           #addCcBccView:Landroid/view/View;
    .end local v2           #addressValidator:Lcom/android/email/EmailAddressValidator;
    .end local v5           #recipientFilters:[Landroid/text/InputFilter;
    :cond_134
    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    .line 697
    invoke-static {p0, v11}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    .line 698
    invoke-static {p0, v12}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    goto/16 :goto_42
.end method

.method private initializeFromMailTo(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2091
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2092
    const-string v1, "mailto"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2096
    const/4 v2, -0x1

    if-ne v0, v2, :cond_b4

    .line 2097
    :try_start_12
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2101
    :goto_1a
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v2, " ,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_25} :catch_be

    .line 2109
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

    .line 2111
    const-string v0, "cc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2112
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2114
    const-string v0, "to"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2115
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2117
    const-string v0, "bcc"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2118
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2120
    const-string v0, "subject"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_98

    .line 2122
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2125
    :cond_98
    const-string v0, "body"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b3

    .line 2127
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2129
    :cond_b3
    return-void

    .line 2099
    :cond_b4
    :try_start_b4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_bb
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b4 .. :try_end_bb} :catch_be

    move-result-object v0

    goto/16 :goto_1a

    .line 2102
    :catch_be
    move-exception v0

    .line 2103
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
.end method

.method private isBodyEmpty()Z
    .registers 4

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_31
    const/4 v0, 0x1

    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method private isForward()Z
    .registers 3

    .prologue
    .line 2354
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOpenedFromWidget()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 577
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 578
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_10

    const-string v2, "from_widget"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private isOpenedFromWithinApp()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 572
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 573
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_10

    const-string v2, "from_within_app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 13
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    .line 1548
    const-wide/16 v6, -0x1

    .line 1549
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1552
    invoke-static {p0, p1}, Lcom/android/emailcommon/utility/Utility;->getContentFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 1554
    sget-object v2, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1556
    if-eqz v2, :cond_69

    .line 1558
    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1559
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_62

    move-result-wide v0

    .line 1562
    :goto_23
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1567
    :goto_26
    cmp-long v2, v0, v9

    if-gez v2, :cond_4c

    .line 1569
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1570
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1571
    if-eqz v2, :cond_45

    .line 1572
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1577
    :cond_45
    cmp-long v2, v0, v9

    if-gtz v2, :cond_4c

    .line 1581
    const-wide/32 v0, 0x500001

    .line 1585
    :cond_4c
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1586
    iput-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1587
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 1588
    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1589
    invoke-static {p0, p1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1590
    return-object v2

    .line 1562
    :catchall_62
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_67
    move-wide v0, v6

    goto :goto_23

    :cond_69
    move-wide v0, v6

    goto :goto_26
.end method

.method private loadAttachments(JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
    .registers 11
    .parameter "messageId"
    .parameter "account"
    .parameter "callback"

    .prologue
    .line 1104
    new-instance v0, Lcom/android/email/activity/MessageCompose$6;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageCompose$6;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$6;->executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1118
    return-void
.end method

.method private loadSourceMessage(JZ)V
    .registers 10
    .parameter "sourceMessageId"
    .parameter "restoreViews"

    .prologue
    const/4 v4, 0x0

    .line 899
    new-instance v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    new-instance v5, Lcom/android/email/activity/MessageCompose$5;

    invoke-direct {v5, p0, p3}, Lcom/android/email/activity/MessageCompose$5;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;)V

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 963
    return-void
.end method

.method private makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1186
    const/4 v0, 0x0

    .line 1188
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    aput-object p2, v4, v8

    aput-object p3, v4, v9

    array-length v5, v4

    move v1, v2

    move v3, v2

    :goto_10
    if-ge v1, v5, :cond_24

    aget-object v6, v4, v1

    .line 1189
    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    .line 1190
    array-length v7, v6

    add-int/2addr v3, v7

    .line 1191
    if-nez v0, :cond_21

    array-length v7, v6

    if-lez v7, :cond_21

    .line 1192
    aget-object v0, v6, v2

    .line 1188
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1195
    :cond_24
    if-nez v3, :cond_29

    .line 1196
    const-string v0, ""

    .line 1202
    :cond_28
    :goto_28
    return-object v0

    .line 1198
    :cond_29
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v0

    .line 1199
    if-eq v3, v8, :cond_28

    .line 1202
    const v1, 0x7f08006e

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v2

    add-int/lit8 v0, v3, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {p0, v1, v4}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method private onActionChanged()V
    .registers 4

    .prologue
    .line 1802
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->hasSourceMessage()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1819
    :goto_6
    return-void

    .line 1806
    :cond_7
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->removeListeners()V

    .line 1808
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;)V

    .line 1812
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isForward()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->processSourceMessageAttachments(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1813
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V

    .line 1814
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 1817
    :cond_26
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateActionSelector()V

    .line 1818
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->addListeners()V

    goto :goto_6
.end method

.method private onAddAttachment()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1539
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1540
    sget-object v1, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1541
    iput-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mPickingAttachment:Z

    .line 1542
    const v1, 0x7f08002b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1545
    return-void
.end method

.method private onBack(Z)V
    .registers 4
    .parameter "systemKey"

    .prologue
    .line 1775
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1776
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isOpenedFromWithinApp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1786
    :cond_9
    :goto_9
    return-void

    .line 1781
    :cond_a
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isOpenedFromWidget()Z

    move-result v0

    if-nez v0, :cond_12

    if-nez p1, :cond_9

    .line 1784
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method private onDeleteAttachmentIconClicked(Landroid/view/View;)V
    .registers 5
    .parameter "delButtonView"

    .prologue
    .line 1699
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1700
    .local v1, attachmentView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1701
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->deleteAttachment(Ljava/util/List;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1702
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V

    .line 1703
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 1704
    return-void
.end method

.method private onDiscard()V
    .registers 4

    .prologue
    .line 1490
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method private onSave()V
    .registers 1

    .prologue
    .line 1516
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 1517
    return-void
.end method

.method private onSend()V
    .registers 5

    .prologue
    const v3, 0x7f08006a

    const/4 v2, 0x1

    .line 1454
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->isAddressAllValid()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1455
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1468
    :goto_18
    return-void

    .line 1457
    :cond_19
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_49

    .line 1460
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 1461
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_18

    .line 1464
    :cond_49
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 1465
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 1466
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_18
.end method

.method private removeListeners()V
    .registers 3

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 781
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 782
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 783
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 784
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 785
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .registers 12
    .parameter "intent"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 407
    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "android.intent.action.SENDTO"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "android.intent.action.SEND"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 411
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V

    .line 412
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 413
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setMessageLoaded(Z)V

    .line 431
    :goto_35
    return-void

    .line 414
    :cond_36
    const-string v4, "com.android.email.intent.action.REPLY"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "com.android.email.intent.action.REPLY_ALL"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "com.android.email.intent.action.FORWARD"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 417
    :cond_54
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "message_id"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 418
    .local v2, sourceMessageId:J
    invoke-direct {p0, v2, v3, v6}, Lcom/android/email/activity/MessageCompose;->loadSourceMessage(JZ)V

    goto :goto_35

    .line 420
    .end local v2           #sourceMessageId:J
    :cond_62
    const-string v4, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 422
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "message_id"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 423
    .local v0, draftId:J
    invoke-direct {p0, v0, v1, v7, v6}, Lcom/android/email/activity/MessageCompose;->resumeDraft(JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Z)V

    goto :goto_35

    .line 427
    .end local v0           #draftId:J
    :cond_7a
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 428
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setMessageLoaded(Z)V

    goto :goto_35
.end method

.method private resumeDraft(JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Z)V
    .registers 11
    .parameter "draftId"
    .parameter "existingSaveTask"
    .parameter "restoreViews"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide p1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 829
    new-instance v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    new-instance v5, Lcom/android/email/activity/MessageCompose$4;

    invoke-direct {v5, p0, p4}, Lcom/android/email/activity/MessageCompose$4;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;)V

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 865
    return-void
.end method

.method private static safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z
    .registers 10
    .parameter "addrs"
    .parameter "ourAddress"
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2161
    .local p3, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    const/4 v0, 0x0

    .line 2162
    .local v0, added:Z
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .local v2, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_7
    if-ge v3, v4, :cond_29

    aget-object v1, v2, v3

    .line 2164
    .local v1, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 2165
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2166
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 2167
    const/4 v0, 0x1

    .line 2162
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2170
    .end local v1           #address:Lcom/android/emailcommon/mail/Address;
    :cond_29
    return v0
.end method

.method private saveIfNeeded()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1426
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v0, :cond_6

    .line 1431
    :goto_5
    return-void

    .line 1429
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 1430
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    goto :goto_5
.end method

.method private selectActionTab(Ljava/lang/String;)V
    .registers 7
    .parameter "action"

    .prologue
    .line 1942
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1943
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    .local v2, n:I
    :goto_9
    if-ge v1, v2, :cond_1c

    .line 1944
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 1945
    .local v3, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v3}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1946
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1950
    .end local v3           #tab:Landroid/app/ActionBar$Tab;
    :cond_1c
    return-void

    .line 1943
    .restart local v3       #tab:Landroid/app/ActionBar$Tab;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private sendOrSaveMessage(Z)V
    .registers 8
    .parameter

    .prologue
    .line 1409
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v0, :cond_c

    .line 1410
    const-string v0, "Email"

    const-string v1, "Attempted to save draft message prior to the state being fully loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :goto_b
    return-void

    .line 1414
    :cond_c
    sget-object v1, Lcom/android/email/activity/MessageCompose;->sActiveSaveTasks:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 1415
    :try_start_f
    sget-wide v2, Lcom/android/email/activity/MessageCompose;->sNextSaveTaskId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/android/email/activity/MessageCompose;->sNextSaveTaskId:J

    iput-wide v2, p0, Lcom/android/email/activity/MessageCompose;->mLastSaveTaskId:J

    .line 1417
    new-instance v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    iget-wide v2, p0, Lcom/android/email/activity/MessageCompose;->mLastSaveTaskId:J

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;JZ)V

    .line 1421
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->executeSerial([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1422
    monitor-exit v1

    goto :goto_b

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_27

    throw v0
.end method

.method private setAccount(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const-wide/16 v3, -0x1

    .line 341
    const-string v2, "account_id"

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 342
    .local v0, accountId:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_10

    .line 343
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 345
    :cond_10
    cmp-long v2, v0, v3

    if-nez v2, :cond_1b

    .line 348
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 353
    :goto_1a
    return-void

    .line 351
    :cond_1b
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_1a
.end method

.method private setAccount(Lcom/android/emailcommon/provider/Account;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 356
    if-nez p1, :cond_8

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 359
    :cond_8
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 360
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/ex/chips/AccountSpecifier;->setAccount(Landroid/accounts/Account;)V

    .line 363
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/ex/chips/AccountSpecifier;->setAccount(Landroid/accounts/Account;)V

    .line 365
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/ex/chips/AccountSpecifier;->setAccount(Landroid/accounts/Account;)V

    .line 368
    new-instance v1, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 369
    return-void
.end method

.method private setAction(Ljava/lang/String;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1795
    :goto_8
    return-void

    .line 1793
    :cond_9
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 1794
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onActionChanged()V

    goto :goto_8
.end method

.method private setIncludeQuotedText(ZZ)V
    .registers 5
    .parameter "include"
    .parameter "updateNeedsSaving"

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1691
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1693
    if-eqz p2, :cond_19

    .line 1694
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 1696
    :cond_19
    return-void

    .line 1691
    :cond_1a
    const/16 v0, 0x8

    goto :goto_10
.end method

.method private setMessageChanged(Z)V
    .registers 4
    .parameter "messageChanged"

    .prologue
    .line 594
    if-eqz p1, :cond_17

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mInitiallyEmpty:Z

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->areViewsEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    :cond_c
    const/4 v0, 0x1

    .line 596
    .local v0, needsSaving:Z
    :goto_d
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-eq v1, v0, :cond_16

    .line 597
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 598
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->invalidateOptionsMenu()V

    .line 600
    :cond_16
    return-void

    .line 594
    .end local v0           #needsSaving:Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private setMessageLoaded(Z)V
    .registers 3
    .parameter "isLoaded"

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-eq v0, p1, :cond_f

    .line 587
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 588
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->addListeners()V

    .line 589
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->areViewsEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mInitiallyEmpty:Z

    .line 591
    :cond_f
    return-void
.end method

.method private setNewMessageFocus()V
    .registers 2

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 2345
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 2351
    :goto_d
    return-void

    .line 2346
    :cond_e
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 2347
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_d

    .line 2349
    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_d
.end method

.method private setQuickResponsesAvailable(Z)V
    .registers 3
    .parameter "quickResponsesAvailable"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuickResponsesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 457
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuickResponsesAvailable:Ljava/lang/Boolean;

    .line 458
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->invalidateOptionsMenu()V

    .line 460
    :cond_11
    return-void
.end method

.method private setupAddressAdapters()V
    .registers 4

    .prologue
    .line 791
    invoke-static {}, Lcom/android/ex/chips/ChipsUtil;->supportsChipsUi()Z

    move-result v0

    .line 793
    .local v0, supportsChips:Z
    if-eqz v0, :cond_59

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    instance-of v1, v1, Lcom/android/ex/chips/RecipientEditTextView;

    if-eqz v1, :cond_59

    .line 794
    new-instance v2, Lcom/android/email/RecipientAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v1, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {v2, p0, v1}, Lcom/android/email/RecipientAdapter;-><init>(Landroid/content/Context;Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    .line 795
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/RecipientAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 800
    :goto_20
    if-eqz v0, :cond_6a

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    instance-of v1, v1, Lcom/android/ex/chips/RecipientEditTextView;

    if-eqz v1, :cond_6a

    .line 801
    new-instance v2, Lcom/android/email/RecipientAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v1, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {v2, p0, v1}, Lcom/android/email/RecipientAdapter;-><init>(Landroid/content/Context;Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    .line 802
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/RecipientAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 807
    :goto_3c
    if-eqz v0, :cond_7b

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    instance-of v1, v1, Lcom/android/ex/chips/RecipientEditTextView;

    if-eqz v1, :cond_7b

    .line 808
    new-instance v2, Lcom/android/email/RecipientAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v1, Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct {v2, p0, v1}, Lcom/android/email/RecipientAdapter;-><init>(Landroid/content/Context;Lcom/android/ex/chips/RecipientEditTextView;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    .line 809
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/RecipientAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 814
    :goto_58
    return-void

    .line 797
    :cond_59
    new-instance v1, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    .line 798
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_20

    .line 804
    :cond_6a
    new-instance v1, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    .line 805
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_3c

    .line 811
    :cond_7b
    new-instance v1, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    .line 812
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_58
.end method

.method private shouldUseActionTabs()Z
    .registers 3

    .prologue
    .line 1953
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private showCcBccFields()V
    .registers 3

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 1527
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1528
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->requestFocus()Z

    .line 1529
    const v0, 0x7f0e0055

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/app/Activity;II)V

    .line 1530
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->invalidateOptionsMenu()V

    .line 1532
    :cond_1d
    return-void
.end method

.method private showCcBccFieldsIfFilled()V
    .registers 2

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-gtz v0, :cond_10

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 1521
    :cond_10
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFields()V

    .line 1523
    :cond_13
    return-void
.end method

.method private showQuickResponseDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1471
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v0, :cond_6

    .line 1477
    :goto_5
    return-void

    .line 1475
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2, v0}, Lcom/android/email/activity/InsertQuickResponseDialog;->newInstance(Landroid/app/Fragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/activity/InsertQuickResponseDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/InsertQuickResponseDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6
    .parameter "context"
    .parameter "action"
    .parameter "messageId"

    .prologue
    .line 334
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 335
    .local v0, i:Landroid/content/Intent;
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 336
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 338
    return-void
.end method

.method private updateActionSelector()V
    .registers 4

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1826
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->shouldUseActionTabs()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1828
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1829
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->selectActionTab(Ljava/lang/String;)V

    .line 1836
    :goto_15
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1848
    :goto_19
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1849
    return-void

    .line 1831
    :cond_1e
    const v1, 0x7f08000d

    const-string v2, "com.android.email.intent.action.REPLY"

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->createAndAddTab(ILjava/lang/String;)Landroid/app/ActionBar$Tab;

    .line 1832
    const v1, 0x7f08000e

    const-string v2, "com.android.email.intent.action.REPLY_ALL"

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->createAndAddTab(ILjava/lang/String;)Landroid/app/ActionBar$Tab;

    .line 1833
    const v1, 0x7f080010

    const-string v2, "com.android.email.intent.action.FORWARD"

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageCompose;->createAndAddTab(ILjava/lang/String;)Landroid/app/ActionBar$Tab;

    goto :goto_15

    .line 1839
    :cond_37
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mActionSpinnerAdapter:Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;

    if-nez v1, :cond_49

    .line 1840
    new-instance v1, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mActionSpinnerAdapter:Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;

    .line 1841
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mActionSpinnerAdapter:Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->ACTION_SPINNER_LISTENER:Landroid/app/ActionBar$OnNavigationListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1844
    :cond_49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1845
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;->getActionPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_19
.end method

.method private updateAttachmentContainer()V
    .registers 3

    .prologue
    .line 1643
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x8

    :goto_c
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1645
    return-void

    .line 1643
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private updateAttachmentUi()V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 1606
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1608
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1616
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_6f

    const/4 v1, 0x1

    move v4, v1

    .line 1618
    :goto_20
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04001c

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1620
    const v1, 0x7f0e004c

    invoke-static {v7, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1621
    const v2, 0x7f0e004e

    invoke-static {v7, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1622
    const v3, 0x7f0e004d

    invoke-static {v7, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1624
    iget-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1625
    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_71

    .line 1626
    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {p0, v8, v9}, Lcom/android/email/activity/UiUtilities;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1630
    :goto_5e
    if-eqz v4, :cond_77

    .line 1631
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1632
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1636
    :goto_66
    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1637
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_6f
    move v4, v5

    .line 1616
    goto :goto_20

    .line 1628
    :cond_71
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5e

    .line 1634
    :cond_77
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_66

    .line 1639
    :cond_7c
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentContainer()V

    .line 1640
    return-void
.end method

.method private updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;ZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1232
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    .line 1233
    :cond_f
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 1235
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 1236
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 1237
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1238
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 1239
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 1240
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1241
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1242
    iget-wide v0, p2, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1243
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 1244
    iput-boolean v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1245
    iput v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1246
    iput-boolean p3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1249
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d5

    .line 1250
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 1253
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 1254
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1255
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1256
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isForward()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1257
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1258
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1259
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1261
    const v4, 0x7f080066

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v8

    aput-object v2, v5, v6

    const/4 v2, 0x2

    if-eqz v0, :cond_e4

    :goto_c7
    aput-object v0, v5, v2

    const/4 v2, 0x3

    if-eqz v1, :cond_e7

    move-object v0, v1

    :goto_cd
    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 1271
    :cond_d5
    :goto_d5
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->includeQuotedText()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 1272
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1288
    :cond_e3
    :goto_e3
    return-void

    .line 1261
    :cond_e4
    const-string v0, ""

    goto :goto_c7

    :cond_e7
    const-string v0, ""

    goto :goto_cd

    .line 1265
    :cond_ea
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1266
    const v0, 0x7f080067

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    goto :goto_d5

    .line 1274
    :cond_fe
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1275
    if-eqz p4, :cond_e3

    .line 1280
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 1281
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1282
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    goto :goto_e3
.end method


# virtual methods
.method inferAction()Ljava/lang/String;
    .registers 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 971
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    if-nez v1, :cond_e

    .line 988
    :cond_d
    :goto_d
    return-object v0

    .line 975
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fwd:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 976
    const-string v0, "com.android.email.intent.action.FORWARD"

    goto :goto_d

    .line 977
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "re:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 978
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 981
    const/4 v1, 0x1

    if-le v0, v1, :cond_46

    .line 982
    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    goto :goto_d

    .line 984
    :cond_46
    const-string v0, "com.android.email.intent.action.REPLY"

    goto :goto_d
.end method

.method initFromIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2016
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)V

    .line 2019
    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2020
    if-eqz v0, :cond_10

    .line 2021
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2023
    :cond_10
    const-string v0, "android.intent.extra.CC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2024
    if-eqz v0, :cond_1d

    .line 2025
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2027
    :cond_1d
    const-string v0, "android.intent.extra.BCC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2028
    if-eqz v0, :cond_2a

    .line 2029
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2031
    :cond_2a
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2032
    if-eqz v0, :cond_37

    .line 2033
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2040
    :cond_37
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 2041
    if-eqz v0, :cond_50

    .line 2042
    const-string v1, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 2043
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->initializeFromMailTo(Ljava/lang/String;)V

    .line 2053
    :cond_50
    :goto_50
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2054
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2057
    const-string v0, "android.intent.action.SEND"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 2058
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2059
    if-eqz v0, :cond_7e

    .line 2060
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromSendIntent(Landroid/net/Uri;)V

    .line 2064
    :cond_7e
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 2066
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2067
    if-eqz v0, :cond_c2

    .line 2068
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9c
    :goto_9c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 2069
    check-cast v0, Landroid/net/Uri;

    .line 2070
    if-eqz v0, :cond_9c

    .line 2071
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromSendIntent(Landroid/net/Uri;)V

    goto :goto_9c

    .line 2045
    :cond_b0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 2046
    if-eqz v0, :cond_50

    .line 2047
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    goto :goto_50

    .line 2078
    :cond_c2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled()V

    .line 2079
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 2080
    return-void
.end method

.method isAddressAllValid()Z
    .registers 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1438
    invoke-static {}, Lcom/android/ex/chips/ChipsUtil;->supportsChipsUi()Z

    move-result v3

    .line 1439
    const/4 v2, 0x3

    new-array v4, v2, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v2, v4, v0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v2, v4, v1

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v5, v4, v2

    array-length v5, v4

    move v2, v0

    :goto_18
    if-ge v2, v5, :cond_42

    aget-object v6, v4, v2

    .line 1440
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1441
    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 1444
    if-eqz v3, :cond_34

    instance-of v1, v6, Lcom/android/ex/chips/RecipientEditTextView;

    if-nez v1, :cond_3e

    .line 1445
    :cond_34
    const v1, 0x7f08006b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 1450
    :cond_3e
    :goto_3e
    return v0

    .line 1439
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_42
    move v0, v1

    .line 1450
    goto :goto_3e
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mPickingAttachment:Z

    .line 1667
    if-nez p3, :cond_6

    .line 1672
    :goto_5
    return-void

    .line 1670
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromUri(Landroid/net/Uri;)V

    .line 1671
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    goto :goto_5
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->onBack(Z)V

    .line 558
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1679
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1687
    :goto_a
    return-void

    .line 1682
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    goto :goto_a

    .line 1684
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onDeleteAttachmentIconClicked(Landroid/view/View;)V

    goto :goto_a

    .line 1682
    nop

    :pswitch_data_18
    .packed-switch 0x7f0e004e
        :pswitch_13
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    const-wide/16 v8, -0x1

    .line 373
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 374
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 375
    const v6, 0x7f040030

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageCompose;->setContentView(I)V

    .line 377
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    .line 378
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->initViews()V

    .line 381
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 384
    if-eqz p1, :cond_59

    .line 385
    const-string v6, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 386
    .local v0, draftId:J
    const-string v6, "com.android.email.activity.MessageCompose.requestId"

    invoke-virtual {p1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 387
    .local v3, existingSaveTaskId:J
    const-string v6, "com.android.email.activity.MessageCompose.action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V

    .line 388
    sget-object v6, Lcom/android/email/activity/MessageCompose;->sActiveSaveTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    .line 390
    .local v2, existingSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    cmp-long v6, v0, v8

    if-nez v6, :cond_4c

    if-eqz v2, :cond_51

    .line 393
    :cond_4c
    const/4 v6, 0x0

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/android/email/activity/MessageCompose;->resumeDraft(JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Z)V

    .line 404
    .end local v0           #draftId:J
    .end local v2           #existingSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    .end local v3           #existingSaveTaskId:J
    :goto_50
    return-void

    .line 397
    .restart local v0       #draftId:J
    .restart local v2       #existingSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    .restart local v3       #existingSaveTaskId:J
    :cond_51
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->resolveIntent(Landroid/content/Intent;)V

    goto :goto_50

    .line 400
    .end local v0           #draftId:J
    .end local v2           #existingSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    .end local v3           #existingSaveTaskId:J
    :cond_59
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 401
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V

    .line 402
    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageCompose;->resolveIntent(Landroid/content/Intent;)V

    goto :goto_50
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 1958
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1959
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1960
    const/4 v0, 0x1

    return v0
.end method

.method public onDeleteMessageConfirmationDialogOkPressed()V
    .registers 5

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 1505
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->deleteMessage(J)V

    .line 1507
    :cond_13
    const v0, 0x7f0800a0

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1508
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 1509
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 1510
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 514
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    .line 517
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 519
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    instance-of v0, v0, Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_21

    .line 520
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 522
    :cond_21
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    instance-of v0, v0, Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_32

    .line 523
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 525
    :cond_32
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    instance-of v0, v0, Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_43

    .line 526
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/email/EmailAddressAdapter;->close()V

    .line 528
    :cond_43
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter "view"
    .parameter "focused"

    .prologue
    .line 1122
    if-eqz p2, :cond_9

    .line 1123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 1136
    :cond_9
    :goto_9
    return-void

    .line 1127
    :pswitch_a
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-nez v0, :cond_9

    .line 1132
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageContentSelection(Ljava/lang/String;)V

    goto :goto_9

    .line 1123
    :pswitch_data_24
    .packed-switch 0x7f0e0063
        :pswitch_a
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1730
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1731
    const/4 v0, 0x1

    .line 1733
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_b
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 503
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 504
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 505
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1965
    const v0, 0x7f0e0094

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1966
    const v0, 0x7f0e0055

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1967
    if-eqz v2, :cond_26

    .line 1969
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_40

    :cond_22
    move v0, v1

    :goto_23
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1972
    :cond_26
    const v0, 0x7f0e00e7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1973
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuickResponsesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1974
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuickResponsesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1975
    return v1

    .line 1969
    :cond_40
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public onQuickResponseSelected(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 1484
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 1485
    .local v1, start:I
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1486
    .local v0, end:I
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1487
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 436
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->removeListeners()V

    .line 437
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 438
    const-string v0, "com.android.email.activity.MessageCompose.ccShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 439
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFields()V

    .line 441
    :cond_14
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    const-string v0, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    :goto_1f
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const-string v3, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    :goto_2c
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 445
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->addListeners()V

    .line 446
    return-void

    :cond_33
    move v0, v2

    .line 441
    goto :goto_1f

    :cond_35
    move v1, v2

    .line 443
    goto :goto_2c
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 486
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 489
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 490
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 499
    :cond_f
    :goto_f
    return-void

    .line 496
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v0, :cond_f

    .line 497
    new-instance v1, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 9
    .parameter "outState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 539
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 541
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 542
    .local v0, draftId:J
    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-eqz v2, :cond_14

    .line 543
    const-string v2, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 545
    :cond_14
    const-string v5, "com.android.email.activity.MessageCompose.ccShown"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3e

    move v2, v3

    :goto_1f
    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 546
    const-string v2, "com.android.email.activity.MessageCompose.quotedTextShown"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_40

    :goto_2c
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 548
    const-string v2, "com.android.email.activity.MessageCompose.action"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v2, "com.android.email.activity.MessageCompose.requestId"

    iget-wide v3, p0, Lcom/android/email/activity/MessageCompose;->mLastSaveTaskId:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 553
    return-void

    :cond_3e
    move v2, v4

    .line 545
    goto :goto_1f

    :cond_40
    move v3, v4

    .line 546
    goto :goto_2c
.end method

.method processDraftMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .registers 8
    .parameter "message"
    .parameter "restoreViews"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 869
    if-eqz p2, :cond_3e

    .line 870
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 872
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 873
    .local v1, cc:[Lcom/android/emailcommon/mail/Address;
    array-length v2, v1

    if-lez v2, :cond_23

    .line 874
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v2, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 876
    :cond_23
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 877
    .local v0, bcc:[Lcom/android/emailcommon/mail/Address;
    array-length v2, v0

    if-lez v2, :cond_31

    .line 878
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v2, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 881
    :cond_31
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 883
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled()V

    .line 884
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 886
    .end local v0           #bcc:[Lcom/android/emailcommon/mail/Address;
    .end local v1           #cc:[Lcom/android/emailcommon/mail/Address;
    :cond_3e
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 889
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v4, 0x2

    and-int/2addr v2, v4

    if-nez v2, :cond_56

    const/4 v2, 0x1

    :goto_52
    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 892
    return-void

    :cond_56
    move v2, v3

    .line 890
    goto :goto_52
.end method

.method processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;)V
    .registers 9
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2235
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 2236
    if-nez v0, :cond_8

    .line 2237
    const-string v0, ""

    .line 2239
    :cond_8
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 2240
    :cond_1c
    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/email/activity/MessageCompose;->setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;Z)V

    .line 2241
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "re:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 2242
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2246
    :goto_4b
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    invoke-direct {p0, v5, v4}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 2258
    :goto_55
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled()V

    .line 2259
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 2260
    return-void

    .line 2244
    :cond_5c
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4b

    .line 2248
    :cond_62
    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 2249
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->clearAddressViews()V

    .line 2250
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fwd:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_90

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fwd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_90
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2252
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    invoke-direct {p0, v5, v4}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    goto :goto_55

    .line 2255
    :cond_9e
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected action for a call to processSourceMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method processSourceMessageAttachments(Ljava/util/List;Ljava/util/List;Z)Z
    .registers 10
    .parameter
    .parameter
    .parameter "include"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 2280
    .local p1, current:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .local p2, sourceAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2281
    .local v1, currentNames:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2282
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2285
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1b
    const/4 v2, 0x0

    .line 2286
    .local v2, dirty:Z
    if-eqz p3, :cond_3b

    .line 2288
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2289
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 2290
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2291
    const/4 v2, 0x1

    goto :goto_22

    .line 2296
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3b
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2297
    .local v4, sourceNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_44
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2298
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 2299
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {p0, p1, v5}, Lcom/android/email/activity/MessageCompose;->deleteAttachment(Ljava/util/List;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 2300
    const/4 v2, 0x1

    goto :goto_44

    .line 2305
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v4           #sourceNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_65
    return v2
.end method

.method public setFocusShifter(II)V
    .registers 6
    .parameter "fromViewId"
    .parameter "targetViewId"

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 622
    .local v0, label:Landroid/view/View;
    if-eqz v0, :cond_12

    .line 623
    invoke-static {p0, p2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    .line 624
    .local v1, target:Landroid/view/View;
    new-instance v2, Lcom/android/email/activity/MessageCompose$2;

    invoke-direct {v2, p0, v1}, Lcom/android/email/activity/MessageCompose$2;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    .end local v1           #target:Landroid/view/View;
    :cond_12
    return-void
.end method

.method setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1986
    const/4 v0, 0x0

    .line 1987
    if-eqz p1, :cond_13

    .line 1988
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 1989
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1991
    :cond_13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1992
    if-eqz v0, :cond_25

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2c

    .line 1993
    :cond_25
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 1995
    :cond_2c
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 1998
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2000
    :cond_36
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 452
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method setMessageContentSelection(Ljava/lang/String;)V
    .registers 9
    .parameter "signature"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2313
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 2314
    .local v2, selection:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 2315
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2316
    .local v3, signatureLength:I
    sub-int v0, v2, v3

    .line 2317
    .local v0, estimatedSelection:I
    if-ltz v0, :cond_3e

    .line 2318
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 2319
    .local v4, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 2321
    .local v1, i:I
    :goto_1b
    if-ge v1, v3, :cond_2c

    add-int v5, v0, v1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_2c

    .line 2322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 2324
    :cond_2c
    if-ne v1, v3, :cond_3e

    .line 2325
    move v2, v0

    .line 2326
    :goto_2f
    if-lez v2, :cond_3e

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3e

    .line 2327
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 2332
    .end local v0           #estimatedSelection:I
    .end local v1           #i:I
    .end local v3           #signatureLength:I
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_3e
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 2333
    return-void
.end method

.method setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;Z)V
    .registers 14
    .parameter "message"
    .parameter "account"
    .parameter "replyAll"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2183
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->clearAddressViews()V

    .line 2186
    iget-object v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    .line 2187
    .local v7, replyToAddresses:[Lcom/android/emailcommon/mail/Address;
    array-length v8, v7

    if-nez v8, :cond_12

    .line 2188
    iget-object v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    .line 2192
    :cond_12
    iget-object v6, p2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 2193
    .local v6, ourAddress:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2194
    .local v3, containsOurAddress:Z
    move-object v2, v7

    .local v2, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_18
    if-ge v4, v5, :cond_27

    aget-object v0, v2, v4

    .line 2195
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 2196
    const/4 v3, 0x1

    .line 2201
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    :cond_27
    if-eqz v3, :cond_47

    .line 2202
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 2207
    :goto_30
    if-eqz p3, :cond_5d

    .line 2209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2210
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    move-object v2, v7

    array-length v5, v2

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v5, :cond_4d

    aget-object v0, v2, v4

    .line 2211
    .restart local v0       #address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2210
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 2194
    .end local v1           #allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 2204
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    :cond_47
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v8, v7}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    goto :goto_30

    .line 2214
    .restart local v1       #allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    :cond_4d
    if-nez v3, :cond_56

    .line 2215
    iget-object v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v8, v6, v9, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 2218
    :cond_56
    iget-object v8, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v8, v6, v9, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 2220
    .end local v1           #allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    :cond_5d
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled()V

    .line 2221
    return-void
.end method
