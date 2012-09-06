.class public Lcom/android/mms/ui/TranslateActivity;
.super Landroid/app/Activity;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isMms:Z

.field private isSubject:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mButtons:Landroid/widget/LinearLayout;

.field private mCancelButton:Landroid/widget/Button;

.field public mCompleteBCReceiver:Landroid/content/BroadcastReceiver;

.field private mDoneButton:Landroid/widget/Button;

.field private mFromButton:Landroid/widget/Button;

.field mFromDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mFromLanguageStrings:[Ljava/lang/String;

.field private mFromRecentCount:I

.field mFromRecentKeys:[Ljava/lang/String;

.field mFromTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

.field private mInputText:Landroid/widget/EditText;

.field private final mInputTextEditorWatcher:Landroid/text/TextWatcher;

.field private mIsEditable:Z

.field private mIsSwitched:Z

.field mLanguageControl:Lcom/android/mms/util/LanguageControl;

.field private final mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOutputText:Landroid/widget/EditText;

.field private final mOutputTextEditorWatcher:Landroid/text/TextWatcher;

.field private mPasteButton:Landroid/widget/Button;

.field private mSearchImageButton:Landroid/widget/ImageButton;

.field private mSendButton:Landroid/widget/Button;

.field mSortedLanguageStrings:[Ljava/lang/String;

.field private mSubButtons:Landroid/widget/LinearLayout;

.field private mToButton:Landroid/widget/Button;

.field mToDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mToImageButton:Landroid/widget/ImageButton;

.field mToLanguageStrings:[Ljava/lang/String;

.field private mToRecentCount:I

.field mToRecentKeys:[Ljava/lang/String;

.field mToTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

.field mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

.field mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

.field recentLangSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mFromTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    .line 76
    iput-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mToTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    .line 104
    iput-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->isSubject:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    .line 122
    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    .line 124
    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    .line 778
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$4;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mCompleteBCReceiver:Landroid/content/BroadcastReceiver;

    .line 851
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$5;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 887
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$6;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 922
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$7;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 937
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$8;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 960
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$9;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputTextEditorWatcher:Landroid/text/TextWatcher;

    .line 985
    new-instance v0, Lcom/android/mms/ui/TranslateActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/TranslateActivity$10;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputTextEditorWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/TranslateActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->translate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/TranslateActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->detectTextLanguage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/TranslateActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/TranslateActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/TranslateActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/TranslateActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TranslateActivity;->detectPhoneLanguage(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/TranslateActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/TranslateActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/TranslateActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/TranslateActivity;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/TranslateActivity;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/TranslateActivity;->setRecentLanguage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/TranslateActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/TranslateActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/ui/TranslateActivity;->createAndShowErrorDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method private changeLayout(Z)V
    .registers 10
    .parameter "isSwitched"

    .prologue
    const v2, 0x7f030039

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 482
    if-eqz p1, :cond_5e

    .line 483
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 485
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 486
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v5, v7}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 491
    :goto_1f
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v1

    invoke-direct {p0, v0, v1, v5}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 492
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    if-nez v0, :cond_5c

    move v0, v5

    :goto_35
    invoke-direct {p0, v1, v0, v5}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 506
    :goto_38
    new-instance v0, Lcom/android/mms/ui/TranslateAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/TranslateAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    .line 508
    new-instance v0, Lcom/android/mms/ui/TranslateAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/TranslateAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    .line 510
    return-void

    .line 489
    :cond_56
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v7, v7}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    goto :goto_1f

    :cond_5c
    move v0, v7

    .line 492
    goto :goto_35

    .line 495
    :cond_5e
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 497
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 498
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 499
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v5, v7}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 503
    :goto_76
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v1

    invoke-direct {p0, v0, v1, v5}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 504
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v0

    if-eqz v0, :cond_96

    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    if-nez v0, :cond_96

    move v0, v5

    :goto_8c
    invoke-direct {p0, v1, v0, v5}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    goto :goto_38

    .line 501
    :cond_90
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v7, v7}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    goto :goto_76

    :cond_96
    move v0, v7

    .line 504
    goto :goto_8c
.end method

.method private closeDefine()V
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mCompleteBCReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    return-void
.end method

.method private createAndShowErrorDialog(I)V
    .registers 5
    .parameter

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 759
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 761
    :cond_9
    :try_start_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901d5

    new-instance v2, Lcom/android/mms/ui/TranslateActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/TranslateActivity$3;-><init>(Lcom/android/mms/ui/TranslateActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_3d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_9 .. :try_end_3d} :catch_3e

    .line 776
    :goto_3d
    return-void

    .line 772
    :catch_3e
    move-exception v0

    .line 773
    const-string v0, "Mms/TranslateActivity"

    const-string v1, "BadTokenException(activity is not running) - during createAndShowErrorDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private createAndShowNetworkDialog()V
    .registers 5

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_9

    .line 723
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 725
    :cond_9
    :try_start_9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0901d6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f020109

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901d7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090006

    new-instance v3, Lcom/android/mms/ui/TranslateActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/TranslateActivity$2;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901cd

    new-instance v3, Lcom/android/mms/ui/TranslateActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/TranslateActivity$1;-><init>(Lcom/android/mms/ui/TranslateActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_41
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_9 .. :try_end_41} :catch_42

    .line 754
    :goto_41
    return-void

    .line 749
    :catch_42
    move-exception v0

    .line 750
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "Mms/TranslateActivity"

    const-string v2, "BadTokenException(activity is not running) - during createAndShowNetworkDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method private detectPhoneLanguage(Z)V
    .registers 11
    .parameter "isFrom"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 550
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 551
    .local v0, am:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    .line 552
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v4, 0x0

    .line 554
    .local v4, phoneLangCode:Ljava/lang/String;
    :try_start_8
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_33

    move-result-object v1

    .line 558
    if-eqz v1, :cond_14

    .line 559
    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 562
    :cond_14
    :goto_14
    if-eqz v4, :cond_7c

    .line 564
    :try_start_16
    iget-boolean v7, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eq v7, p1, :cond_44

    .line 565
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v8, v4}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v7, v4}, Lcom/android/mms/util/LanguageControl;->setFromLanguageKey(Ljava/lang/String;)V

    .line 571
    :goto_2a
    iget-boolean v7, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eq v7, p1, :cond_7a

    move v7, v6

    :goto_2f
    invoke-direct {p0, v4, v7}, Lcom/android/mms/ui/TranslateActivity;->setRecentLanguage(Ljava/lang/String;Z)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_32} :catch_55

    .line 591
    :goto_32
    return-void

    .line 555
    :catch_33
    move-exception v2

    .line 556
    .local v2, e:Landroid/os/RemoteException;
    :try_start_34
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3d

    .line 558
    if-eqz v1, :cond_14

    .line 559
    throw v1

    throw v7

    move-result-object v4

    goto :goto_14

    .line 558
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_3d
    move-exception v5

    if-eqz v1, :cond_43

    .line 559
    throw v1

    throw v6

    move-result-object v4

    :cond_43
    throw v5

    .line 568
    :cond_44
    :try_start_44
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v8, v4}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v7, v4}, Lcom/android/mms/util/LanguageControl;->setToLanguageKey(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_54} :catch_55

    goto :goto_2a

    .line 572
    :catch_55
    move-exception v3

    .line 573
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 574
    iget-boolean v7, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eq v7, p1, :cond_5e

    move v5, v6

    :cond_5e
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    .line 576
    :try_start_61
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901db

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_70} :catch_71

    goto :goto_32

    .line 578
    :catch_71
    move-exception v2

    .line 579
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Mms/TranslateActivity"

    const-string v6, "cannot create toast popup"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :cond_7a
    move v7, v5

    .line 571
    goto :goto_2f

    .line 583
    :cond_7c
    iget-boolean v7, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eq v7, p1, :cond_81

    move v5, v6

    :cond_81
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    .line 585
    :try_start_84
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901db

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_93} :catch_94

    goto :goto_32

    .line 587
    :catch_94
    move-exception v2

    .line 588
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "Mms/TranslateActivity"

    const-string v6, "cannot create toast popup"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private detectTextLanguage()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 530
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isNetworkUp()Z

    move-result v2

    if-nez v2, :cond_c

    .line 531
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V

    .line 547
    :goto_b
    return-void

    .line 533
    :cond_c
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v2, :cond_46

    .line 534
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 535
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_3a

    :goto_36
    invoke-virtual {v2, v3, v0}, Lcom/android/mms/util/LanguageControl;->detectLanguage(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_3a
    move v0, v1

    goto :goto_36

    .line 538
    :cond_3c
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v2, :cond_44

    :goto_40
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    goto :goto_b

    :cond_44
    move v0, v1

    goto :goto_40

    .line 540
    :cond_46
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_72

    .line 541
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_70

    :goto_6c
    invoke-virtual {v2, v3, v0}, Lcom/android/mms/util/LanguageControl;->detectLanguage(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_70
    move v0, v1

    goto :goto_6c

    .line 544
    :cond_72
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v2, :cond_7a

    :goto_76
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    goto :goto_b

    :cond_7a
    move v0, v1

    goto :goto_76
.end method

.method private hasTranslateResult()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 613
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v2, :cond_1d

    .line 614
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 616
    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 614
    goto :goto_1a

    .line 616
    :cond_1d
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-gtz v2, :cond_1a

    :cond_31
    move v0, v1

    goto :goto_1a
.end method

.method private initDefine()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 142
    const-string v3, "recentLangSharedPreferences"

    invoke-virtual {p0, v3, v6}, Lcom/android/mms/ui/TranslateActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    .line 143
    new-instance v3, Lcom/android/mms/util/TranslateLanguages;

    invoke-direct {v3, p0}, Lcom/android/mms/util/TranslateLanguages;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    .line 144
    new-instance v3, Lcom/android/mms/util/LanguageControl;

    invoke-direct {v3, p0}, Lcom/android/mms/util/LanguageControl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    .line 145
    new-instance v3, Lcom/android/mms/util/TranslateEngine;

    invoke-direct {v3, p0}, Lcom/android/mms/util/TranslateEngine;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

    .line 147
    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, v3, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mSortedLanguageStrings:[Ljava/lang/String;

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v2, myArrayData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, l:I
    :goto_2d
    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, v3, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    array-length v3, v3

    if-ge v1, v3, :cond_48

    .line 150
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v4, v4, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 152
    :cond_48
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 153
    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mSortedLanguageStrings:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v5, v5, Lcom/android/mms/util/TranslateLanguages;->mLangStringsIds:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 155
    const/4 v0, 0x0

    .local v0, k:I
    :goto_5e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_73

    .line 156
    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mSortedLanguageStrings:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v5

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 159
    :cond_73
    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mCompleteBCReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.instanttranslator.action.COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/TranslateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method private initResourceRefs()V
    .registers 3

    .prologue
    .line 173
    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mInputTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    const v0, 0x7f0800e8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f0800e3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v0, 0x7f0800ea

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mCancelButton:Landroid/widget/Button;

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mDoneButton:Landroid/widget/Button;

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v0, 0x7f0800e9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mButtons:Landroid/widget/LinearLayout;

    .line 208
    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSubButtons:Landroid/widget/LinearLayout;

    .line 209
    return-void
.end method

.method private initialize()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 214
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x12

    invoke-virtual {v2, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 218
    if-eqz v1, :cond_91

    .line 219
    const-string v2, "fromString"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, fromString:Ljava/lang/String;
    const-string v2, "editable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    .line 221
    const-string v2, "isMms"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    .line 222
    const-string v2, "isSubject"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->isSubject:Z

    .line 224
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    if-eqz v0, :cond_3f

    .line 226
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 228
    :cond_3f
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    if-eqz v2, :cond_96

    .line 229
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v2, :cond_92

    move v2, v3

    :goto_4a
    invoke-direct {p0, v5, v2, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 230
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    iget-boolean v5, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    invoke-direct {p0, v2, v5, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 231
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v5

    invoke-direct {p0, v2, v5, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 232
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 233
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v3, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 234
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v3, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 235
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v2

    if-eqz v2, :cond_94

    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->isMms:Z

    if-nez v2, :cond_94

    move v2, v3

    :goto_79
    invoke-direct {p0, v5, v2, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 236
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->hasTranslateResult()Z

    move-result v5

    invoke-direct {p0, v2, v5, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 255
    :goto_85
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    .line 256
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v2, :cond_cf

    :goto_8e
    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/TranslateActivity;->setLanguageNull(ZZ)V

    .line 258
    .end local v0           #fromString:Ljava/lang/String;
    :cond_91
    return-void

    .restart local v0       #fromString:Ljava/lang/String;
    :cond_92
    move v2, v4

    .line 229
    goto :goto_4a

    :cond_94
    move v2, v4

    .line 235
    goto :goto_79

    .line 238
    :cond_96
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 239
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 240
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v5

    invoke-direct {p0, v2, v5, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 241
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 242
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v4, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 243
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v3, v3}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 244
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 245
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 247
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mButtons:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSubButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_85

    :cond_cf
    move v3, v4

    .line 256
    goto :goto_8e
.end method

.method private isNetworkUp()Z
    .registers 4

    .prologue
    .line 712
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/TranslateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 713
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 715
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_10

    .line 716
    const/4 v2, 0x0

    .line 717
    :goto_f
    return v2

    :cond_10
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    goto :goto_f
.end method

.method private isTranslatable()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 594
    iget-boolean v1, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v1, :cond_46

    .line 595
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_86

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v1}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_86

    const-string v1, "a-d"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v1}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_86

    const-string v1, "a-d"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 609
    :cond_45
    :goto_45
    return v0

    .line 602
    :cond_46
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_86

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v1}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_86

    const-string v1, "a-d"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v1}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_86

    const-string v1, "a-d"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 609
    :cond_86
    const/4 v0, 0x0

    goto :goto_45
.end method

.method private preSetting()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 165
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    .line 166
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->setAdapterWithRecent(Z)V

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->setAdapterWithRecent(Z)V

    .line 170
    return-void
.end method

.method private setAdapterWithRecent(Z)V
    .registers 11
    .parameter "isFrom"

    .prologue
    const v2, 0x7f030039

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 346
    if-eqz p1, :cond_e1

    .line 348
    iput v8, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firstFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "firstFromRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 353
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    .line 358
    :goto_30
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "secondFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "secondFromRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 361
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    .line 366
    :goto_56
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "thirdFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "thirdFromRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 369
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    .line 374
    :goto_7c
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v0, v0, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSortedLanguageStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, v3, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v0, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    const/4 v7, 0x0

    .local v7, i:I
    :goto_95
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentCount:I

    if-ge v7, v0, :cond_d2

    .line 378
    const-string v0, "EMPTY"

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v1, v1, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v1, v7

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 377
    :cond_b9
    add-int/lit8 v7, v7, 0x1

    goto :goto_95

    .line 355
    .end local v7           #i:I
    :cond_bc
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v8

    goto/16 :goto_30

    .line 363
    :cond_c4
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v5

    goto :goto_56

    .line 371
    :cond_cb
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v6

    goto :goto_7c

    .line 384
    .restart local v7       #i:I
    :cond_d2
    new-instance v0, Lcom/android/mms/ui/TranslateAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/TranslateAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    .line 425
    :goto_e0
    return-void

    .line 388
    .end local v7           #i:I
    :cond_e1
    iput v8, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firstToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_195

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "firstToRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 393
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    .line 398
    :goto_109
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "secondToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19d

    .line 399
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "secondToRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 401
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    .line 406
    :goto_12f
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "thirdToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    .line 407
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "thirdToRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 409
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    .line 414
    :goto_155
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v0, v0, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSortedLanguageStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, v3, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v0, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_16e
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentCount:I

    if-ge v7, v0, :cond_1ab

    .line 417
    const-string v0, "EMPTY"

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_192

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v1, v1, Lcom/android/mms/util/TranslateLanguages;->mLangCodes:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v1, v7

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 416
    :cond_192
    add-int/lit8 v7, v7, 0x1

    goto :goto_16e

    .line 395
    .end local v7           #i:I
    :cond_195
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v8

    goto/16 :goto_109

    .line 403
    :cond_19d
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v5

    goto :goto_12f

    .line 411
    :cond_1a4
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    const-string v1, "EMPTY"

    aput-object v1, v0, v6

    goto :goto_155

    .line 422
    .restart local v7       #i:I
    :cond_1ab
    new-instance v0, Lcom/android/mms/ui/TranslateAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mToLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mToRecentKeys:[Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/TranslateAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    goto/16 :goto_e0
.end method

.method private setLanguageNull(ZZ)V
    .registers 8
    .parameter "forFromBtn"
    .parameter "handleBtnFocus"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0901ce

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 620
    if-eqz p1, :cond_1e

    .line 621
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 622
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v0, v4}, Lcom/android/mms/util/LanguageControl;->setFromLanguageKey(Ljava/lang/String;)V

    .line 623
    if-eqz p2, :cond_1d

    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    if-nez v0, :cond_1d

    .line 624
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    .line 631
    :cond_1d
    :goto_1d
    return-void

    .line 626
    :cond_1e
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 627
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v0, v4}, Lcom/android/mms/util/LanguageControl;->setToLanguageKey(Ljava/lang/String;)V

    .line 628
    if-eqz p2, :cond_1d

    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    if-nez v0, :cond_1d

    .line 629
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/TranslateActivity;->setViewActivated(Landroid/view/View;ZZ)V

    goto :goto_1d
.end method

.method private setRecentLanguage(Ljava/lang/String;Z)V
    .registers 8
    .parameter "languageItemCode"
    .parameter "isFrom"

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    .local v0, prefEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_87

    .line 431
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "firstFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 433
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "firstFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 435
    const-string v1, "secondFromRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    const-string v1, "thirdFromRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    :goto_34
    const-string v1, "firstFromRecentLang"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    :cond_39
    :goto_39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 478
    invoke-direct {p0, p2}, Lcom/android/mms/ui/TranslateActivity;->setAdapterWithRecent(Z)V

    .line 479
    return-void

    .line 438
    :cond_40
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "secondFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 440
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "secondFromRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 442
    const-string v1, "thirdFromRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    :cond_67
    :goto_67
    const-string v1, "secondFromRecentLang"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "firstFromRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_34

    .line 444
    :cond_77
    const-string v1, "thirdFromRecentLang"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "secondFromRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_67

    .line 453
    :cond_87
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "firstToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 456
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "firstToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 458
    const-string v1, "secondToRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 459
    const-string v1, "thirdToRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    :goto_b3
    const-string v1, "firstToRecentLang"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_39

    .line 461
    :cond_b9
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "secondToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 463
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "secondToRecentLang"

    const-string v3, "EMPTY"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 465
    const-string v1, "thirdToRecentLang"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 470
    :cond_e0
    :goto_e0
    const-string v1, "secondToRecentLang"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "firstToRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_b3

    .line 467
    :cond_f0
    const-string v1, "thirdToRecentLang"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->recentLangSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "secondToRecentLang"

    const-string v4, "EMPTY"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_e0
.end method

.method private setViewActivated(Landroid/view/View;ZZ)V
    .registers 10
    .parameter "view"
    .parameter "toActivate"
    .parameter "forFocusable"

    .prologue
    const/4 v5, 0x0

    const v1, 0x2050000

    const v4, 0x106003b

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 634
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 635
    :cond_19
    if-eqz p3, :cond_5a

    .line 636
    if-eqz p2, :cond_31

    .line 637
    const v0, 0x1080016

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 638
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 709
    :cond_30
    :goto_30
    return-void

    .restart local p1
    :cond_31
    move-object v0, p1

    .line 641
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_56

    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsEditable:Z

    if-eqz v0, :cond_56

    .line 642
    const v0, 0x7f020142

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 645
    :goto_48
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_30

    .line 644
    .restart local p1
    :cond_56
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_48

    .line 648
    :cond_5a
    if-nez p2, :cond_30

    .line 651
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 652
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 653
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 655
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x205

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_30

    .line 657
    :cond_85
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 658
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_30

    .line 661
    :cond_9b
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 662
    :cond_ab
    invoke-virtual {p1, v2}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 663
    if-eqz p3, :cond_30

    .line 664
    if-nez p2, :cond_30

    .line 666
    const v0, 0x7f02015f

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 667
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 668
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 669
    const/16 v0, 0xf

    const/16 v1, 0x2d

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 670
    check-cast p1, Landroid/widget/Button;

    .end local p1
    const v0, 0x7f070004

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_30

    .line 675
    .restart local p1
    :cond_d1
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 676
    if-eqz p2, :cond_ef

    move-object v0, p1

    .line 677
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020165

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 679
    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 680
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_30

    :cond_ef
    move-object v0, p1

    .line 682
    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 684
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 685
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_30

    .line 687
    :cond_103
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 688
    if-nez p2, :cond_30

    .line 691
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 693
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_30

    .line 695
    :cond_118
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_128

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 696
    :cond_128
    if-eqz p3, :cond_136

    .line 697
    if-eqz p2, :cond_131

    .line 698
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_30

    .line 700
    :cond_131
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_30

    .line 702
    :cond_136
    if-eqz p2, :cond_13d

    .line 703
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_30

    .line 705
    :cond_13d
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_30
.end method

.method private translate()V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 513
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isNetworkUp()Z

    move-result v2

    if-nez v2, :cond_c

    .line 514
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V

    .line 527
    :cond_b
    :goto_b
    return-void

    .line 516
    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isTranslatable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 517
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v2, :cond_3a

    .line 518
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v4}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v5}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_38

    :goto_34
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/mms/util/TranslateEngine;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_38
    move v0, v1

    goto :goto_34

    .line 522
    :cond_3a
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v4}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v5}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_5c

    :goto_58
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/mms/util/TranslateEngine;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_b

    :cond_5c
    move v0, v1

    goto :goto_58
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "view"

    .prologue
    const v6, 0x7f0901cf

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 306
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mPasteButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 307
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "transString"

    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_25
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v2, "isSend"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const-string v2, "isSubject"

    iget-boolean v4, p0, Lcom/android/mms/ui/TranslateActivity;->isSubject:Z

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v3, v1}, Lcom/android/mms/ui/TranslateActivity;->setResult(ILandroid/content/Intent;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->finish()V

    .line 343
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3a
    :goto_3a
    return-void

    .line 308
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3b
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 314
    .end local v1           #intent:Landroid/content/Intent;
    :cond_46
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 315
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->finish()V

    goto :goto_3a

    .line 316
    :cond_52
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSendButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 317
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "transString"

    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_71
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v2, "isSend"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const-string v2, "isSubject"

    iget-boolean v4, p0, Lcom/android/mms/ui/TranslateActivity;->isSubject:Z

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v3, v1}, Lcom/android/mms/ui/TranslateActivity;->setResult(ILandroid/content/Intent;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->finish()V

    goto :goto_3a

    .line 318
    :cond_87
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_71

    .line 324
    .end local v1           #intent:Landroid/content/Intent;
    :cond_92
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 325
    invoke-virtual {p0}, Lcom/android/mms/ui/TranslateActivity;->finish()V

    goto :goto_3a

    .line 326
    :cond_9e
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mFromButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 327
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity;->mFromTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c5

    move v2, v3

    :goto_ba
    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity;->mFromDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3a

    :cond_c5
    move v2, v4

    goto :goto_ba

    .line 331
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_c7
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 332
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity;->mToTranslateAdapter:Lcom/android/mms/ui/TranslateAdapter;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v6}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_ed

    :goto_e2
    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity;->mToDialogOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3a

    :cond_ed
    move v3, v4

    goto :goto_e2

    .line 336
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_ef
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mToImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 337
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v2, :cond_fc

    move v4, v5

    :cond_fc
    iput-boolean v4, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    .line 338
    iget-boolean v2, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    invoke-direct {p0, v2}, Lcom/android/mms/ui/TranslateActivity;->changeLayout(Z)V

    goto/16 :goto_3a

    .line 339
    :cond_105
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity;->mSearchImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 340
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->translate()V

    goto/16 :goto_3a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->setContentView(I)V

    .line 132
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->initDefine()V

    .line 134
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->preSetting()V

    .line 136
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->initResourceRefs()V

    .line 138
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->initialize()V

    .line 139
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->closeDefine()V

    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 297
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    if-nez v0, :cond_b

    .line 268
    new-instance v0, Lcom/android/mms/util/LanguageControl;

    invoke-direct {v0, p0}, Lcom/android/mms/util/LanguageControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    .line 269
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

    if-nez v0, :cond_16

    .line 270
    new-instance v0, Lcom/android/mms/util/TranslateEngine;

    invoke-direct {v0, p0}, Lcom/android/mms/util/TranslateEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mTranslateEngine:Lcom/android/mms/util/TranslateEngine;

    .line 272
    :cond_16
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->isNetworkUp()Z

    move-result v0

    if-nez v0, :cond_23

    .line 273
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V

    .line 288
    :cond_1f
    :goto_1f
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    return-void

    .line 275
    :cond_23
    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v0}, Lcom/android/mms/util/LanguageControl;->getFromLanguageKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_47

    .line 277
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->detectTextLanguage()V

    goto :goto_1f

    .line 279
    :cond_47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->detectPhoneLanguage(Z)V

    goto :goto_1f

    .line 280
    :cond_4c
    iget-boolean v0, p0, Lcom/android/mms/ui/TranslateActivity;->mIsSwitched:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v0}, Lcom/android/mms/util/LanguageControl;->getToLanguageKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity;->mOutputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_70

    .line 282
    invoke-direct {p0}, Lcom/android/mms/ui/TranslateActivity;->detectTextLanguage()V

    goto :goto_1f

    .line 284
    :cond_70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/TranslateActivity;->detectPhoneLanguage(Z)V

    goto :goto_1f
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 263
    return-void
.end method
