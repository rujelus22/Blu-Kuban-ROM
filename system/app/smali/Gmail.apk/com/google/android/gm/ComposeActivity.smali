.class public Lcom/google/android/gm/ComposeActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/google/android/gm/ComposeController;
.implements Lcom/google/android/gm/MenuHandler$HelpCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;,
        Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;,
        Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static ACCOUNT_ADDRESS:I

.field private static ACCOUNT_DISPLAY:I

.field private static final HEADER_SEPARATOR_LENGTH:I

.field public static IS_CUSTOMFROM:I

.field private static REAL_ACCOUNT:I

.field private static sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTestSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;


# instance fields
.field protected mAccount:Ljava/lang/String;

.field private mAccountSpinner:Landroid/widget/Spinner;

.field private mAccountSpinnerReady:Z

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mActiveTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;",
            ">;"
        }
    .end annotation
.end field

.field private mAddingAttachment:Z

.field protected mAttachmentAddedOrRemoved:Z

.field private mComposeArea:Lcom/google/android/gm/ComposeAreaController;

.field private mCurrentMode:I

.field private mCurrentReplyFromAccount:[Ljava/lang/String;

.field private mDiscardAttacments:Landroid/app/AlertDialog;

.field private mDiscardDialog:Landroid/app/AlertDialog;

.field private mDraftId:J

.field private mDraftIdLock:Ljava/lang/Object;

.field private mDraftSender:Ljava/lang/String;

.field private mExtraFromAccount:Ljava/lang/String;

.field private mForward:Z

.field private mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mIsDraft:Z

.field private mLaunchedFromGmail:Z

.field private mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

.field private mMessageIsForwardOrReply:Z

.field private mPrefs:Lcom/google/android/gm/persistence/Persistence;

.field private mRecipient:Ljava/lang/String;

.field private mRefMessageId:J

.field private mReplyFromAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyFromChanged:Z

.field private mRequestId:I

.field private mRestoredCustomFrom:Ljava/lang/String;

.field private mRestoredRequestId:I

.field private mSendConfirmDialog:Landroid/app/AlertDialog;

.field private mSendSaveTaskHandler:Landroid/os/Handler;

.field private mTextChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 80
    const-class v0, Lcom/google/android/gm/ComposeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/google/android/gm/ComposeActivity;->$assertionsDisabled:Z

    .line 124
    const-string v0, "<br type=\'attribution\'>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/gm/ComposeActivity;->HEADER_SEPARATOR_LENGTH:I

    .line 135
    sget v0, Lcom/google/android/gm/utils/CustomFromUtils;->REAL_ACCOUNT:I

    sput v0, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    .line 136
    sget v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_DISPLAY:I

    sput v0, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_DISPLAY:I

    .line 137
    sget v0, Lcom/google/android/gm/utils/CustomFromUtils;->ACCOUNT_ADDRESS:I

    sput v0, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    .line 138
    const/4 v0, 0x3

    sput v0, Lcom/google/android/gm/ComposeActivity;->IS_CUSTOMFROM:I

    .line 195
    sput-object v1, Lcom/google/android/gm/ComposeActivity;->sTestSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    .line 214
    sput-object v1, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    .line 80
    :cond_28
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromChanged:Z

    .line 139
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mMessageIsForwardOrReply:Z

    .line 145
    iput-wide v3, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    .line 146
    iput v1, p0, Lcom/google/android/gm/ComposeActivity;->mRequestId:I

    .line 147
    iput v1, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredRequestId:I

    .line 148
    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredCustomFrom:Ljava/lang/String;

    .line 149
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mIsDraft:Z

    .line 164
    iput-wide v3, p0, Lcom/google/android/gm/ComposeActivity;->mRefMessageId:J

    .line 173
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mAttachmentAddedOrRemoved:Z

    .line 174
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinnerReady:Z

    .line 175
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 183
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mLaunchedFromGmail:Z

    .line 188
    iput-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    .line 193
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mActiveTasks:Ljava/util/ArrayList;

    .line 1698
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ComposeActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccounts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/gm/ComposeActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity;->mAccounts:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/gm/ComposeActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->createReplyFromCache()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gm/ComposeActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->discardChanges()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/gm/ComposeActivity;)Lcom/google/android/gm/ComposeAreaController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/gm/ComposeActivity;[Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gm/ComposeActivity;->updateReplyFromAccount([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/gm/ComposeActivity;)Landroid/widget/Spinner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/gm/ComposeActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()I
    .registers 1

    .prologue
    .line 80
    sget v0, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/gm/ComposeActivity;Lcom/google/android/gm/FromAddressSpinnerAdapter;ZLjava/lang/String;)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/ComposeActivity;->getCurrentAccountIndex(Lcom/google/android/gm/FromAddressSpinnerAdapter;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/ComposeActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->initFromSpinner()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/ComposeActivity;Landroid/text/Spanned;ZZZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gm/ComposeActivity;->sendOrSave(Landroid/text/Spanned;ZZZ)V

    return-void
.end method

.method static synthetic access$400()Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sTestSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/ComposeActivity;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gm/ComposeActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/google/android/gm/ComposeActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    return-wide p1
.end method

.method static synthetic access$700()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/ComposeActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->saveRequestMap()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/gm/ComposeActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredRequestId:I

    return v0
.end method

.method private asyncInitFromSpinner()V
    .registers 2

    .prologue
    .line 1076
    new-instance v0, Lcom/google/android/gm/ComposeActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/ComposeActivity$1;-><init>(Lcom/google/android/gm/ComposeActivity;)V

    .line 1097
    .local v0, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    invoke-static {p0, v0}, Lcom/google/android/gm/AccountHelper;->getSyncingAccounts(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 1098
    return-void
.end method

.method private checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .parameter "to"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1344
    .local p2, wrongEmailsOut:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/ComposeAreaController;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 1345
    return-void
.end method

.method public static compose(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const-string v1, "fromgmail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    const-string v1, "action"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    return-void
.end method

.method private createReplyFromCache()V
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1043
    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    .line 1046
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mMessageIsForwardOrReply:Z

    if-eqz v0, :cond_6d

    .line 1047
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1051
    :goto_16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1052
    invoke-static {v0}, Lcom/google/android/gm/utils/CustomFromUtils;->getCustomReplyFrom(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 1056
    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    new-array v4, v11, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v0, v4, v8

    aput-object v0, v4, v9

    const-string v5, "false"

    aput-object v5, v4, v10

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    if-eqz v1, :cond_1a

    .line 1060
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_41
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1061
    sget v4, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_DISPLAY:I

    aget-object v4, v1, v4

    if-eqz v4, :cond_41

    .line 1062
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    new-array v5, v11, [Ljava/lang/String;

    sget v6, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_DISPLAY:I

    aget-object v6, v1, v6

    aput-object v6, v5, v7

    sget v6, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v1, v1, v6

    aput-object v1, v5, v8

    aput-object v0, v5, v9

    const-string v1, "true"

    aput-object v1, v5, v10

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 1049
    :cond_6d
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccounts:Ljava/util/List;

    goto :goto_16

    .line 1069
    :cond_70
    return-void
.end method

.method public static createReplyIntent(Landroid/content/Context;Ljava/lang/String;JZLjava/lang/Integer;)Landroid/content/Intent;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const-string v2, "fromgmail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string v2, "action"

    if-eqz p4, :cond_26

    :goto_11
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string v0, "account"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v0, "in-reference-to"

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 251
    if-eqz p5, :cond_25

    .line 253
    const-string v0, "notification"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 256
    :cond_25
    return-object v1

    .line 248
    :cond_26
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private discardChanges()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 838
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mTextChanged:Z

    .line 839
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mAttachmentAddedOrRemoved:Z

    .line 840
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromChanged:Z

    .line 841
    return-void
.end method

.method private doDiscard()V
    .registers 4

    .prologue
    .line 733
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0037

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDiscardDialog:Landroid/app/AlertDialog;

    .line 738
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDiscardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 739
    return-void
.end method

.method private doDiscardWithoutConfirmation(Z)V
    .registers 8
    .parameter "showToast"

    .prologue
    const-wide/16 v4, 0x0

    .line 768
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 769
    :try_start_5
    iget-wide v2, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1a

    .line 770
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gm/provider/Gmail$MessageModification;->expungeMessage(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 775
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    .line 777
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2f

    .line 779
    if-eqz p1, :cond_28

    .line 781
    const v0, 0x7f0c007d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 785
    :cond_28
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->discardChanges()V

    .line 786
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->finish()V

    .line 787
    return-void

    .line 777
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public static draft(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    const-string v1, "fromgmail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    const-string v1, "action"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v1, "draftId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 291
    return-void
.end method

.method private finishOnCreateAfterAccountSelected(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 1245
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    const-string v1, ""

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gm/ComposeAreaController;->setBody(Ljava/lang/CharSequence;Z)V

    .line 1247
    const v0, 0x7f0f0021

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1248
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    invoke-direct {p0, v5}, Lcom/google/android/gm/ComposeActivity;->showFromSpinner(Z)V

    .line 1257
    new-instance v6, Landroid/util/TimingLogger;

    const-string v0, "Gmail"

    const-string v1, "ComposeActivity.initDraftIdAndUi"

    invoke-direct {v6, v0, v1}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1263
    if-eqz p1, :cond_bd

    .line 1264
    const-string v0, "draftId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    .line 1265
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const-string v7, "showCcBcc"

    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v0, v7, v4}, Lcom/google/android/gm/ComposeLayout;->hideOrShowCcBcc(ZZ)V

    .line 1266
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const-string v7, "showBcc"

    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/gm/ComposeLayout;->hideOrShowBcc(Z)V

    .line 1268
    const-string v0, "customFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredCustomFrom:Ljava/lang/String;

    .line 1270
    iget-wide v7, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    cmp-long v0, v7, v2

    if-nez v0, :cond_7a

    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1271
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1274
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1275
    if-eqz v0, :cond_ba

    .line 1276
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    .line 1285
    :cond_7a
    :goto_7a
    const-string v0, "get values"

    invoke-virtual {v6, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1289
    invoke-direct {p0, v5}, Lcom/google/android/gm/ComposeActivity;->setQuotedSectionVisibility(Z)V

    .line 1293
    iput v9, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 1294
    if-eqz v1, :cond_96

    .line 1295
    const-string v0, "action"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1296
    const-string v0, "action"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 1300
    :cond_96
    iget-wide v7, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    cmp-long v0, v7, v2

    if-nez v0, :cond_118

    .line 1301
    if-eqz v1, :cond_d0

    .line 1302
    const-string v0, "in-reference-to"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1303
    const-string v0, "in-reference-to"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1304
    sget-boolean v7, Lcom/google/android/gm/ComposeActivity;->$assertionsDisabled:Z

    if-nez v7, :cond_d1

    iget v7, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    if-ne v7, v9, :cond_d1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1279
    :cond_ba
    iput v7, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredRequestId:I

    goto :goto_7a

    .line 1282
    :cond_bd
    if-eqz v1, :cond_7a

    const-string v0, "draftId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1283
    const-string v0, "draftId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    goto :goto_7a

    :cond_d0
    move-wide v0, v2

    .line 1307
    :cond_d1
    const-string v7, "more values"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1309
    cmp-long v7, v0, v2

    if-eqz v7, :cond_10b

    .line 1310
    iget v7, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    invoke-direct {p0, v0, v1, v7, p2}, Lcom/google/android/gm/ComposeActivity;->initFromRefMessage(JILandroid/content/Intent;)V

    .line 1311
    const-string v7, "initFromRefMessage"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1321
    :goto_e4
    const-string v7, "fill ui"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1323
    cmp-long v0, v0, v2

    if-eqz v0, :cond_11d

    move v0, v4

    :goto_ee
    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mMessageIsForwardOrReply:Z

    .line 1324
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateSendOptions()V

    .line 1327
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->initSpinnerFromCache()V

    .line 1329
    if-nez p1, :cond_fd

    .line 1330
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->requestFocus()V

    .line 1332
    :cond_fd
    const-string v0, "finish"

    invoke-virtual {v6, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v6}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 1334
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->addChangeListeners()V

    .line 1335
    return-void

    .line 1315
    :cond_10b
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/gm/ComposeActivity;->initFromExtras(Landroid/content/Intent;)V

    .line 1316
    const-string v7, "initFromExtras"

    invoke-virtual {v6, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto :goto_e4

    .line 1319
    :cond_118
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->initFromDraftCursor()J

    move-result-wide v0

    goto :goto_e4

    :cond_11d
    move v0, v5

    .line 1323
    goto :goto_ee
.end method

.method public static forward(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/ComposeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    const-string v1, "fromgmail"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "in-reference-to"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method private getCurrentAccountIndex(Lcom/google/android/gm/FromAddressSpinnerAdapter;ZLjava/lang/String;)I
    .registers 11
    .parameter "adapter"
    .parameter "checkRealAccount"
    .parameter "replyFromAccount"

    .prologue
    .line 1143
    const/4 v2, 0x0

    .line 1144
    .local v2, currentIndex:I
    const/4 v1, 0x0

    .line 1146
    .local v1, currentAccountIndex:I
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1151
    .local v0, account:[Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->add(Ljava/lang/Object;)V

    .line 1154
    if-eqz p2, :cond_59

    .line 1161
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    if-eqz v4, :cond_41

    .line 1162
    sget v4, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v4, v0, v4

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    sget v6, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    sget v4, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v4, v0, v4

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    sget v6, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1165
    move v1, v2

    .line 1178
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1167
    :cond_41
    sget v4, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v4, v0, v4

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    sget v4, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v4, v0, v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1169
    move v1, v2

    goto :goto_3e

    .line 1173
    :cond_59
    sget v4, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v4, v0, v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1174
    move v1, v2

    goto :goto_3e

    .line 1180
    .end local v0           #account:[Ljava/lang/String;
    :cond_65
    return v1
.end method

.method private getSelectedAccountInfo(I)Ljava/lang/String;
    .registers 5
    .parameter "index"

    .prologue
    .line 1660
    const/4 v0, 0x0

    .line 1661
    .local v0, selectedAccountInfo:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinnerReady:Z

    if-eqz v1, :cond_15

    .line 1662
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v0, v1, p1

    .line 1665
    :cond_15
    return-object v0
.end method

.method private hideOrShowFromSpinner()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1188
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-le v1, v0, :cond_d

    .line 1193
    .local v0, showSpinner:Z
    :goto_9
    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeActivity;->showFromSpinner(Z)V

    .line 1194
    return-void

    .line 1188
    .end local v0           #showSpinner:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private initFromDraftCursor()J
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 948
    const-wide/16 v2, 0x0

    .line 950
    .local v2, refMessageId:J
    iget-object v7, p0, Lcom/google/android/gm/ComposeActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v8, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iget-wide v9, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gm/provider/Gmail;->getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v1

    .line 951
    .local v1, draftCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    iput-boolean v6, p0, Lcom/google/android/gm/ComposeActivity;->mIsDraft:Z

    .line 954
    :try_start_10
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 956
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getRefMessageId()J

    move-result-wide v2

    .line 957
    iget v7, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_25

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getForward()Z

    move-result v7

    if-eqz v7, :cond_26

    :cond_25
    move v5, v6

    :cond_26
    iput-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 958
    const/4 v0, -0x1

    .line 959
    .local v0, action:I
    iget-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    if-eqz v5, :cond_52

    .line 960
    const/4 v0, 0x2

    .line 974
    :goto_2e
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 975
    .local v4, tokens:[Landroid/text/util/Rfc822Token;
    if-eqz v4, :cond_71

    array-length v5, v4

    if-lez v5, :cond_71

    .line 977
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mDraftSender:Ljava/lang/String;

    .line 981
    :goto_44
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v5, v1}, Lcom/google/android/gm/ComposeAreaController;->initFromCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;)V

    .line 982
    iput v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 983
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateSendOptions()V
    :try_end_4e
    .catchall {:try_start_10 .. :try_end_4e} :catchall_78

    .line 986
    .end local v0           #action:I
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_4e
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 989
    return-wide v2

    .line 961
    .restart local v0       #action:I
    :cond_52
    const-wide/16 v7, 0x0

    cmp-long v5, v2, v7

    if-eqz v5, :cond_6f

    .line 962
    :try_start_58
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    add-int/2addr v5, v7

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getBccAddresses()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    add-int/2addr v5, v7

    if-le v5, v6, :cond_6d

    .line 965
    const/4 v0, 0x1

    goto :goto_2e

    .line 967
    :cond_6d
    const/4 v0, 0x0

    goto :goto_2e

    .line 970
    :cond_6f
    const/4 v0, -0x1

    goto :goto_2e

    .line 979
    .restart local v4       #tokens:[Landroid/text/util/Rfc822Token;
    :cond_71
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mDraftSender:Ljava/lang/String;
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_78

    goto :goto_44

    .line 986
    .end local v0           #action:I
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :catchall_78
    move-exception v5

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    throw v5
.end method

.method private initFromRefMessage(JILandroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 884
    new-instance v6, Landroid/util/TimingLogger;

    const-string v0, "Gmail"

    const-string v1, "ComposeActivity.initFromRefMessage"

    invoke-direct {v6, v0, v1}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iput-wide p1, p0, Lcom/google/android/gm/ComposeActivity;->mRefMessageId:J

    .line 887
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gm/provider/Gmail;->getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v1

    .line 889
    const-string v0, "get ref message"

    invoke-virtual {v6, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 891
    :try_start_18
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 893
    const/4 v0, 0x2

    if-ne p3, v0, :cond_24

    .line 894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 897
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 899
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 900
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gm/ComposeActivity;->getMatchingRecipient(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    .line 901
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/ComposeAreaController;->initFromRefMessage(Lcom/google/android/gm/provider/Gmail$MessageCursor;Ljava/lang/String;IZLandroid/content/Intent;)V

    .line 902
    const-string v0, "initComposeAreaFromRefMessage"

    invoke-virtual {v6, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 904
    const-string v0, "add attachments"

    invoke-virtual {v6, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_18 .. :try_end_59} :catchall_65

    .line 908
    :cond_59
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 910
    const-string v0, "finish"

    invoke-virtual {v6, v0}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v6}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 912
    return-void

    .line 908
    :catchall_65
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    throw v0
.end method

.method private initFromSpinner()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1104
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 1105
    iput-boolean v2, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinnerReady:Z

    .line 1139
    :goto_c
    return-void

    .line 1108
    :cond_d
    new-instance v4, Lcom/google/android/gm/FromAddressSpinnerAdapter;

    invoke-direct {v4, p0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;-><init>(Landroid/content/Context;)V

    .line 1112
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mExtraFromAccount:Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 1113
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mExtraFromAccount:Ljava/lang/String;

    .line 1126
    :goto_18
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    :cond_26
    move v1, v3

    .line 1128
    :goto_27
    invoke-direct {p0, v4, v1, v0}, Lcom/google/android/gm/ComposeActivity;->getCurrentAccountIndex(Lcom/google/android/gm/FromAddressSpinnerAdapter;ZLjava/lang/String;)I

    move-result v1

    .line 1130
    const v0, 0x7f0f001f

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    .line 1131
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1132
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 1133
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1134
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromAccounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    .line 1136
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->hideOrShowFromSpinner()V

    .line 1137
    iput-boolean v3, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinnerReady:Z

    .line 1138
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Lcom/google/android/gm/FromAddressSpinnerAdapter;->setSpinner(Landroid/widget/Spinner;)V

    goto :goto_c

    .line 1114
    :cond_5a
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredCustomFrom:Ljava/lang/String;

    if-eqz v0, :cond_61

    .line 1115
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mRestoredCustomFrom:Ljava/lang/String;

    goto :goto_18

    .line 1116
    :cond_61
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    if-eqz v0, :cond_6c

    .line 1117
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    sget v1, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v0, v0, v1

    goto :goto_18

    .line 1118
    :cond_6c
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mIsDraft:Z

    if-eqz v0, :cond_73

    .line 1119
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftSender:Ljava/lang/String;

    goto :goto_18

    .line 1120
    :cond_73
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7f

    .line 1121
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/utils/CustomFromUtils;->getDefaultCustomFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1123
    :cond_7f
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gm/utils/CustomFromUtils;->getReplyFromAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_88
    move v1, v2

    .line 1126
    goto :goto_27
.end method

.method private initSpinnerFromCache()V
    .registers 4

    .prologue
    .line 1028
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gm/persistence/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 1030
    .local v0, cachedSyncedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 1031
    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccounts:Ljava/util/List;

    .line 1033
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->createReplyFromCache()V

    .line 1034
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->initFromSpinner()V

    .line 1036
    :cond_19
    return-void
.end method

.method private isBlank()Z
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->isBlank()Z

    move-result v0

    return v0
.end method

.method private needRequestMessageIdMap(Landroid/os/Bundle;)Z
    .registers 3
    .parameter "icicle"

    .prologue
    .line 448
    if-eqz p1, :cond_c

    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private onAppUpPressed()V
    .registers 3

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mLaunchedFromGmail:Z

    if-eqz v0, :cond_8

    .line 582
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->onBackPressed()V

    .line 594
    :goto_7
    return-void

    .line 589
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/GmailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 592
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->startActivity(Landroid/content/Intent;)V

    .line 593
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->finish()V

    goto :goto_7
.end method

.method private onSwitchState()V
    .registers 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->clearRecipients()V

    .line 646
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateSendOptions()V

    .line 647
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeActivity;->updateMessage(I)V

    .line 648
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->requestFocus()V

    .line 649
    return-void
.end method

.method static registerTestSendOrSaveCallback(Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;)V
    .registers 3
    .parameter "testCallback"

    .prologue
    .line 294
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sTestSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    if-eqz v0, :cond_e

    if-eqz p0, :cond_e

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to register more than one test callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_e
    sput-object p0, Lcom/google/android/gm/ComposeActivity;->sTestSendOrSaveCallback:Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;

    .line 298
    return-void
.end method

.method public static reply(Landroid/content/Context;Ljava/lang/String;JZ)V
    .registers 11
    .parameter "launcher"
    .parameter "account"
    .parameter "messageId"
    .parameter "isReplyAll"

    .prologue
    .line 264
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/ComposeActivity;->createReplyIntent(Landroid/content/Context;Ljava/lang/String;JZLjava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method private restoreRequestMap()V
    .registers 10

    .prologue
    .line 428
    invoke-static {p0}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 429
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v7, "cache-message-request-ids"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 431
    .local v5, retrievedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_3b

    .line 432
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 433
    .local v0, entry:Ljava/lang/String;
    const-string v7, " "

    invoke-static {v0, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, keyValue:[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_11

    .line 435
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 436
    .local v2, key:Ljava/lang/Integer;
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 437
    .local v6, value:Ljava/lang/Long;
    sget-object v7, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 441
    .end local v0           #entry:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #keyValue:[Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Long;
    :cond_3b
    return-void
.end method

.method private saveIfNeeded()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 849
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 859
    :cond_5
    :goto_5
    return-void

    .line 856
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 857
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mAddingAttachment:Z

    if-nez v0, :cond_15

    move v0, v1

    :goto_11
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ComposeActivity;->doSave(ZZ)V

    goto :goto_5

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private saveIfNeededOnOrientationChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 862
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 872
    :cond_5
    :goto_5
    return-void

    .line 869
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 870
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mAddingAttachment:Z

    if-nez v0, :cond_15

    move v0, v1

    :goto_11
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/ComposeActivity;->doSaveOrientationChanged(ZZ)V

    goto :goto_5

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private saveRequestMap()V
    .registers 11

    .prologue
    .line 408
    sget-object v8, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 410
    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 411
    .local v7, setForStorage:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 412
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 413
    .local v6, requestId:Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 414
    .local v5, messageId:Ljava/lang/Long;
    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    .line 415
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, entryString:Ljava/lang/String;
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 419
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v3           #entryString:Ljava/lang/String;
    .end local v5           #messageId:Ljava/lang/Long;
    .end local v6           #requestId:Ljava/lang/Integer;
    :cond_4d
    invoke-static {p0}, Lcom/google/android/gm/persistence/Persistence;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 420
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "cache-message-request-ids"

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 422
    return-void
.end method

.method private sendOrSave(Landroid/text/Spanned;ZZZ)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1520
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1653
    :cond_6
    :goto_6
    return-void

    .line 1525
    :cond_7
    if-eqz p4, :cond_c8

    .line 1526
    const/4 v1, 0x0

    new-array v8, v1, [Ljava/lang/String;

    move-object v7, v8

    move-object v6, v8

    .line 1533
    :goto_e
    new-instance v14, Lcom/google/android/gm/ComposeActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/google/android/gm/ComposeActivity$3;-><init>(Lcom/google/android/gm/ComposeActivity;)V

    .line 1610
    sget v1, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeActivity;->getSelectedAccountInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 1611
    sget v1, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/gm/ComposeActivity;->getSelectedAccountInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 1612
    if-eqz v3, :cond_29

    if-nez v4, :cond_31

    .line 1615
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 1616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 1619
    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    if-nez v1, :cond_4e

    .line 1620
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Send Message Task Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1623
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gm/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    .line 1625
    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->getSubject()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->getQuotedText()Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->getAttachments()Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gm/ComposeActivity;->mRefMessageId:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gm/ComposeActivity;->mSendSaveTaskHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    move/from16 v17, v0

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move/from16 v16, p2

    invoke-static/range {v1 .. v17}, Lcom/google/android/gm/ComposeActivity;->sendOrSaveInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;JLcom/google/android/gm/ComposeActivity$SendOrSaveCallback;Landroid/os/Handler;ZZ)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/google/android/gm/ComposeActivity;->mRequestId:I

    .line 1630
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    if-eqz v1, :cond_9e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1631
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    .line 1633
    :cond_9e
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 1638
    if-eqz p3, :cond_bb

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ComposeActivity;->getChangingConfigurations()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_bb

    .line 1639
    if-eqz p2, :cond_e2

    const v1, 0x7f0c007b

    :goto_b1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1646
    :cond_bb
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/ComposeActivity;->discardChanges()V

    .line 1647
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ComposeActivity;->updateUi()V

    .line 1650
    if-nez p2, :cond_6

    .line 1651
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/ComposeActivity;->finish()V

    goto/16 :goto_6

    .line 1528
    :cond_c8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->getToAddresses()[Ljava/lang/String;

    move-result-object v6

    .line 1529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->getCcAddresses()[Ljava/lang/String;

    move-result-object v7

    .line 1530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->getBccAddresses()[Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_e

    .line 1639
    :cond_e2
    const v1, 0x7f0c007c

    goto :goto_b1
.end method

.method static sendOrSaveInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;JLcom/google/android/gm/ComposeActivity$SendOrSaveCallback;Landroid/os/Handler;ZZ)I
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/text/Spanned;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;J",
            "Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;",
            "Landroid/os/Handler;",
            "ZZ)I"
        }
    .end annotation

    .prologue
    .line 1461
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1463
    invoke-static {v4, p5}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putToAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 1464
    invoke-static {v4, p6}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putCcAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 1465
    invoke-static {v4, p7}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putBccAddresses(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 1467
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putSubject(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1468
    invoke-static {p4}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    .line 1469
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    const/4 v1, 0x1

    .line 1470
    :goto_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1471
    if-eqz v1, :cond_31

    .line 1472
    if-eqz p16, :cond_73

    .line 1474
    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1475
    move/from16 v0, p16

    invoke-static {v4, v0}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putForward(Landroid/content/ContentValues;Z)V

    .line 1495
    :cond_31
    :goto_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putBody(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1497
    invoke-static {p1, p3}, Lcom/google/android/gm/utils/CustomFromUtils;->isCustomFrom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    invoke-static {p1}, Lcom/google/android/gm/utils/CustomFromUtils;->getDefaultCustomFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1499
    :cond_48
    invoke-static {v4, p3}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putCustomFromAddress(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1502
    :cond_4b
    move-object/from16 v0, p10

    invoke-static {v4, v0}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putAttachments(Landroid/content/ContentValues;Ljava/util/List;)V

    .line 1504
    new-instance v1, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v5, p11

    move/from16 v7, p15

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;JZ)V

    .line 1506
    new-instance v2, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;

    move-object/from16 v0, p13

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;-><init>(Landroid/content/Context;Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;)V

    .line 1508
    move-object/from16 v0, p13

    invoke-interface {v0, v2}, Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;->initializeSendOrSave(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)V

    .line 1511
    move-object/from16 v0, p14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1513
    invoke-virtual {v1}, Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;->requestId()I

    move-result v1

    return v1

    .line 1469
    :cond_71
    const/4 v1, 0x0

    goto :goto_1e

    .line 1478
    :cond_73
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1479
    const-string v5, "<br type=\'attribution\'>"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1480
    if-ltz v5, :cond_9b

    .line 1481
    sget v6, Lcom/google/android/gm/ComposeActivity;->HEADER_SEPARATOR_LENGTH:I

    add-int/2addr v5, v6

    .line 1482
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1484
    move/from16 v0, p16

    invoke-static {v4, v0}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putForward(Landroid/content/ContentValues;Z)V

    .line 1485
    invoke-static {v4, v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putIncludeQuotedText(Landroid/content/ContentValues;Z)V

    .line 1486
    int-to-long v1, v2

    invoke-static {v4, v1, v2}, Lcom/google/android/gm/provider/Gmail$MessageModification;->putQuoteStartPos(Landroid/content/ContentValues;J)V

    goto :goto_31

    .line 1488
    :cond_9b
    const-string v1, "Gmail"

    const-string v5, "Couldn\'t find quoted text"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1491
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31
.end method

.method private setQuotedSectionVisibility(Z)V
    .registers 3
    .parameter "show"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->setQuotedSectionVisibility(Z)V

    .line 380
    return-void
.end method

.method private setupRequestMap(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 383
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_e

    .line 384
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 387
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->restoreRequestMap()V

    .line 390
    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/gm/ComposeActivity;->needRequestMessageIdMap(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 394
    sget-object v0, Lcom/google/android/gm/ComposeActivity;->sRequestMessageIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 396
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->saveRequestMap()V

    .line 399
    :cond_1c
    return-void
.end method

.method private shouldSave()Z
    .registers 3

    .prologue
    .line 823
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 828
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mTextChanged:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mAttachmentAddedOrRemoved:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromChanged:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->isBlank()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_17
    const/4 v0, 0x1

    :goto_18
    monitor-exit v1

    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_18

    .line 830
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private showDiscardAttachmentsDialog([Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1887
    new-instance v0, Lcom/google/android/gm/ComposeActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/ComposeActivity$4;-><init>(Lcom/google/android/gm/ComposeActivity;[Ljava/lang/String;)V

    .line 1904
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0039

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDiscardAttacments:Landroid/app/AlertDialog;

    .line 1911
    return-void
.end method

.method private showFromSpinner(Z)V
    .registers 6
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1202
    const v0, 0x7f0f0020

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1d

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    const v0, 0x7f0f001e

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1f

    :goto_19
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1208
    return-void

    :cond_1d
    move v0, v2

    .line 1202
    goto :goto_d

    :cond_1f
    move v2, v1

    .line 1206
    goto :goto_19
.end method

.method private showRecipientErrorDialog(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->showRecipientErrorDialog(Ljava/lang/String;)V

    .line 1364
    return-void
.end method

.method private showSendConfirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 1349
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mSendConfirmDialog:Landroid/app/AlertDialog;

    .line 1352
    :cond_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c013d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0063

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mSendConfirmDialog:Landroid/app/AlertDialog;

    .line 1360
    return-void
.end method

.method private switchToForward()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 629
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    if-eq v0, v1, :cond_d

    .line 630
    iput v1, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 632
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->onSwitchState()V

    .line 634
    :cond_d
    return-void
.end method

.method private switchToReply()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 621
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    if-eqz v0, :cond_c

    .line 622
    iput v1, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 623
    iput-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 624
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->onSwitchState()V

    .line 626
    :cond_c
    return-void
.end method

.method private switchToReplyAll()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 637
    iget v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    if-eq v0, v1, :cond_d

    .line 638
    iput v1, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 640
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->onSwitchState()V

    .line 642
    :cond_d
    return-void
.end method

.method private updateFromDraftCursor()J
    .registers 9

    .prologue
    .line 997
    const-wide/16 v2, 0x0

    .line 999
    .local v2, refMessageId:J
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gm/provider/Gmail;->getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v0

    .line 1000
    .local v0, draftCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    const/4 v1, 0x0

    .line 1003
    .local v1, refMessageCursor:Lcom/google/android/gm/provider/Gmail$MessageCursor;
    :try_start_d
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1005
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getRefMessageId()J

    move-result-wide v2

    .line 1006
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_25

    .line 1008
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gm/provider/Gmail;->getMessageCursorForServerMessageId(Ljava/lang/String;J)Lcom/google/android/gm/provider/Gmail$MessageCursor;

    move-result-object v1

    .line 1011
    :cond_25
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    iget v5, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/gm/ComposeAreaController;->updateFromCursor(Lcom/google/android/gm/provider/Gmail$MessageCursor;Lcom/google/android/gm/provider/Gmail$MessageCursor;I)V

    .line 1012
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateSendOptions()V
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_38

    .line 1015
    :cond_2f
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 1016
    if-eqz v1, :cond_37

    .line 1017
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 1021
    :cond_37
    return-wide v2

    .line 1015
    :catchall_38
    move-exception v4

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    .line 1016
    if-eqz v1, :cond_41

    .line 1017
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->close()V

    :cond_41
    throw v4
.end method

.method private updateMessage(I)V
    .registers 6
    .parameter "action"

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mIsDraft:Z

    if-eqz v0, :cond_8

    .line 614
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateFromDraftCursor()J

    .line 618
    :goto_7
    return-void

    .line 616
    :cond_8
    iget-wide v0, p0, Lcom/google/android/gm/ComposeActivity;->mRefMessageId:J

    iget v2, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gm/ComposeActivity;->initFromRefMessage(JILandroid/content/Intent;)V

    goto :goto_7
.end method

.method private updateReplyFromAccount([Ljava/lang/String;)V
    .registers 7
    .parameter "selectedAccountInfo"

    .prologue
    const/4 v4, 0x1

    .line 1865
    sget v1, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    sget v3, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1869
    .local v0, equalAccounts:Z
    if-eqz v0, :cond_21

    sget v1, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    sget v3, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1874
    :cond_21
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->isBlank()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1875
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v1, v4}, Lcom/google/android/gm/ComposeLayout;->enableSave(Z)V

    .line 1877
    :cond_2e
    iput-boolean v4, p0, Lcom/google/android/gm/ComposeActivity;->mReplyFromChanged:Z

    .line 1880
    :cond_30
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    sget v2, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ComposeAreaController;->updateReplyFromAccount(Ljava/lang/String;)V

    .line 1881
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    .line 1882
    sget v1, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/google/android/gm/GmailBaseActivity;->getMailtoNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/GmailBaseActivity;->setForegroundNdef(Landroid/nfc/NdefMessage;)V

    .line 1884
    return-void
.end method

.method private updateSendOptions()V
    .registers 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    iget v1, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->updateComposeMode(I)V

    .line 662
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 1837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mTextChanged:Z

    .line 1838
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->updateUi()V

    .line 1839
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1843
    return-void
.end method

.method public doAttach()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 715
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 718
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.google.android.gm.allowAddAnyAttachment"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_35

    .line 720
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    :goto_24
    iput-boolean v4, p0, Lcom/google/android/gm/ComposeActivity;->mAddingAttachment:Z

    .line 725
    const v1, 0x7f0c007a

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gm/ComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 727
    return-void

    .line 722
    :cond_35
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_24
.end method

.method public doDiscard(Z)V
    .registers 6
    .parameter "showToast"

    .prologue
    .line 748
    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    monitor-enter v3

    .line 749
    :try_start_3
    iget-wide v0, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    .line 750
    .local v0, draftId:J
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_16

    .line 751
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 754
    :cond_12
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->doDiscard()V

    .line 758
    :goto_15
    return-void

    .line 750
    .end local v0           #draftId:J
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2

    .line 756
    .restart local v0       #draftId:J
    :cond_19
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeActivity;->doDiscardWithoutConfirmation(Z)V

    goto :goto_15
.end method

.method public doSave(ZZ)V
    .registers 5
    .parameter "showToast"
    .parameter "resetIME"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/ComposeAreaController;->getBodyText(Z)Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gm/ComposeActivity;->sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZ)Z

    .line 795
    if-eqz p2, :cond_15

    .line 797
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/ComposeAreaController;->getBodyText(Z)Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 799
    :cond_15
    return-void
.end method

.method public doSaveOrientationChanged(ZZ)V
    .registers 4
    .parameter "showToast"
    .parameter "resetIME"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/ComposeAreaController;->getBodyText(Z)Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->saveOnOrientationChanged(Landroid/text/Spanned;)Z

    .line 806
    if-eqz p2, :cond_14

    .line 808
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/ComposeAreaController;->getBodyText(Z)Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 810
    :cond_14
    return-void
.end method

.method public doSend(Z)V
    .registers 4
    .parameter "showToast"

    .prologue
    const/4 v1, 0x0

    .line 876
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->enableSend(Z)V

    .line 877
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 878
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->getBodyText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gm/ComposeActivity;->sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZ)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 879
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->enableSend(Z)V

    .line 881
    :cond_1f
    return-void
.end method

.method public getBodyText()Landroid/text/Spanned;
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->getBodyText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getHelpContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1950
    const-string v0, "gm_compose"

    return-object v0
.end method

.method protected getInitialAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 688
    invoke-static {p0}, Lcom/google/android/gm/WaitActivity;->waitIfNeededAndGetAccount(Lcom/google/android/gm/RestrictedActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMatchingRecipient(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 13
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 918
    .local p2, sentTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 919
    .local v7, recipientsMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 920
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v8

    .line 921
    .local v8, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    array-length v9, v8

    if-ge v3, v9, :cond_9

    .line 922
    aget-object v9, v8, v3

    invoke-virtual {v9}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 926
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #i:I
    .end local v8           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_29
    const/4 v6, 0x0

    .line 927
    .local v6, matchingAddressCount:I
    move-object v5, p1

    .line 928
    .local v5, matchingAddress:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/gm/utils/CustomFromUtils;->getCustomReplyFrom(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 929
    .local v1, customFroms:Ljava/util/Collection;,"Ljava/util/Collection<[Ljava/lang/String;>;"
    if-eqz v1, :cond_52

    .line 930
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 931
    .local v2, entry:[Ljava/lang/String;
    sget v9, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v9, v2, v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 932
    sget v9, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    aget-object v5, v2, v9

    .line 933
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 937
    .end local v2           #entry:[Ljava/lang/String;
    :cond_52
    const/4 v9, 0x1

    if-le v6, v9, :cond_59

    .line 939
    invoke-static {p1}, Lcom/google/android/gm/utils/CustomFromUtils;->getDefaultCustomFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 941
    :cond_59
    return-object v5
.end method

.method protected initFromExtras(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->initFromExtras(Landroid/content/Intent;)V

    .line 1822
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->isBlank()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {v1, v0}, Lcom/google/android/gm/ComposeLayout;->enableSave(Z)V

    .line 1823
    return-void

    .line 1822
    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    .line 666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mAddingAttachment:Z

    .line 667
    const/4 v0, -0x1

    if-eq p2, v0, :cond_7

    .line 677
    :cond_6
    :goto_6
    return-void

    .line 671
    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 672
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p3}, Lcom/google/android/gm/ComposeAreaController;->addAttachmentAndUpdateView(Landroid/content/Intent;)V

    goto :goto_6

    .line 673
    :cond_10
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 674
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 675
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/ComposeActivity;->finishOnCreateAfterAccountSelected(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public onAttachmentsChanged()V
    .registers 2

    .prologue
    .line 1919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ComposeActivity;->mAttachmentAddedOrRemoved:Z

    .line 1920
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->updateUi()V

    .line 1921
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 1811
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1812
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->isBlank()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1813
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gm/ComposeActivity;->doSave(ZZ)V

    .line 1815
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->finish()V

    .line 1816
    monitor-exit v1

    .line 1817
    return-void

    .line 1816
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 1934
    packed-switch p2, :pswitch_data_10

    .line 1946
    :goto_4
    return-void

    .line 1936
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/google/android/gm/ComposeActivity;->doDiscardWithoutConfirmation(Z)V

    goto :goto_4

    .line 1941
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->enableSend(Z)V

    goto :goto_4

    .line 1934
    nop

    :pswitch_data_10
    .packed-switch -0x2
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 305
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 307
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/google/android/gm/ComposeActivity;->setDefaultKeyMode(I)V

    .line 309
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 310
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "fromgmail"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 311
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mLaunchedFromGmail:Z

    .line 320
    :cond_18
    :goto_18
    invoke-direct {p0, p1}, Lcom/google/android/gm/ComposeActivity;->setupRequestMap(Landroid/os/Bundle;)V

    .line 321
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 322
    if-eqz p1, :cond_30

    const-string v5, "selectedAccount"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 323
    const-string v5, "selectedAccount"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 325
    :cond_30
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    if-nez v5, :cond_3a

    .line 326
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getInitialAccount()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    .line 328
    :cond_3a
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mRecipient:Ljava/lang/String;

    .line 329
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    if-nez v5, :cond_62

    .line 373
    :goto_42
    return-void

    .line 312
    :cond_43
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 313
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 314
    .local v1, dataUri:Landroid/net/Uri;
    if-eqz v1, :cond_18

    .line 315
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gmailfrom://gmail-ls/account/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/gm/ComposeActivity;->mLaunchedFromGmail:Z

    goto :goto_18

    .line 330
    .end local v1           #dataUri:Landroid/net/Uri;
    :cond_62
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    .line 332
    new-instance v5, Lcom/google/android/gm/ComposeAreaController;

    iget-object v6, p0, Lcom/google/android/gm/ComposeActivity;->mPrefs:Lcom/google/android/gm/persistence/Persistence;

    invoke-direct {v5, p0, p0, v6}, Lcom/google/android/gm/ComposeAreaController;-><init>(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;Lcom/google/android/gm/persistence/Persistence;)V

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    .line 333
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    new-instance v6, Lcom/google/android/gm/ComposeArea;

    iget-object v7, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-direct {v6, p0, v7}, Lcom/google/android/gm/ComposeArea;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/android/gm/ComposeActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gm/ComposeAreaController;->renderComposeArea(Lcom/google/android/gm/ComposeArea;Ljava/lang/String;)V

    .line 334
    invoke-static {p0, p0}, Lcom/google/android/gm/ComposeLayout;->newInstance(Landroid/app/Activity;Lcom/google/android/gm/ComposeController;)Lcom/google/android/gm/ComposeLayout;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    .line 335
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    iget-object v6, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v5, v6}, Lcom/google/android/gm/ComposeLayout;->setComposeArea(Lcom/google/android/gm/ComposeAreaController;)V

    .line 336
    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v5}, Lcom/google/android/gm/ComposeLayout;->setupLayout()V

    .line 337
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mDraftIdLock:Ljava/lang/Object;

    .line 338
    const-string v5, "fromAccountString"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mExtraFromAccount:Ljava/lang/String;

    .line 339
    iput-boolean v8, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinnerReady:Z

    .line 341
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 342
    iput-boolean v8, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    .line 344
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_ee

    .line 345
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "action"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 347
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ee

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 349
    .local v0, closeShade:Landroid/content/Intent;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 352
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 353
    .local v4, notificationId:I
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/google/android/gm/ComposeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 355
    .local v3, nm:Landroid/app/NotificationManager;
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 362
    .end local v0           #closeShade:Landroid/content/Intent;
    .end local v3           #nm:Landroid/app/NotificationManager;
    .end local v4           #notificationId:I
    :cond_ee
    invoke-direct {p0, p1, v2}, Lcom/google/android/gm/ComposeActivity;->finishOnCreateAfterAccountSelected(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_fe

    .line 367
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 372
    :cond_fe
    iput-boolean v8, p0, Lcom/google/android/gm/ComposeActivity;->mTextChanged:Z

    goto/16 :goto_42
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 535
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 536
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    iget-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mMessageIsForwardOrReply:Z

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gm/ComposeLayout;->onCreateOptionsMenu(Landroid/view/Menu;Z)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    if-eqz v0, :cond_9

    .line 482
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->onDestroy()V

    .line 484
    :cond_9
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onDestroy()V

    .line 485
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1850
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 1851
    .local v2, selectedAccountInfo:[Ljava/lang/String;
    sget v3, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v3, v2, v3

    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;

    sget v5, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1853
    .local v1, equalAccounts:Z
    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v3}, Lcom/google/android/gm/ComposeAreaController;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 1854
    .local v0, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    if-nez v1, :cond_35

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_35

    iget-object v3, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v3}, Lcom/google/android/gm/ComposeAreaController;->areAttachmentsSynced()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1858
    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeActivity;->showDiscardAttachmentsDialog([Ljava/lang/String;)V

    .line 1862
    :goto_34
    return-void

    .line 1861
    :cond_35
    invoke-direct {p0, v2}, Lcom/google/android/gm/ComposeActivity;->updateReplyFromAccount([Ljava/lang/String;)V

    goto :goto_34
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1915
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 542
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_40

    .line 574
    invoke-static {p1, p0, p0}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(Landroid/view/MenuItem;Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    :goto_c
    return v0

    .line 544
    :sswitch_d
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->onAppUpPressed()V

    goto :goto_c

    .line 548
    :sswitch_11
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const v2, 0x7f0f00e6

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ComposeLayout;->shouldShowToast(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/ComposeActivity;->doSend(Z)V

    goto :goto_c

    .line 552
    :sswitch_1e
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const v2, 0x7f0f00e7

    invoke-virtual {v1, v2}, Lcom/google/android/gm/ComposeLayout;->shouldShowToast(I)Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gm/ComposeActivity;->doSave(ZZ)V

    goto :goto_c

    .line 557
    :sswitch_2b
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v1, v0, v0}, Lcom/google/android/gm/ComposeLayout;->hideOrShowCcBcc(ZZ)V

    goto :goto_c

    .line 562
    :sswitch_31
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v1, v0, v0}, Lcom/google/android/gm/ComposeLayout;->hideOrShowCcBcc(ZZ)V

    goto :goto_c

    .line 566
    :sswitch_37
    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->doDiscard(Z)V

    goto :goto_c

    .line 570
    :sswitch_3b
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->doAttach()V

    goto :goto_c

    .line 542
    nop

    :sswitch_data_40
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0f001b -> :sswitch_2b
        0x7f0f001c -> :sswitch_31
        0x7f0f001d -> :sswitch_3b
        0x7f0f00e6 -> :sswitch_11
        0x7f0f00e7 -> :sswitch_1e
        0x7f0f00e8 -> :sswitch_37
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 462
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onPause()V

    .line 463
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->saveIfNeeded()V

    .line 464
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->dismissAllDialogs()V

    .line 465
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_14

    .line 466
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->clearFocus()V

    .line 468
    :cond_14
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mSendConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1d

    .line 469
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mSendConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 471
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDiscardAttacments:Landroid/app/AlertDialog;

    if-eqz v0, :cond_26

    .line 472
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDiscardAttacments:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 474
    :cond_26
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDiscardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2f

    .line 475
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mDiscardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 477
    :cond_2f
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 653
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 655
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/ComposeLayout;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 656
    .local v0, success:Z
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateSendOptions()V

    .line 657
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1212
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1213
    if-eqz p1, :cond_44

    .line 1214
    const-string v0, "focusSelectionStart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1215
    const-string v0, "focusSelectionStart"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1216
    const-string v0, "focusSelectionEnd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1219
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1220
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1221
    if-ge v1, v3, :cond_2f

    if-ge v2, v3, :cond_2f

    .line 1222
    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 1225
    :cond_2f
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1226
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3d

    .line 1227
    iput v0, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    .line 1228
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->updateSendOptions()V

    .line 1231
    :cond_3d
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/ComposeAreaController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1232
    iput-boolean v4, p0, Lcom/google/android/gm/ComposeActivity;->mTextChanged:Z

    .line 1234
    :cond_44
    if-eqz p1, :cond_5c

    .line 1235
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const-string v1, "showCcBcc"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gm/ComposeLayout;->hideOrShowCcBcc(ZZ)V

    .line 1237
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const-string v1, "showBcc"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ComposeLayout;->hideOrShowBcc(Z)V

    .line 1240
    :cond_5c
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 454
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onResume()V

    .line 457
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->asyncInitFromSpinner()V

    .line 458
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 10
    .parameter "state"

    .prologue
    .line 489
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 494
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->saveIfNeededOnOrientationChanged()V

    .line 496
    const-string v4, "draftId"

    iget-wide v5, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 498
    sget v4, Lcom/google/android/gm/ComposeActivity;->REAL_ACCOUNT:I

    invoke-direct {p0, v4}, Lcom/google/android/gm/ComposeActivity;->getSelectedAccountInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, selectedAccount:Ljava/lang/String;
    if-eqz v3, :cond_1a

    .line 500
    const-string v4, "selectedAccount"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_1a
    sget v4, Lcom/google/android/gm/ComposeActivity;->ACCOUNT_ADDRESS:I

    invoke-direct {p0, v4}, Lcom/google/android/gm/ComposeActivity;->getSelectedAccountInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, fromAddress:Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 504
    const-string v4, "customFrom"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_27
    iget-wide v4, p0, Lcom/google/android/gm/ComposeActivity;->mDraftId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3a

    iget v4, p0, Lcom/google/android/gm/ComposeActivity;->mRequestId:I

    if-eqz v4, :cond_3a

    .line 510
    const-string v4, "requestId"

    iget v5, p0, Lcom/google/android/gm/ComposeActivity;->mRequestId:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    :cond_3a
    const-string v4, "toRecips"

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v5}, Lcom/google/android/gm/ComposeAreaController;->getToAddresses()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 514
    const-string v4, "ccRecips"

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v5}, Lcom/google/android/gm/ComposeAreaController;->getCcAddresses()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 515
    const-string v4, "bccRecips"

    iget-object v5, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v5}, Lcom/google/android/gm/ComposeAreaController;->getBccAddresses()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 518
    const-string v4, "action"

    iget v5, p0, Lcom/google/android/gm/ComposeActivity;->mCurrentMode:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v4, p1}, Lcom/google/android/gm/ComposeAreaController;->onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 525
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_87

    instance-of v4, v0, Landroid/widget/EditText;

    if-eqz v4, :cond_87

    move-object v1, v0

    .line 527
    check-cast v1, Landroid/widget/EditText;

    .line 528
    .local v1, focusEditText:Landroid/widget/EditText;
    const-string v4, "focusSelectionStart"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    const-string v4, "focusSelectionEnd"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    .end local v1           #focusEditText:Landroid/widget/EditText;
    :cond_87
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1847
    return-void
.end method

.method public onUiChanged()V
    .registers 1

    .prologue
    .line 1925
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->updateUi()V

    .line 1926
    return-void
.end method

.method protected saveOnOrientationChanged(Landroid/text/Spanned;)Z
    .registers 4
    .parameter "body"

    .prologue
    const/4 v1, 0x1

    .line 1367
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/google/android/gm/ComposeActivity;->sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZZ)Z

    move-result v0

    return v0
.end method

.method protected sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZ)Z
    .registers 5
    .parameter "body"
    .parameter "save"
    .parameter "showToast"

    .prologue
    .line 1372
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gm/ComposeActivity;->sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZZ)Z

    move-result v0

    return v0
.end method

.method protected sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZZ)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1384
    if-eqz p4, :cond_1f

    .line 1385
    new-array v0, v6, [Ljava/lang/String;

    move-object v1, v0

    move-object v2, v0

    .line 1393
    :goto_8
    if-nez p2, :cond_32

    array-length v3, v2

    if-nez v3, :cond_32

    array-length v3, v1

    if-nez v3, :cond_32

    array-length v3, v0

    if-nez v3, :cond_32

    .line 1394
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeActivity;->showRecipientErrorDialog(Ljava/lang/String;)V

    move v0, v6

    .line 1451
    :goto_1e
    return v0

    .line 1387
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->getToAddresses()[Ljava/lang/String;

    move-result-object v2

    .line 1388
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->getCcAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 1389
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v0}, Lcom/google/android/gm/ComposeAreaController;->getBccAddresses()[Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1398
    :cond_32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    if-nez p2, :cond_42

    .line 1400
    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/ComposeActivity;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 1401
    invoke-direct {p0, v1, v3}, Lcom/google/android/gm/ComposeActivity;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 1402
    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/ComposeActivity;->checkInvalidEmails([Ljava/lang/String;Ljava/util/List;)V

    .line 1406
    :cond_42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_60

    .line 1407
    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1409
    invoke-direct {p0, v0}, Lcom/google/android/gm/ComposeActivity;->showRecipientErrorDialog(Ljava/lang/String;)V

    move v0, v6

    .line 1410
    goto :goto_1e

    .line 1413
    :cond_60
    new-instance v0, Lcom/google/android/gm/ComposeActivity$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/ComposeActivity$2;-><init>(Lcom/google/android/gm/ComposeActivity;Landroid/text/Spanned;ZZZ)V

    .line 1420
    if-nez p2, :cond_c3

    .line 1421
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->getAttachments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->showEmptyTextWarnings()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 1422
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->isSubjectEmpty()Z

    move-result v2

    .line 1423
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_a5

    move v1, v7

    .line 1428
    :goto_8b
    if-eqz v1, :cond_a7

    iget-boolean v1, p0, Lcom/google/android/gm/ComposeActivity;->mForward:Z

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->isBodyEmpty()Z

    move-result v1

    if-eqz v1, :cond_a7

    :cond_99
    move v1, v7

    .line 1433
    :goto_9a
    if-eqz v2, :cond_a9

    .line 1434
    const v1, 0x7f0c013a

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/ComposeActivity;->showSendConfirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 1435
    goto/16 :goto_1e

    :cond_a5
    move v1, v6

    .line 1423
    goto :goto_8b

    :cond_a7
    move v1, v6

    .line 1428
    goto :goto_9a

    .line 1438
    :cond_a9
    if-eqz v1, :cond_b4

    .line 1439
    const v1, 0x7f0c013b

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/ComposeActivity;->showSendConfirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 1440
    goto/16 :goto_1e

    .line 1444
    :cond_b4
    invoke-virtual {p0}, Lcom/google/android/gm/ComposeActivity;->showSendConfirmation()Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 1445
    const v1, 0x7f0c013c

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/ComposeActivity;->showSendConfirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 1446
    goto/16 :goto_1e

    .line 1450
    :cond_c3
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/google/android/gm/ComposeActivity;->sendOrSave(Landroid/text/Spanned;ZZZ)V

    move v0, v7

    .line 1451
    goto/16 :goto_1e
.end method

.method public setComposeMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 599
    packed-switch p1, :pswitch_data_10

    .line 610
    :goto_3
    return-void

    .line 601
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->switchToReply()V

    goto :goto_3

    .line 604
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->switchToReplyAll()V

    goto :goto_3

    .line 607
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->switchToForward()V

    goto :goto_3

    .line 599
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method protected showEmptyTextWarnings()Z
    .registers 2

    .prologue
    .line 699
    const/4 v0, 0x1

    return v0
.end method

.method protected showSendConfirmation()Z
    .registers 2

    .prologue
    .line 708
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/persistence/Persistence;->getConfirmSend(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public updateHideOrShowCcBcc(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gm/ComposeLayout;->hideOrShowCcBcc(ZZ)V

    .line 1957
    return-void
.end method

.method public updateUi()V
    .registers 3

    .prologue
    .line 1830
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity;->mLayoutImpl:Lcom/google/android/gm/ComposeLayout;

    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->shouldSave()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;->isBlank()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v0}, Lcom/google/android/gm/ComposeLayout;->enableSave(Z)V

    .line 1831
    return-void

    .line 1830
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method
